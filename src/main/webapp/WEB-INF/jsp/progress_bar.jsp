<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
    <link href="http://thecodude.com/demo/html/progress-bar/css/bootstrap.min.css" rel="stylesheet">     

<style>
@charset "UTF-8";  
/*-----------------------
    Progress Bar Style1
-------------------------*/
.bt-progress-style1 {height: 30px;box-shadow: none;border-radius: 0;overflow: visible;background: #fff;margin-top: 20px;box-shadow: 0 1px 10px rgba(0, 0, 0, 0.1);}
.bt-progress-style1 + .bt-progress-style1 {margin-top: 50px;}
.bt-progress-style1 .progress-bar {position: relative;text-align: left;line-height: 30px;border-radius: 0;box-shadow: none;}
.bt-progress-style1 .pb-label {position: absolute;left: 5px;top: -32px;color: #666;font-size: 16px;font-weight: 600;}
.bt-progress-style1 .pb-percent {position: absolute;right: 10px;font-weight: 500;color: #fff;font-size: 14px;line-height: 30px;}

/*-----------------------
    Progress Bar Style2
-------------------------*/
.bt-progress-style2 {height: 4px;box-shadow: none;border-radius: 0;overflow: visible;margin-top: 20px;}
.bt-progress-style2 + .bt-progress-style2 {margin-top: 50px;}
.bt-progress-style2 .progress-bar {position: relative;text-align: left;line-height: 4px;border-radius: 0;box-shadow: none;}
.bt-progress-style2 .pb-label {position: absolute;left: 0px;top: -20px;color: #666;font-size: 14px;font-weight: 600;}
.bt-progress-style2 .pb-percent {position: absolute;right: 0;font-weight: 500;color: #444;font-size: 14px;top: -19px;}

/*-----------------------
    Progress Bar Style3
-------------------------*/
.bt-progress-style3 {height: 30px;box-shadow: none;border-radius: 0;overflow: visible;margin-top: 20px;}
.bt-progress-style3 + .bt-progress-style3 {margin-top: 40px;}
.bt-progress-style3 .progress-bar {position: relative;text-align: left;line-height: 30px;border-radius: 0;box-shadow: none;}
.bt-progress-style3 .pb-label {position: absolute;left: 0;color: #fff;font-size: 13px;font-weight: 500;padding: 0 12px;background: rgba(255, 255, 255, 0.3);}
.bt-progress-style3 .pb-percent {position: absolute;right: 10px;font-weight: 500;color: #fff;font-size: 12px;line-height: 26px;top: -10px;background: #444;padding: 0 7px;}

/*-----------------------
    Progress Bar Style4
-------------------------*/
.bt-progress-style4 {height: 40px;box-shadow: none;border-radius: 0;overflow: visible;padding: 4px;background: #fff;box-shadow: 0 10px 20px rgba(68, 68, 68, 0.05);}
.bt-progress-style4 + .bt-progress-style4 {margin-top: 30px;}
.bt-progress-style4 .progress-bar {position: relative;text-align: left;border-radius: 0;box-shadow: none;}
.bt-progress-style4 .pb-label {position: absolute;left: 5px;color: #fff;font-size: 12px;font-weight: 500;padding: 0 12px;background: rgba(255, 255, 255, 0.3);top: 50%;transform: translateY(-50%);}
.bt-progress-style4 .pb-percent {position: absolute;right: 6px;font-weight: 500;color: #fff;font-size: 11px;background: rgba(255, 255, 255, 0.3);top: 50%;transform: translateY(-50%);padding: 0 5px;}

/*-----------------------
    Progress Bar Style5
-------------------------*/
.bt-progress-style5 {height: 24px;box-shadow: none;border-radius: 0;overflow: visible;margin-top: 30px;}
.bt-progress-style5 + .bt-progress-style5 {margin-top: 60px;}
.bt-progress-style5 .progress-bar {position: relative;text-align: left;border-radius: 0;box-shadow: none;}
.bt-progress-style5 .pb-label {position: absolute;left: 0px;top: -32px;color: #222;font-size: 16px;font-weight: 600;}
.bt-progress-style5 .pb-percent {position: absolute;right: 0;font-weight: 500;color: #fff;font-size: 12px;top: -35px;background: #222;padding: 3px 6px;border-radius: 4px;}
.bt-progress-style5 .pb-percent:after {content: '';position: absolute;border: 11px solid transparent;border-right-color: #222;left: -19px;top: 50%;transform: translateY(-50%);}

/*-----------------------
    Progress Bar Style6
------------------------*/
.bt-progress-style6 {overflow: visible;position: relative;margin-top: 20px;box-shadow: none;background: rgba(0, 0, 0, 0.04);padding: 3px;border-radius: 10px;}
.bt-progress-style6 + .bt-progress-style6 {margin-top: 60px;}
.bt-progress-style6 .progress-bar {position: relative;text-align: left;border-radius: 7px;line-height: 30px;box-shadow: none;}
.bt-progress-style6 .pb-label {position: absolute;left: 2px;top: -35px;color: #666;font-size: 16px;font-weight: 600;}
.bt-progress-style6 .pb-percent {position: absolute;color: #fff;font-size: 11px;bottom: 27px;text-align: center;z-index: 10;text-align: center;right: 0;font-weight: 600;}
.bt-progress-style6 .pb-percent:after {content: '';position: absolute;background: #444;border-radius: 0px 30px 30px 30px;width: 30px;height: 30px;left: -6px;top: 0;z-index: -1;transform: rotate(-130deg);}

/*-----------------------
    Progress Bar Style7
-------------------------*/
.bt-progress-style7 {height: 12px;box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);border-radius: 0;overflow: visible;padding: 3px;background: #fff;margin-top: 20px;}
.bt-progress-style7 + .bt-progress-style7 {margin-top: 60px;}
.bt-progress-style7 .progress-bar {position: relative;text-align: left;line-height: 4px;border-radius: 0;box-shadow: none;}
.bt-progress-style7 .pb-label {position: absolute;left: 0px;top: -24px;color: #666;font-size: 15px;font-weight: 600;}
.bt-progress-style7 .pb-percent {position: absolute;right: -13px;font-weight: 500;color: #fff;font-size: 10px;top: -30px;background: #444;padding: 8px 5px;}
.bt-progress-style7 .pb-percent:after {content: '';position: absolute;border: 5px solid transparent;left: 50%;border-top-color: #444;top: 20px;-webkit-transform: translateX(-50%);transform: translateX(-50%);}

/*-----------------------
    Progress Bar Style8
-------------------------*/
.bt-progress-style8 {position: relative;height: 40px;box-shadow: none;border-radius: 20px;overflow: visible;padding: 7px;background: #fff;box-shadow: 0 1px 10px rgba(68, 68, 68, 0.08);}
.bt-progress-style8 + .bt-progress-style8 {margin-top: 30px;}
.bt-progress-style8 .progress-bar {text-align: left;border-radius: 0;box-shadow: none;border-radius: 15px;}
.bt-progress-style8 .pb-label {position: absolute;left: 20px;color: #fff;font-size: 13px;font-weight: 500;top: 50%;transform: translateY(-50%);}
.bt-progress-style8 .pb-percent {position: absolute;right: 14px;top: 50%;font-weight: 500;color: #444;font-size: 13px;transform: translateY(-50%);}

/*-----------------------
    Progress Bar Style9
------------------------*/
.bt-progress-style9 {overflow: visible;position: relative;border-radius: 10px;margin-top: 20px;box-shadow: none;background: #eee;padding: 0px;height: 20px;}
.bt-progress-style9 + .bt-progress-style9 {margin-top: 60px;}
.bt-progress-style9 .progress-bar {text-align: left;border-radius: 10px;line-height: 30px;margin-left: -1px;box-shadow: none;}
.bt-progress-style9 .pb-label {position: absolute;left: 2px;top: -35px;color: #888;font-size: 16px;font-weight: 600;}
.bt-progress-style9 .pb-percent {position: absolute;color: #999;font-size: 11px;top: 50%;text-align: center;z-index: 10;text-align: center;right: 0;font-weight: 600;transform: translateY(-50%);}
.bt-progress-style9 .pb-percent:after {content: '';position: absolute;background: #eee;border-radius: 30px 30px 0px 30px;width: 30px;height: 30px;left: -6px;top: 0;z-index: -1;transform: rotate(130deg);}

/*-----------------------
    Progress Bar Style10
------------------------*/
.bt-progress-style10 {overflow: visible;margin-top:40px;margin-left:20px;box-shadow: none;background: #eee;padding: 0px;height: 12px;border-radius: 6px;}
.bt-progress-style10 + .bt-progress-style10 {margin-top: 30px;}
.bt-progress-style10 .progress-bar {position: relative;text-align: left;border-radius: 10px;line-height: 30px;margin-left: -1px;box-shadow: none;}
.bt-progress-style10 .pb-label {position: absolute;left: -30px;top: -9px;color: #888;font-size: 12px;font-weight: 600; z-index:2000;}
.bt-progress-style10 .pb-percent {position: absolute;width: 36px;height: 36px;line-height: 32px;background: #fff;color: #337ab7;font-size: 11px;top: 50%;text-align: center;z-index: 10;text-align: center;right: -1px;font-weight: 600;transform: translateY(-50%);border: 2px solid #337ab7;border-radius: 50%;text-align: center;}
.bt-progress-style10 .progress-bar-success .pb-percent {border-color: #5cb85c;color: #5cb85c;}
.bt-progress-style10 .progress-bar-info .pb-percent {border-color: #5bc0de;color: #5bc0de;}
.bt-progress-style10 .progress-bar-warning .pb-percent {border-color: #f0ad4e;color: #f0ad4e;}
.bt-progress-style10 .progress-bar-danger .pb-percent {border-color: #d9534f;color: #d9534f;}
</style>
 </head>
 <body> 

<div class="col-md-8">
        <div class="progress bt-progress-style10" style="width:80px;">
          <div class="progress-bar progress-bar-success progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width:95%">
            <span class="pb-label">CPU</span>
            <span class="pb-percent">95%</span>
          </div>
        </div>
        <div class="progress bt-progress-style10" style="width:80px;">
          <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width:85%">
            <span class="pb-label">MEM</span>
            <span class="pb-percent">85%</span>
          </div>
        </div>
        <div class="progress bt-progress-style10" style="width:80px;">
          <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:75%">
            <span class="pb-label">DISK</span>
            <span class="pb-percent">75%</span>
          </div>
        </div>
        <div class="progress bt-progress-style10" style="width:80px;">
          <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width:65%">
            <span class="pb-label">MEM</span>
            <span class="pb-percent">65%</span>
          </div>
        </div>
        <div class="progress bt-progress-style10" style="width:80px;">
          <div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width:55%">
            <span class="pb-label">MEM</span>
            <span class="pb-percent">55%</span>
          </div>
        </div>
    </div>
 </body>
</html>
