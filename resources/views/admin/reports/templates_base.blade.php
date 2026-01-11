<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $reportTitle ?? 'Report' }} - GreenMarket</title>

    <style>
        @page {
            size: A4 landscape;
            margin: 5mm;
        }

        body {
            font-family: 'Helvetica', 'Arial', sans-serif;
            font-size: 11px;
            line-height: 1.4;
            color: #0f1724;
            background-color: #ffffff;
            margin: 0;
            padding: 0;
        }

        .report-container {
            width: 100%;
            background: #ffffff;
            padding: 0;
            margin: 0;
        }

        /* ================= HEADER ================= */

        .report-header-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #e9f1dc;
        }

        .header-left {
            width: 60%;
            vertical-align: middle;
            padding: 20px;
        }

        .header-right {
            width: 40%;
            vertical-align: middle;
            text-align: right;
            font-size: 12px;
            padding: 20px;
        }

        /* ===== PDF SAFE LOGO ===== */

        .logo-container {
            width: 100%;
        }

        .logo-box {
            background-color: #4d7c32;
            padding: 5px 15px;
            border-radius: 40px;
            display: inline-block;
            vertical-align: middle;
        }

        .logo-box img {
            height: 60px;
            width: auto;
            vertical-align: middle;
        }

        .brand-name {
            padding-left: 15px;
            font-size: 24px;
            font-weight: bold;
            color: #3e7033;
            vertical-align: middle;
            display: inline-block;
        }

        .header-divider {
            height: 3px;
            background-color: #4d7c32;
            margin-bottom: 20px;
            width: 100%;
        }

        /* ================= FILTERS ================= */

        .filters-section {
            background: #f3f6ed;
            border: 1px solid #c5d3b1;
            border-radius: 8px;
            padding: 10px 15px;
            margin-bottom: 20px;
            font-size: 10px;
        }

        .filters-section strong {
            font-size: 11px;
            margin-right: 10px;
        }

        .filter-value {
            background: #4d7c32;
            color: #fff;
            padding: 3px 10px;
            border-radius: 12px;
            font-size: 9px;
            display: inline-block;
            margin-right: 5px;
        }

        /* ================= STATS ================= */

        .summary-stats,
        .stats-row {
            width: 100%;
            display: table;
            table-layout: fixed;
            margin-bottom: 25px;
        }

        .stat-card {
            display: table-cell;
            width: 25%;
            background: #ffffff;
            border: 1px solid #e2e8f0;
            border-radius: 8px;
            padding: 15px;
            vertical-align: middle;
        }

        .stat-value {
            font-size: 16px;
            font-weight: 700;
            margin: 0;
        }

        .stat-label {
            font-size: 9px;
            color: #64748b;
            text-transform: uppercase;
        }

        /* ================= TABLE ================= */

        .report-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 11px;
            background: #fff;
        }

        .report-table th {
            background: #4d7c32;
            color: #fff;
            padding: 12px;
            border: 1px solid #e2e8f0;
            text-align: left;
        }

        .report-table td {
            padding: 10px 12px;
            border: 1px solid #e2e8f0;
        }

        .numeric {
            text-align: right;
        }

        /* ================= STATUS ================= */

        .status-badge {
            padding: 4px 8px;
            border-radius: 6px;
            font-weight: 600;
            font-size: 10px;
        }

        .status-completed {
            background: #d1fae5;
            color: #065f46;
        }

        .status-pending {
            background: #fff3cd;
            color: #92400e;
        }

        /* ================= FOOTER ================= */

        .report-footer {
            border-top: 1px solid #c5d3b1;
            padding-top: 15px;
            margin-top: 20px;
            font-size: 10px;
            color: #4d7c32;
            display: table;
            width: 100%;
        }

        .report-footer div {
            display: table-cell;
            text-align: center;
        }
    </style>
</head>

<body>

    <div class="report-container">

        <!-- ================= HEADER ================= -->
        <table class="report-header-table">
            <tr>
                <td class="header-left">
                    <div class="logo-container">
                        @php
                            $logoPath = public_path('assets/images/logo-4.png');
                            $logoBase64 = '';
                            if (file_exists($logoPath)) {
                                $logoData = base64_encode(file_get_contents($logoPath));
                                $logoBase64 = 'data:image/png;base64,' . $logoData;
                            }
                        @endphp

                        <div class="logo-box">
                            @if($logoBase64)
                                <img src="{{ $logoBase64 }}" alt="Logo">
                            @endif
                        </div>

                        <span class="brand-name">GreenMarket</span>
                    </div>
                </td>

                <td class="header-right">
                    <div><strong>Report Type</strong> : {{ $reportTitle ?? 'Report' }}</div>
                    <div><strong>Generated Date</strong> : {{ date('Y-m-d') }}</div>
                    <div><strong>Generated Time</strong> : {{ date('H:i:s') }}</div>
                </td>
            </tr>
        </table>

        <div class="header-divider"></div>

        <!-- ================= FILTERS ================= -->
        @if(isset($filters))
            <div class="filters-section">
                <strong>Active Filters:</strong>
                @foreach($filters as $key => $value)
                    @if($value)
                        <span class="filter-value">{{ $key }}: {{ $value }}</span>
                    @endif
                @endforeach
            </div>
        @endif

        <!-- ================= CHILD CONTENT ================= -->
        @yield('report-content')

        <!-- ================= FOOTER ================= -->
        <div class="report-footer">
            <div>© {{ date('Y') }} GreenMarket. All rights reserved.</div>
            <div>This report was automatically generated by the GreenMarket System</div>
            <div>Confidential - For Internal Use Only</div>
        </div>

    </div>

</body>

</html>