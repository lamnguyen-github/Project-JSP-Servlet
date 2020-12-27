<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="  /images/logodend.png"/>
    <title>Tài Khoản</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-datepicker.css" rel="stylesheet">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/jquery-ui.min.css" rel="stylesheet">
    <link href="css/jquery.datetimepicker.css" rel="stylesheet">
</head>
<body>
<header>
    <nav id="navbar-container" class="navbar navbar- navbar-fixed-top">
    <div class="container-fluid">
        
        
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                                <li style="border-right: 1px solid #E1E1E1; padding-right: 15px;">
                    <label style="margin: 13px 15px; color: white">
                        Tiệm đồ cũ DEND 
                    </label>
                </li>
               
                                <li class="dropdown user-profile">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false"><span class="hello">Xin chào, </span>DEND<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa fa-user"></i>Tài khoản</a></li>
                        <li><a href="DangNhap.jsp"><i class="fa fa-power-off"></i>Thoát</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav></header>
<section class="main" role="main">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2 padd-0">
                <div class="sidebar sidebar-fixed hidden-xs hidden-sm hidden-md" id="sidebar">
            <ul class="nav nav-pills nav-list nav-stacked">
                           
                            <li id="dashboard"><a href="Trangchu.jsp"><i class="fa fa-gg-circle"></i><b>Trang Chủ</b></a></li>
                            <li id="orders"><a href="DonHang.jsp"><i class="fa fa-shopping-cart"></i><b>Đơn hàng</b></a></li>
                            <li id="product"><a href="SanPham.jsp"><i class="fa fa-product-hunt"></i><b>Sản phẩm</b></a></li>
                            <li id="customer"><a href="KhachHang.jsp"><i class="fa fa-users"></i><b>Khách hàng</b></a></li>
                            <li id="import"><a href="NhapKho.jsp"><i class="fa fa-truck"></i><b>Nhập kho</b></a></li>
                            <li id="inventory"><a href="TonKho.jsp"><i class="fa fa-list-alt"></i><b>Tồn kho</b></a></li>
                            <li id="inventory"><a href="LienHe.jsp" ><i class="fa fa-user"></i><b>Liên hệ</b></a></li>
                            <li id="config"><a href="ThietLap.jsp"><i class="fa fa-empire"></i><b>Thiết lập</b></a></li>
                            <img id="dend" style="width: 180px; height: 180px; margin-left: 15px;" src="images/logodend.png" alt=" ">
                        </ul>
</div>            </div>
            <div class="col-md-10 padd-left-0">
                <div class="main-content">
                    <div class="alert alert-dange ajax-error" role="alert"><span
        style="font-weight: bold; font-size: 18px;">Thông báo!</span><br>

    <div class="ajax-error-ct"></div>
</div>
<div class="alert ajax-success" role="alert"
     style="width: 350px;background: rgba(92,130,79,0.9); display:none; color: #fff;"><span
        style="font-weight: bold; font-size: 18px;">Thông báo!</span>
    <br>

    <div class="ajax-success-ct"></div>
</div>



                    <div class="breadcrumbs-fixed panel-action">
    <div class="row">
        <div class="customer-act act">
            <div class="col-md-4 col-md-offset-2">
                <div class="left-action text-left clearfix">
                    <h2>Thông tin người đăng nhập</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="main-space customer"></div>
<div class="row account-info">
    <div class="col-md-6">
        <div class="form-horizontal">
            <div class="form-group">
                <div class="col-md-4">
                    <label for="name">Tên nhân viên: </label>
                </div>
                <div class="col-md-8" >
                    <span style="color: white;" >Nguyên Đoan Đạt</span>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label for="name">Mã Nhân Viên: </label>
                </div>
                <div class="col-md-8">
                    <strong><span style="color: white;" >18130156</span></strong>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label for="name">Mật khẩu: </label>
                </div>
                <div class="col-md-8 padd-0">
                    <button class="btn btn-primary" id="btn-changepass"><i class="fa fa-retweet"></i> Đổi mật khẩu</button>
                    <div class="form-hide form-change-password" style="display: none;">
                        <div>
                            <div class="form-group">
                                <label  class="control-label sr-only">Mật khẩu hiện tại: </label>
                                <input type="text" id="oldpass" class="form-control"
                                       placeholder="Mật khẩu hiện tại">
                            </div>
                            <div class="form-group">
                                <label class="control-label sr-only">Mật khẩu mới: </label>
                                <input type="password" class="form-control new-password" id ="newpass"
                                       placeholder="Mật khẩu mới">
                            </div>
                            <div class="form-group">
                                <label class="control-label sr-only">Nhập lại mật khẩu mới: </label>
                                <input type="password" class="form-control new-password" id="renewpass""
                                       placeholder="Nhập lại mật khẩu mới">
                                <span class="label label-danger arrowed-right" style="display: none;" id="newpass-wrong">
                                    <span>Mật khẩu không giống nhau</span>
                                </span>
                            </div>

                            <div class="form-group">
                                <button type="reset" class="btn btn-default btn-sm" id="btn-cancel-pass">Hủy</button>
                                <button class="btn btn-primary" onclick="cms_change_password();">Đổi mật khẩu
                                </button>
                                <div class="action-none" style="display: none;">
                                    <input type="submit" name="change" value="Lấy Lại Mật khẩu" class="btn-sm-after"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label for="name">Email: </label>
                </div>
                <div class="col-md-8">
                    <span style="color: white;" >threebrother@gmail.com</span>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label for="name">Nhóm người sử dụng: </label>
                </div>
                <div class="col-md-8">
                    <span class="user_group" style="display: inline-block; color: #fff; background: #428BCA; padding: 2px 5px;"><i class="fa fa-male"></i> Admin</span>                </div>
            </div>
        </div>
    </div>
</div>                </div>
            </div>
        </div>
    </div>
</section>
</body>
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="../admin/js/jsp5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.datetimepicker.full.js"></script>
<script src="js/bootstrap-datepicker.min.js"></script>
<script src="js/bootstrap-datepicker.vi.min.js"></script>
<script src="js/ckeditor.js"></script>
<script src="js/editor.js"></script>
<script src="js/ajax1.js"></script>
</html>