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
            text-transform: uppercase;
            fill: #354236ca;
        }

        .field_1 {
            fill: #cfcfcf;
        }

        [filter="url(#isla-shadow)"] {
            fill: #5F7A61 !important;
        }

        [stroke="#039BE5"] {
            stroke: #35423677;
        }

        [fill="#039BE5"] {
            fill: #5F7A61;
        }

        /* [fill="#039BE5"] {
            fill: #D5EEBB;
        } */

        [stroke="#F57C00"] {
            fill: #cab249 !important;
            stroke: #cab249 !important;
        }

        [stroke="#FFCA28"] {
            stroke: #cab249 !important;
        }

        [data-ctrl-menu] {
            background-color: #ddd;
            border-radius: 5px;
            height: 30px !important;
            top: 200px;
            box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1), 0 3px 10px 0 rgba(0, 0, 0, 0.10);
        }

        hr {
            margin: 5px;
        }

        /* [data-id='search'] {
            display: block !important;
        } */
    </style>
</head>

<body>
    @include('partials.sidebar')
    @include('partials.navbar')
    <main class="wrapper">
        <div class="container">
            <header style="position: fixed; top:10%; z-index:1">
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
{{-- <script src="https://balkan.app/js/OrgChart.js"></script> --}}
<script>
    window.onload = function() {
        OrgChart.templates.isla.field_0 =
            '<text width="230" style="font-size: 18px;" x="90" y="92" text-anchor="middle" class="field_0">{val}</text>';
        OrgChart.templates.isla.field_1 =
            '<text width="130" text-overflow="multiline" style="font-size: 14px;" fill="#ffffff" x="90" y="60" text-anchor="middle" class="field_1">{val}</text>';

        $(document).ready(function() {
            $.ajax({
                type: "GET",
                url: "/api/getStruktur",
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
            //JavaScript
            var chart = new OrgChart(document.getElementById("tree"), {
                showXScroll: OrgChart.scroll.visible,
                showYScroll: OrgChart.scroll.visible,
                mouseScrool: OrgChart.action.ctrlZoom,
                scaleInitial: 0.8,
                mode: 'light',
                template: 'ana',
                enableSearch: false,
                // nodeMenu: false,
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
                editForm: false,
                // editForm: {
                //     buttons: {
                //         edit: null,
                //         share: null,
                //         pdf: null,
                //         remove: null
                //     }
                // },

                nodeBinding: {
                    // field_0: "nama",
                    field_1: "jabatan"
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
