<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link href="/resources/css/market/remakeGoods.css" rel="stylesheet" type="text/css">
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Fonts -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
    <title>Goods</title>
    <script>
        let imgsName = [];
        let realName = [];
        <c:forEach var="item" items="${oneGoods.images}">
        imgsName.push("${item.savedFileName}");
        realName.push("${item.originFileName}");
        </c:forEach>
        let oneGoodsId = '${oneGoods.id}'
        let oneGoodsCate = '${oneGoods.categories.id}';
        let oneGoodsTitle = '${oneGoods.title}';
        let oneGoodsPrice = '${oneGoods.price}';
        let oneGoodsContent = '${oneGoods.content}';
        let oneGoodsNego = '${oneGoods.negoState}';
    </script>
</head>
<body>
<%@ include file="../fragments/header.jsp" %>
<form class="page-section" id="contact" onsubmit="return registerAction()">
    <div class="container">
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">REMAKE GOODS</h2>
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
            <div class="divider-custom-line"></div>
        </div>
        <!-- insert file upload -->
        <div id="all_file_container">
            <hr>
            <div class="divider-custom">
                <div class="divider-custom-line"></div>
                <h2>FILES</h2>
                <div class="divider-custom-line"></div>
            </div>
            <div class="inner_file_container">
                <div class="upload-box">
                    <div id="drop-file" class="drag-file">
                        <p class="message">????????? ????????? ????????? ??? ????????? <br/> ????????? 4????????? ?????? ??? ????????????!</p>
                    </div>
                    <button class="inserted_btn" id="btn-upload">?????? ??????</button>
                    <input class="file" id="chooseFile" type="file" name="file" multiple="multiple" accept="image/*">
                </div>
                <div id="files" class="files">

                </div>
            </div>
        </div>

        <!-- end file upload -->
        <div class="cates_area" id="cates_area">
            <div class="divider-custom">
                <div class="divider-custom-line"></div>
                <h2 class="cate_title">CATEGORIES</h2>
                <div class="divider-custom-line"></div>
            </div>
            <input class="cate_btn" type="button" id="100" value="?????????">
            <input class="cate_btn" type="button" id="200" value="???????????????">
            <input class="cate_btn" type="button" id="300" value="????????????">
            <input class="cate_btn" type="button" id="400" value="??????,????????????">
            <input class="cate_btn" type="button" id="500" value="?????????">
            <input class="cate_btn" type="button" id="600" value="??????,????????????">
            <input class="cate_btn" type="button" id="700" value="????????????">
            <input class="cate_btn" type="button" id="800" value="?????????,??????">
            <input class="cate_btn" type="button" id="900" value="????????????">
            <input class="cate_btn" type="button" id="1000" value="????????????">
            <input class="cate_btn" type="button" id="1100" value="????????????,??????">
            <input class="cate_btn" type="button" id="1200" value="??????,??????">
            <input class="cate_btn" type="button" id="1300" value="??????,??????">
            <input class="cate_btn" type="button" id="1400" value="??????????????????">
            <input class="cate_btn" type="button" id="1500" value="??????/??????/??????">
            <input class="cate_btn" type="button" id="1600" value="??????">
            <input class="cate_btn" type="button" id="1700" value="?????? ????????????">
            <input type="hidden" id="hidden_data"/>
        </div>


        <div class="row justify-content-center">
            <div class="col-lg-8 col-xl-7">
                <div id="contactForm">
                    <div class="form-floating mb-3">
                        <input class="form-control" name="title" id="title" type="text"/>
                        <label for="title">??????</label>
                    </div>

                    <div class="form-floating mb-3">
                        <input class="form-control" name="price" id="price" type="text"/>
                        <label for="price">??????</label>
                    </div>

                    <div class="form-floating mb-3">
                        <input class="form-control" name="detail" id="detail" type="text" style="height: 10rem"/>
                        <label for="detail">????????????</label>
                    </div>

                    <input class="nego_btn" type="button" id="nego"/>
                    <input type="hidden" id="nego_state"/>
                    <button id="submit_button" type="submit">?????? ????????????</button>
                </div>
            </div>
        </div>
    </div>
</form>
<%@ include file="../fragments/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/market/remakeGoods.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
