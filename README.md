[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/z2gRsEfr)
# Trang Web Bán Vé Xem Phim

## Giới Thiệu

Ứng dụng web này được thiết kế để đặt vé xem phim trực tuyến. Người dùng có thể duyệt qua các bộ phim, đăng nhập vào tài khoản của họ và chọn ghế để mua vé. Trang web cũng bao gồm trang danh mục để giúp người dùng tìm kiếm phim theo thể loại.

## Tính Năng

### Trang Đăng Nhập

- Mô Tả: Người dùng có thể đăng nhập vào tài khoản của họ .
- Sử Dụng: Truy cập trang đăng nhập và nhập thông tin đăng nhập , sai tài khoản mật khẩu sẽ có thông báo sai tài khoản mật khẩu 
***   TK : phanvanchinh
      Mk :123456

### Trang Chính (Index)

- Mô Tả: Trang chính nơi người dùng có thể tìm kiếm và chọn phim mình muốn
- Tính Năng:
  - Hiển thị danh sách các bộ phim có sẵn.
         Thanh danh mục : 
- Mô Tả: Cho phép người dùng lọc phim theo thể loại.
- Tính Năng :
  - Hiển thị danh sách thể loại phim.
*** - KHI CLICK VÀO "PHIM HOT" HIỆN DANH MỤC CÁC BỘ PHIM ĐANG CÔNG CHIẾU

### Trang Chi Tiết Phim (cartegory)

- Mô Tả: Hiển thị thông tin bộ phim và giá tiền
- Tính Năng:
  - Tiêu đề phim, ảnh đại diện, thể loại, ngày phát hành và mô tả.
  - Lựa chọn số vé và chọn ghế.
  - Nút Thêm vào giỏ hàng.
 *** - Click " Đặt vé " cài đặt chọn ghế và chọn rạp 
 *** - Click " Xác nhận "
 *** - Hiện thông báo đặt vé thành công






    Readme 2:

*Yêu Cầu Hệ Thống
severlet
mysql
*Bước 1: Mã Nguồn
GitHub: https://github.com/webprograming2018/ltw-2023-html-PhanVanChinh.git

*Bước 2: Cài Đặt Dependencies
    Cài đặt dependencies:  
    npm install
Bước 3: Cấu Hình Môi Trường 
 PORT=3306
 SECRET_KEY=your_secret_key
Bước 4: Khởi Chạy Server
 Chạy lệnh sau để khởi động server:
-Cấu Trúc Thư Mục
 /controllers: Chứa các controllers xử lý logic nghiệp vụ.
 /models: Định nghĩa các mô hình dữ liệu.
 /routes: Định nghĩa các tuyến đường API.
 /anh : chứa các ảnh
*API Endpoints
-POST /api/login: Xử lý đăng nhập người dùng.
-GET /api/category: Lấy danh sách các bộ phim.
-GET /api/category/:id: Lấy thông tin chi tiết của một bộ phim.
*Quản Lý Dữ Liệu
Backend sử dụng mysql để lưu trữ dữ liệu. Đảm bảo bạn đã cài đặt và chạy một máy chủ mysql trước khi sử dụng ứng dụng.

