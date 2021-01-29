<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MX
  Date: 1/22/2021
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Image Galery</title>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>
<style>
    <%@include file="/resources/styles/background.css" %>
</style>
<body>

<div class="container-fluid">
<%--    <div class="px-lg-5">--%>

<%--        <!-- For demo purpose -->--%>
<%--        <div class="row py-5">--%>
<%--            <div class="col-lg-12 mx-auto">--%>
<%--                <div class="text-white p-5 shadow-sm rounded banner">--%>
<%--                    <h1 class="display-4">Bootstrap 4 photo gallery</h1>--%>
<%--                    <p class="lead">Bootstrap photogallery snippet.</p>--%>
<%--                    <p class="lead">Snippet by <a href="https://bootstrapious.com/snippets" class="text-reset">--%>
<%--                        Bootstrapious</a>, Images by <a href="https://unsplash.com" class="text-reset">Unsplash</a>.--%>
<%--                    </p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!-- End -->--%>

    
<%--    <c:out value="${response}"></c:out>--%>
<%--    <c:forEach var="r" items="${response}">--%>
<%--        <c:out value="${r.recipe_name}"/>--%>
<%--    </c:forEach>--%>

<%--    <c:out value="${response.name}"></c:out>--%>

    <div class="row">
            <c:forEach items="${response}" var="recipe">
                <div class="col-xl-3 col-lg-4 col-md-4 mt-4">
                    <div class="bg-white rounded shadow-sm"><img src="${recipe.image_url}" alt="" class="img-fluid card-img-top">
                        <div class="p-4">
                            <h5> <a href="#" class="text-dark">${recipe.recipe_name}</a></h5>
                            <p class="small text-muted mb-0">${recipe.description}</p>
                            <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold"> <i class="bi bi-clipboard-data"> Einfach</i></span></p>
                                <div class="badge badge-primary px-3 rounded-pill font-weight-normal">
                                    <i class="bi bi-alarm"></i>
                                        ${recipe.time}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>


            <!-- Gallery item -->
<%--            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">--%>
<%--                <div class="bg-white rounded shadow-sm"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556294927/cody-davis-253928-unsplash_vfcdcl.jpg" alt="" class="img-fluid card-img-top">--%>
<%--                    <div class="p-4">--%>
<%--                        <h5> <a href="#" class="text-dark">Blorange</a></h5>--%>
<%--                        <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
<%--                        <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">--%>
<%--                            <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">PNG</span></p>--%>
<%--                            <div class="badge badge-primary px-3 rounded-pill font-weight-normal">Trend</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
            <!-- End -->

<%--            <!-- Gallery item -->--%>
<%--            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">--%>
<%--                <div class="bg-white rounded shadow-sm"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556294928/nicole-honeywill-546848-unsplash_ymprvp.jpg" alt="" class="img-fluid card-img-top">--%>
<%--                    <div class="p-4">--%>
<%--                        <h5> <a href="#" class="text-dark">And She Realized</a></h5>--%>
<%--                        <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
<%--                        <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">--%>
<%--                            <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPG</span></p>--%>
<%--                            <div class="badge badge-warning px-3 rounded-pill font-weight-normal text-white">Featured</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End -->--%>

<%--            <!-- Gallery item -->--%>
<%--            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">--%>
<%--                <div class="bg-white rounded shadow-sm"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556294927/dose-juice-1184444-unsplash_bmbutn.jpg" alt="" class="img-fluid card-img-top">--%>
<%--                    <div class="p-4">--%>
<%--                        <h5> <a href="#" class="text-dark">DOSE Juice</a></h5>--%>
<%--                        <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
<%--                        <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">--%>
<%--                            <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPEG</span></p>--%>
<%--                            <div class="badge badge-success px-3 rounded-pill font-weight-normal">Hot</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End -->--%>

<%--            <!-- Gallery item -->--%>
<%--            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">--%>
<%--                <div class="bg-white rounded shadow-sm"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556294926/cody-davis-253925-unsplash_hsetv7.jpg" alt="" class="img-fluid card-img-top">--%>
<%--                    <div class="p-4">--%>
<%--                        <h5> <a href="#" class="text-dark">Pineapple</a></h5>--%>
<%--                        <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
<%--                        <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">--%>
<%--                            <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">PNG</span></p>--%>
<%--                            <div class="badge badge-primary px-3 rounded-pill font-weight-normal">New</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End -->--%>

<%--            <!-- Gallery item -->--%>
<%--            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">--%>
<%--                <div class="bg-white rounded shadow-sm"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556294928/tim-foster-734470-unsplash_xqde00.jpg" alt="" class="img-fluid card-img-top">--%>
<%--                    <div class="p-4">--%>
<%--                        <h5> <a href="#" class="text-dark">Yellow banana</a></h5>--%>
<%--                        <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
<%--                        <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">--%>
<%--                            <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPG</span></p>--%>
<%--                            <div class="badge badge-warning px-3 rounded-pill font-weight-normal text-white">Featured</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End -->--%>

<%--            <!-- Gallery item -->--%>
<%--            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">--%>
<%--                <div class="bg-white rounded shadow-sm"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556294927/mike-meyers-737494-unsplash_yd11yq.jpg" alt="" class="img-fluid card-img-top">--%>
<%--                    <div class="p-4">--%>
<%--                        <h5> <a href="#" class="text-dark">Teal Gameboy</a></h5>--%>
<%--                        <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
<%--                        <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">--%>
<%--                            <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPEG</span></p>--%>
<%--                            <div class="badge badge-info px-3 rounded-pill font-weight-normal">Hot</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End -->--%>

<%--            <!-- Gallery item -->--%>
<%--            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">--%>
<%--                <div class="bg-white rounded shadow-sm"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556294930/ronald-cuyan-434484-unsplash_iktjid.jpg" alt="" class="img-fluid card-img-top">--%>
<%--                    <div class="p-4">--%>
<%--                        <h5> <a href="#" class="text-dark">Color in Guatemala.</a></h5>--%>
<%--                        <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
<%--                        <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">--%>
<%--                            <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">PNG</span></p>--%>
<%--                            <div class="badge badge-warning px-3 rounded-pill font-weight-normal text-white">Featured</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End -->--%>

<%--            <!-- Gallery item -->--%>
<%--            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">--%>
<%--                <div class="bg-white rounded shadow-sm"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556294929/matthew-hamilton-351641-unsplash_zmvozs.jpg" alt="" class="img-fluid card-img-top">--%>
<%--                    <div class="p-4">--%>
<%--                        <h5> <a href="#" class="text-dark">Red paint cup</a></h5>--%>
<%--                        <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
<%--                        <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">--%>
<%--                            <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPG</span></p>--%>
<%--                            <div class="badge badge-danger px-3 rounded-pill font-weight-normal">New</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End -->--%>

<%--            <!-- Gallery item -->--%>
<%--            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">--%>
<%--                <div class="bg-white rounded shadow-sm"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556294927/cody-davis-253928-unsplash_vfcdcl.jpg" alt="" class="img-fluid card-img-top">--%>
<%--                    <div class="p-4">--%>
<%--                        <h5> <a href="#" class="text-dark">Lorem ipsum dolor</a></h5>--%>
<%--                        <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
<%--                        <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">--%>
<%--                            <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">PNG</span></p>--%>
<%--                            <div class="badge badge-primary px-3 rounded-pill font-weight-normal">Trend</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End -->--%>

<%--            <!-- Gallery item -->--%>
<%--            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">--%>
<%--                <div class="bg-white rounded shadow-sm"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556294928/nicole-honeywill-546848-unsplash_ymprvp.jpg" alt="" class="img-fluid card-img-top">--%>
<%--                    <div class="p-4">--%>
<%--                        <h5> <a href="#" class="text-dark">Lorem ipsum dolor</a></h5>--%>
<%--                        <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
<%--                        <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">--%>
<%--                            <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPG</span></p>--%>
<%--                            <div class="badge badge-warning px-3 rounded-pill font-weight-normal text-white">Featured</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End -->--%>

<%--            <!-- Gallery item -->--%>
<%--            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">--%>
<%--                <div class="bg-white rounded shadow-sm"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556294927/dose-juice-1184444-unsplash_bmbutn.jpg" alt="" class="img-fluid card-img-top">--%>
<%--                    <div class="p-4">--%>
<%--                        <h5> <a href="#" class="text-dark">Lorem ipsum dolor</a></h5>--%>
<%--                        <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
<%--                        <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">--%>
<%--                            <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPEG</span></p>--%>
<%--                            <div class="badge badge-success px-3 rounded-pill font-weight-normal">Hot</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End -->--%>


<%--        <div class="py-5 text-right"><a href="#" class="btn btn-dark px-5 py-3 text-uppercase">Show me more</a></div>--%>
<%--    </div>--%>


</body>
</html>
