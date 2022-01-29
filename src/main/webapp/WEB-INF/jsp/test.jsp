<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
      <title>jQuery RadarChart.js Plugin Demo</title>
      <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
      <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
      <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
      <script src="../assets/js/plugins/RadarChart.js"></script>
      <script>
         var mapObject;

         $(document).ready(function()
         {
            mapObject = new RadarChart(document.getElementById('environmentMap').getContext('2d'));

            mapObject.init({MinAngle: 2, MaxAngle: 198, AngleScale: 14, ValueScale: 10, ValueScaleByMaxMin: false, PointColor : "rgba(151,187,205,1)", PointStrokeColor : "#fff", ValueScaleMax: 80, ValueScaleMin: 0});

            mapObject.addPoint(80, 10, 10, 0);
            mapObject.drawDiagram();
            mapObject.addPoint(70, 30, 30, 0);
            mapObject.drawDiagram();
            mapObject.addPoint(60, 30, 30, 0);
            mapObject.drawDiagram();
            mapObject.addPoint(70, 34, 30, 0);
            mapObject.drawDiagram();
            mapObject.addPoint(60, 30, 30, 0);
            mapObject.drawDiagram();
            mapObject.addPoint(60, 34, 30, 0);
            mapObject.drawDiagram();
            mapObject.addPoint(60, 54, 30, 0);
            mapObject.drawDiagram();
            mapObject.addPoint(60, 34, 30, 0);
            mapObject.drawDiagram();
            mapObject.addPoint(60, 56, 30, 0);
            mapObject.drawDiagram();
         });
      </script>
   </head>
   <body>
      <div class="container" style="max-width:800px;">
         <h1 style="margin:150px auto 30px auto;text-align:center">jQuery RadarChart.js Plugin Demo</h1>
            <canvas id="environmentMap" width="800" height="600"></canvas>
   		</div>
   </body>
</html>
