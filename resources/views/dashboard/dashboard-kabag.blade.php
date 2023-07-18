<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../assets/ui/img/ikon.png">
    <link rel="stylesheet" href="../assets/ui/bootstrap-5.2.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/ui/bootstrap-icons-1.10.2/bootstrap-icons.css">
    <link rel="stylesheet" href="../assets/ui/css/global.css">
    <script src="../assets/js/code/highcharts.js"></script>
    <script src="../assets/js/code/modules/drilldown.js"></script>
    <script src="../assets/js/code/modules/stock.js"></script>
    <script src="../assets/js/code/modules/exporting.js"></script>
    <script src="../assets/js/code/modules/export-data.js"></script>
    <script src="../assets/js/code/modules/accessibility.js"></script>
    <style>
        .highcharts-credits {
            display: none !important;
        }

        .highcharts-title {
            font-size: 14px !important
        }

        @media (max-width: 10000px) {
            .icon-dashboard {
                right: -40px;
                top: 70px;
            }
        }

        @media (max-width: 767px) {
            .icon-dashboard {
                right: -40px;
                top: 40px;
            }
        }
    </style>
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container-custome">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Dashboard</h3>
            </header>

        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')
</body>
<script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../assets/DataTables/datatables.min.js"></script>

</html>
