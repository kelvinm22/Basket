<%-- 
    Document   : player
    Created on : Nov 2, 2017, 9:30:43 AM
    Author     : meiiko
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IBL | Admin</title>
        <script src="../js/jquery.min.js"></script>
        <script src="../js/jquery.table2excel.js"></script>
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/bootstrap-table.css"> 
        <link rel="stylesheet" href="../css/bootstrap-datetimepicker.css"/>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/moment.min.js"></script>
        <script src="../js/bootstrap-datetimepicker.js"></script>
        <script src="../js/excelexportjs.js"></script>
        <link href="../css/select2.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="../css/scrollbar.css">
        <script src="../js/select2.min.js"></script>   
        <script src="../js/jquery.scrollbar.min.js"></script>
               
        <style>
		body{
                    overflow:hidden;
		}
                .top-menu{
                    width:100%;
                    height:50px;
                    background:black;
                    position:fixed;
                    z-index: 3;
                }                
                .tl-menu{
                    margin-top: 0;
                    margin-left: 50px;
                    margin-top: 5px;
                    float: left;  
                    font-size:28px;
                    font-weight: bold;
                }  
                tl-menu a{
                    text-decoration: none;
                }
                .logo{
                    color:white;
                }
                .logo:hover{
                    opacity:0.6;
                }
                #vseparator{
                    background:white;
                    width:2px;
                    height:85%;
                    margin-top: 4px;
                    margin-right: 15px;
                    float:right;
                }
                .info{
                    margin-top: 10px;
                    margin-right: 15px;
                    float: right;
                }
                .txt-info{
                    color:white;
                    font-size:18px;
                    margin-left: 10px;
                    font-weight: normal;
                    padding-top: 4px;
                }
                .tr-menu{
                    margin-top: 10px;
                    margin-right: 50px;
                    float: right;
                }   
		.navbar{
			border-radius:0;
		}
		.list{
			margin:0 auto;
			max-width:100%;
                        height:230px;
		}
		.round{
			border-radius:50%;
			height:30px;
			width:30px;
                        background:transparent;
                        border:transparent;
			background-image: url('../img/power.png');
			background-size:100%;
			background-position: 0;
			background-repeat: no-repeat;
		}
                .logout{
                    color:white;
                    font-weight: normal;
                    font-size:18px;
                    margin-left: 10px;
                    vertical-align: top;
                    cursor:pointer;
                    padding-top: 4px;
                }
                .tr-menu:hover{
                    opacity:0.6;
                }
                .isi{
                    width:100%;
                    padding-top: 0;
                    padding-left: 180px;
                    margin:auto;
                }
                #togglebutton{
                    background:transparent;
                    color:white;
                    width:32px;
                    height:32px;
                    padding:0;
                    border:transparent;
                }
                #togglebutton:hover{
                    opacity: 0.6;
                }
                .left-menu{
                    min-height:100%;
                    background:black;
                    position:fixed;  
                    float: left;
                    display: block;
                    z-index: 1;
                    padding-top:56px;                    
                }
		.left-menu ul{
			list-style-type: none;
			margin: 0;
			padding: 0.2em 0.5em;
		}
		.icon { 
                    width: 32px;
                    height:32px;  
                    background:transparent;
		}
                .icon:hover{
                    opacity: 0.6;
                }
		.left-menu ul li { 
			margin-bottom: 15px; 
                }
                .left-menu ul li a{
			text-decoration:none;
		}
                .left-menu ul li a:hover{
                    opacity:0.6;
		}
		.text {
                    display: inline-block;
                    margin-left: 10px;
                    color:white;
		}
		@media only screen and (max-width: 1280px) {
		  .text {
			  display: none;
		  }
                  .isi{
                      margin-left: 50px;
                  }
		}
                .form{
                    padding:0;
                }
                .current{
                    font-weight: bold;
                }   
                .btn-menu{
                    position:absolute;
                    bottom:5%;
                }
                
                .news-content{
                height: 660px;
                border-radius: 0px 0px 2px 2px;
                overflow-y: auto;
                overflow-x: hidden;
                padding-left: 30px;
                }
                
                #sub{
                    margin-left:30%;
                    font-size:14px;                    
                }
                #sub a{
                    color:white;
                }
                #sub li{
                    margin-bottom:10%;
                }
                
                .msg{
                        padding: 0;
                        border-radius:0;
                        margin-bottom: 0;
                        text-align: center;
                        font-size: 28px;
                        font-weight: bold;
                        cursor:pointer;
                }      
                .hv:hover{
                    opacity:0.6;
                    cursor:pointer;
                }                
              
	</style>
    </head>
    <body>
        <div class="top-menu">
            <span class="tl-menu"><a href="Home" style="text-decoration:none;"><div class="logo">IBL</div></a></span>
            <span class="tr-menu">
                <a href="LogOut">
                    <button class="round" type="button" data-toggle="tooltip" data-placement="bottom" title="Sign Out"></button>
                    <label class="logout">Sign Out</label>
                </a>
            </span>
            <span id="vseparator"></span>
            <span class="info">
                <img src="../img/User.png" width="30px;" style="margin-top:-7px">
                <label class="txt-info">Hi, ${requestScope.nama_usr}</label>
            </span>
        </div>
        <div class="left-menu">
            <ul class="s-menu">  
                <li> 
                    <a href="Dashboard" >
			<img class="icon" src="../img/Home.png">
			<span class='text current'>Dashboard</span>
                    </a>
                </li> 
                <li> 
                    <a href="Player" >
			<img class="icon" src="../img/package.png">
			<span class='text'>Player</span>
                    </a>
                </li> 
                <li> 
                    <a href="Team" >
			<img class="icon" src="../img/package.png">
			<span class='text'>Team</span>
                    </a>
                </li> 
                <li class=”dropdown”>
                    <div class="hv">
                    <a href="Statistic" class=”dropdown-toggle” data-toggle=”dropdown”><img class="icon" src="../img/Book-Open.png"></a>
                    <span class='text' id="Book">Statistic<span class="caret"></span></span>
                    </div>
                    <ul class=”dropdown-menu” id="sub">
                        <li><a href="Statistic_Pemain">Player</a></li>
                        <li><a href="Statistic_Team">Team</a></li> 
                    </ul>
                </li> 
                <li class="btn-menu">
                    <button id="togglebutton"><span class="glyphicon glyphicon-th-list"></span></button>
                    <label class='text txt-toggle' id="cursor">Menu</label>
		</li> 
            </ul>
        </div>
	<div style="height:49px;"></div>
        <div class="msg alert ${requestScope.alert}">${requestScope.ErrMess}</div>
        <script>
            $(".alert-success").delay(5000).fadeOut(2000, function () { $(this).remove(); });
            $(".alert-danger").delay(6000).fadeOut(3000, function () { $(this).remove(); });
        </script> 
       <div class="isi container" style="overflow: auto;">
            <div class="news-content scrollbar-macosx">
               <div class="col-md-12" style="padding-right:120px;">
                    <div class="form">
                    <center><h2 style="margin-bottom:40px;"><b>Player</b></h2></center>
           
			<form class="form-horizontal" method="post" action="doInsertPlayer" id="inputplayer" enctype = "multipart/form-data">
                                <div class="form-group">
                                    <label class="control-label col-sm-2 " >Player</label>
                                    <div class="col-sm-3">
                                        <input id="pemain" type="text" name="pemain" class="form-control" required/>
                                    </div>
                                 
                                    <label class="control-label col-sm-2">Team</label>
                                    <div class="col-sm-3">
                                        <select  name="team" class="form-control" id="team">
                                            <option value=""> Choose One Team </option>
                                            <c:forEach var="item" items="${requestScope.team}">
                                                <option value="${item.value.id}"> ${item.value.id} - ${item.value.team} </option>
                                            </c:forEach>
                                        </select>
                                    </div>                                  
                                </div>	
                          
                                <div class="form-group">
                                    <label class="control-label col-sm-2" >Position</label>
                                    <div class="col-sm-3">
                                       <select name="posisi" class="form-control" id="posisi">
                                            <option value=""> Choose One Team </option>
                                            <c:forEach var="item" items="${requestScope.posisi}">
                                                <option value="${item.value.kd_pos}"> ${item.value.kd_pos} - ${item.value.nama_pos} </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    
                                    <label class="control-label col-sm-2">Jersey Number</label>
                                    <div class="col-sm-3">
                                    	<input id="no_punggung" type="text" name="no_punggung" class="form-control" >
                                    </div>                                  
                                </div>	
                            <div class="form-group">
                                    <label class="control-label col-sm-2" >Height</label>
                                    <div class="col-sm-3">
                                        <input id="tinggi" type="text" name="tinggi" class="form-control" required/>
                                    </div>
                                    
                                    <label class="control-label col-sm-2">Weight</label>
                                    <div class="col-sm-3">
                                    	<input id="berat" type="text" name="berat" class="form-control" >
                                    </div>                                  
                                </div>	
                            <div class="form-group">
                                    <label class="control-label col-sm-2" >Tanggal Lahir</label>
                                    <div class="col-sm-3">
                                        <input id="tgl" type="text" name="tgl" class="form-control" placeholder="YYYY-MM-DD" required/>
                                    </div>
                                   
                                    <label class="control-label col-sm-2">Tangan</label>
                                    <div class="col-sm-3">
                                    	<input id="tangan" type="text" name="tangan" class="form-control"  required>
                                    </div>                                  
                                </div>	
                            
                            <div class="form-group">
                                   <label class="control-label col-sm-2" >Foto</label>
                                   <div class="col-sm-3">
                                       <input type="file" name="file" id="file" onchange="readURL(this);" required/>
                                   </div> 
                                   <div class="col-sm-3 col-sm-offset-2">
                                       <img id="preview"/>
                                   </div>     
                            </div>
                             </form>                                        
				</div>	     
                                <br/>
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-1">
                                        <button class="btn btn-success btn-block" data-toggle="modal" data-target="#KonfirmasiInput"><span class="glyphicon glyphicon-floppy-save"></span> Save</button>
                                    </div>
                                    <div class="col-sm-4 col-sm-offset-1">
                                        <button class="btn btn-info btn-block" id="reset"><span class="glyphicon glyphicon-repeat"></span> Reset</button>
                                    
                                    </div>
                                </div>
			
                    </div>
		</div>
                
                    
            </div>
        
        <!-- Modal Konfirmasi Input-->
    <div id="KonfirmasiInput" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" style="font-size:30px;text-align:center;">Confirmation</h4>
                </div>
                <div class="modal-body">
                    
                        <p style="font-size:20px;color:red;font-weight:bold;text-align:center;">Are You Sure ?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" data-dismiss="modal" onclick="input()">Yes</button>
                    <button class="btn" data-dismiss="modal" aria-hidden="true">No</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Modal Konfirmasi Input-->
    
    <!-- Modal Validasi Input-->
    <div id="ValidasiInput" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <p style="font-size:24px;color:red;font-weight:bold;text-align:center;">Please Complete All of Your Field First!</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary btn-block" data-dismiss="modal" aria-hidden="true">OK</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Modal Validasi Input-->
        
    </body>
    <script>
        function cekInput(){           
            if($('#pemain').val()===""){   
                return false;
            }else if($('#team').val()===""){
                return false;
            }else if($('#posisi').val()===""){
                return false;
            }else if($('#no_punggung').val()===""){
                return false;
            }else if($('#tinggi').val()===""){
                return false;
            }else if($('#berat').val()===""){
                return false;
            }else if($('#tgl').val()===""){
                return false;
            }else if($('#tangan').val()===""){
                return false;
            }else if($('#file').val()===""){
                return false;
            }else{
                return true;
            }
        }
        function input(){
            if(cekInput()){
                $('#inputplayer').submit();
            }else{                
                $('#KonfirmasiInput').modal('hide');
                $('#ValidasiInput').modal('show');     
            }           
        }
        $(document).ready(function(){ 
           // $('table.package').highchartTable();
           // $('table.IdCard').highchartTable();
            //$("#loading").hide();
            //$('#sub').hide();
            $('#togglebutton').click(function() {
		$('.text').toggle(300);
                $('#sub').hide();
            }); 
            $('.txt-toggle').click(function() {
		$('.text').toggle(300);
                $('#sub').hide();
            }); 
            $('#Book').click(function(){
               $('#sub').toggle(300);               
            });
            $('#tgl').datetimepicker({
                    format: 'YYYY-MM-DD'
            }); 
            $("#reset").click(function(){
                $('#loading').hide();
                $("#ok").hide();
                $("#error").hide();
                $("#NIM").focus();
                $("#pemain").val(null);
                $("#posisi").val(null);
                $("#no_punggung").val(null);
                $("#tinggi").val(null);
                $("#berat").val(null);
                $("#tgl").val(null);
                $("#tangan").val(null);
                $("#file").val(null);
            });    
            jQuery('.scrollbar-macosx').scrollbar();                
                     
	}); 
        function readURL(input) {		
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
			$('#preview')
				.attr('src', e.target.result)
				.width(130)
				.height(140);
			};
			reader.readAsDataURL(input.files[0]);
		}
	}
    </script>
</html>

