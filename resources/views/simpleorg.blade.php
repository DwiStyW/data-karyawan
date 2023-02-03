<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SimpleOrg</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">


    <style>
        /*CSS*/
        html,
        body {
            width: 100%;
            height: 100%;
            padding: 0;
            margin: 0;
            overflow: auto;
            font-family: Helvetica;
        }

        #tree {
            width: 100%;
            height: 100%;
        }

        .container {
            margin: 1%;
            height: auto;
        }

        .field_0 {
            font-family: cursive;
            text-transform: uppercase;
            fill: #ddd;
        }


        .field_1 {
            fill: #cfcfcf;
        }

        #tree>svg {
            background-color: #ddd;
        }

        [data-id='search'] {
            display: block !important;
        }
    </style>
</head>

<body oncontextmenu="return false" onkeydown="return false;" onmousedown="return false;">
    <div class="container">
        <div id="tree"></div>
    </div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
                mouseScrool: OrgChart.action.yScroll,
                showYScroll: true,
                scaleInitial: 0.6,
                mode: 'light',
                template: 'isla',
                enableSearch: false,
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
        }

    }
</script>

</html>
