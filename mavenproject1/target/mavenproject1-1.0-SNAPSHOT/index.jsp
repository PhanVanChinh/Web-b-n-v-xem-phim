<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <scrip src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></scrip>
    <link rel="stylesheet" href="style.css"> 
    <title>LTW</title>
</head>
<body>
    <header>
    <div class="logo">
        <img src="anh/logochuan.png" style="height:100px;object-fit:cover;">
   </div>
   <div class="menu">
    <li><a href=""></a>Phim</a>
        <ul class="sub-menu">
            <li><a href="">Hành động</a>
                
            <ul>
                <li><a href="">Tận thế</a></li>
                <li><a href="">Phiêu lưu</a></li>
                <li><a href="">Viễn tưởng</a></li>
                </ul>
            </li>
            <li><a href="">Kinh dị</a>
                <ul>
                    <li><a href="">Tâm lý</a></li>
                    <li><a href="">Huyền bí</a></li>
                    
                    </ul>
            </li>
            <li><a href="">Hoạt hình</a></li>
        </ul>
    </li>
    <li><a href="/mavenproject1/category">Phim hot</a></li>
    <li><a href=""></a>Thành Viên</a></li>
    <li><a href=""></a>Tuyển Dụng</a></li>
    
   </div>
   <div class="others">
    <li><input placeholder="Tìm kiếm" type="text"> <i class="fas fa-search"></i></li>
    <li> <a class="fa fa-paw" href="" ></a></li>
    <li> <a class="fa fa-user" href="" ></a></li>
    <li> <a class="fa fa-shopping-bag" href="" ></a></li>
   </div>
   </header>
   <section id="Slide">
    <div class="aspect-ratio-169">
        <img src="anh/1.jpg">
        <img src="anh/2.jpg">
        <img src="anh/3.jpg">
        <img src="anh/4.jpeg">
    </div>
    <div class="dot-container">
        <div class="dot active"></div>
        <div class="dot"></div>
        <div class="dot"></div>
        <div class="dot"></div>
        <div class="dot"></div>
    </div>


   </section>

    
</body>
<script>
    const header = document.querySelector("header")
window.addEventListener("sroll",function(){
    x = window.pageYOffset
    if(x>0){
        header.classList.add("sticky")
    }
    else {
        header.classList.remove("sticky")
    }
    }
)







    const imgPosition = document.querySelectorAll(".aspect-ratio-169 img")
    const imgContainer = document.querySelector('.aspect-ratio-169')
    const dotItem = document.querySelectorAll(".dot")
    let imgNuber = imgPosition.length
    let index = 0
// console.log(imgPosition)
imgPosition.forEach(function(image,index){
   image.style.left = index*100 + "%"
   dotItem[index].addEventListener("click",function(){
    slide (index)

   })
})
function imgSlide (){
    index++;
    console.log(index)
    if (index>=imgNuber) {index=0}
    // function slider(index)
    slider (index)
}
function slider (index){
    imgContainer.style.left = "-"+index*100+ "%"
    const dotActive = document.querySelector('.active')
    dotActive.classList.remove("active")
    dotItem[index].classList.add("active")
}
   setInterval(imgSlide,5000)

</script>
</html>
<style>
    *{
     margin:0;
     padding:0;
     box-sizing: border-box;
     font-family: Arial, Helvetica,sans-serif;
}
li {
     list-style: none;
}
a {
     text-decoration: none;
     color:#000;
}
header {
     display: flex;
     justify-content: space-between;
     padding: 12px 50px;
     height: 70px;
     align-items: center;
     position: fixed;
     top: 0;
     left: 0;
     width: 100%;
     z-index: 1;
     background: rgba(255, 255, 255, 0.3);
    

}
header.sticky {
     background: rgba(255, 255, 255, 1);
}
header:hover {
     background: rgba(255, 255, 255, 1);
}
.lg{
     flex: 1;
}
.menu{
     flex: 3;
     display: flex;
}
.menu > li {
     padding: 0 12px;
     position: relative;
}
.menu > li:hover .sub-menu{
     visibility: visible;
     top: 45px;
}
.sub-menu {
     position: absolute;
     width: 150px;
     border: 1px solid #ccc;
     padding: 10px 0 10px 20px;
     visibility: hidden;
     top: 60px;
     transition: 0.3s;
     z-index: 1;
     background: #fff;
}
.sub-menu ul {
     padding-left: 20px;
}
.sub-menu ul a {
     font-weight: normal!;
     font-size: 12px!important;
}

.others {
     flex: 1;
     display: flex;
}
.others > li {
     padding: 0 12px;
}
.others > li:first-child {
     position: relative;
}
.others > li:first-child input {
     width: 100%;
     border:none;
     border-bottom: 1px solid #333;
     background: transparent;
     outline: none;
}
.other > li:first-child i {
     position: absolute;
     right: 10px;
}
#Slide {
     border-bottom: 2px solid #000 ;
     overflow:hidden;
     position: relative;
}
.aspect-ratio-169 {
     display: block;
     position: relative;
     padding-top: 56.25%;
     transition: 0.3s;
   }
   
   .aspect-ratio-169 img {
     display: block;
     position: absolute;
     width: 100%;
     height: 100%;
     top: 0;
     left: 0;
     object-fit: cover;  
   }
.dot-container {
     position: absolute;
     bottom: 50px;
     left: 50%;
     transform: translateX(-50%);
     height: 30px;
     /* width: 100%; */
     display: flex;
     align-items: center;
     text-align:center;
     justify-content: center;
} 
.dot {
     height: 16px;
     width: 16px;
     background-color: #ccc;
     border-radius: 50%;
     margin-right: 12px;
     cursor: pointer;
}
.dot.active {
     background-color: #333;
}
   

</style>
