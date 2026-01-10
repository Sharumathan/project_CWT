<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\Rule;

class AdminProfileController extends Controller
{
    /**
     * Show admin profile details edit page.
     */
    public function editDetails()
    {
        $user = Auth::user();
        return view('admin.profile.index', compact('user'));
    }

    /**
     * Update profile details (username, email).
     */
    public function updateDetails(Request $request)
    {
        $user = Auth::user();

        $request->validate([
            'username' => ['required','string','max:50', Rule::unique('users','username')->ignore($user->id)],
            'email' => ['nullable','email','max:100', Rule::unique('users','email')->ignore($user->id)],
        ]);

        DB::table('users')->where('id', $user->id)->update([
            'username' => $request->username,
            'email' => $request->email,
            'updated_at' => now()
        ]);

        return redirect()->back()->with('success','Profile details updated.');
    }

    /**
     * Update profile photo.
     */
    public function updatePhoto(Request $request)
    {
        $user = Auth::user();

        $request->validate([
            'profile_photo' => 'required|image|max:3072' // 3MB
        ]);

        $file = $request->file('profile_photo');
        $filename = 'user_'.$user->id.'_'.time().'.'.$file->getClientOriginalExtension();

        // store in public/uploads/profile_pictures
        $path = $file->storeAs('uploads/profile_pictures', $filename, 'public');

        // delete previous if not default
        if ($user->profile_photo && $user->profile_photo !== 'default-avatar.png') {
            @Storage::disk('public')->delete($user->profile_photo);
        }

        DB::table('users')->where('id', $user->id)->update([
            'profile_photo' => $path,
            'updated_at' => now()
        ]);

        return redirect()->back()->with('success','Profile photo updated.');
    }

    /**
     * Update password (requires current password).
     */
    public function updatePassword(Request $request)
    {
        $user = Auth::user();

        $request->validate([
            'current_password' => 'required|string',
            'password' => 'required|string|min:8|confirmed'
        ]);

        // verify current password
        if (! Hash::check($request->current_password, DB::table('users')->where('id',$user->id)->value('password'))) {
            return redirect()->back()->withErrors(['current_password' => 'Current password is incorrect.']);
        }

        DB::table('users')->where('id', $user->id)->update([
            'password' => Hash::make($request->password),
            'updated_at' => now()
        ]);

        return redirect()->back()->with('success','Password updated.');
    }
}
