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
    <style>
        #tree {
            width: 100%;
            height: 100%;
        }

        .field_0 {
            font-family: cursive;
            text-transform: uppercase;
            fill: #ddd;
        }

        .field_1 {
            fill: #cfcfcf;
        }

        /*
        #tree>svg {
            background-color: #ddd;
        } */
        [data-id='search'] {
            display: block !important;
        }
    </style>
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container">
            <header class="mb-3">
                <h3 class="title-pages fw-bold">Struktur</h3>
            </header>
            <div id="tree"></div>
        </div>
        @include('partials.footer')
    </main>
    @include('partials.navdown')

</body>
<script src="../assets/ui/jquery-3.6.1/jquery-3.6.1.min.js"></script>
<script src="../assets/ui/bootstrap-5.2.1-dist/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).on("scroll", function() {
        if ($(document).scrollTop() > 100) {
            $(".navbar").addClass("border-bottom");
        } else {
            $(".navbar").removeClass("border-bottom");
        }
    });
    $('input').hover(function() {
        $(this).select();
    });
</script>
<script src="../assets/js/orgchart.js"></script>
<script>
    window.onload = function() {
        OrgChart.templates.ana.field_0 =
            '<text width="230" style="font-size: 18px;" fill="#ffffff" x="125" y="95" text-anchor="middle" class="field_0">{val}</text>';
        OrgChart.templates.ana.field_1 =
            '<text width="130" text-overflow="multiline" style="font-size: 14px;" fill="#ffffff" x="230" y="30" text-anchor="end" class="field_1">{val}</text>';

        $(document).ready(function() {
            $.ajax({
                type: "GET",
                url: "http://127.0.0.1:8000/api/getStruktur",
                methode: "get",
                dataType: "json",
                success: function(data) {
                    getData(data)
                    console.log(data);
                }
            });
        });

        function getData(data) {


            var data = data;
            // console.log(data);
            //JavaScript
            var chart = new OrgChart(document.getElementById("tree"), {
                showXScroll: OrgChart.scroll.visible,
                showYScroll: OrgChart.scroll.visible,
                mouseScrool: OrgChart.action.ctrlZoom,
                scaleInitial: 0.8,
                mode: 'light',
                template: 'isla',
                enableSearch: false,
                menu: {
                    export_pdf: {
                        text: "Export PDF",
                        icon: OrgChart.icon.pdf(24, 24, "#7A7A7A"),
                        onClick: pdf
                    },
                    pdfPreview: {
                        text: "PDF Preview",
                        icon: OrgChart.icon.pdf(24, 24, '#7A7A7A'),
                        onClick: preview
                    }
                },
                collapse: {
                    level: 2,
                    allChildren: true
                },
                editForm: {
                    buttons: {
                        edit: null,
                        share: null,
                        pdf: null,
                        remove: null
                    }
                },

                nodeBinding: {
                    field_0: "id",
                    field_1: "nama"
                },
                tags: {
                    "subLevels0": {
                        subLevels: 0
                    },
                    "subLevels1": {
                        subLevels: 1
                    },
                    "subLevels2": {
                        subLevels: 2
                    },
                    "subLevels3": {
                        subLevels: 3
                    },
                    "subLevels4": {
                        subLevels: 4
                    }
                },
                nodes: data
            });

            function pdf(nodeId) {
                chart.exportPDF({
                    format: "A4",
                    padding: 50
                });
            }

            function preview() {
                OrgChart.pdfPrevUI.show(chart, {
                    format: 'A4',
                    padding: 50
                });
            }
        }

    }
</script>

</html>
