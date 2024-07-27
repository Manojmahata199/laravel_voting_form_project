<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>Aparajita Voting 2024</title>
    <link rel = "icon" href ="https://aparajitavoting.sanmarg.in/storage/participants/aparajita_icon.png" type = "image/x-icon">
    <link rel="stylesheet" href="lib/steps/jquery-steps.css">
    <!-- Demo stylesheet -->
    <link rel="stylesheet" href="css/style.css">

    <link rel='stylesheet' id='sb_instagram_styles-css' href="css/sbi-styles.minbf9e.css?ver=2.9.3.1" type='text/css' media='all' />
    <link rel='stylesheet' id='wp-block-library-css' href="css/style.minf658.css?ver=5.8.1" type='text/css' media='all' />
    <link rel='stylesheet' id='contact-form-7-css' href="css/styles7661.css?ver=5.4.2" type='text/css' media='all' />
    <link rel='stylesheet' id='sbtt-style-css' href="css/sbtt-frontf658.css?ver=5.8.1" type='text/css' media='all' />
    <link rel='stylesheet' id='tps-super-font-awesome-css-css' href="css/font-awesomef658.css?ver=5.8.1" type='text/css' media='all' />
    <link rel='stylesheet' id='tps-super-owl.carousel-css-css' href="css/owl.carouself658.css?ver=5.8.1" type='text/css' media='all' />
    <link rel='stylesheet' id='tps-super-style-css-css' href="css/theme-stylef658.css?ver=5.8.1" type='text/css' media='all' />
    <link rel='stylesheet' id='style-css' href="css/stylee585.css?ver=16.0.1" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-base-css' href="css/basee585.css?ver=16.0.1" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-layout-css' href="css/layoute585.css?ver=16.0.1" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-shortcodes-css' href="css/shortcodese585.css?ver=16.0.1" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-animations-css' href="css/animations.mine585.css?ver=16.0.1" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-jquery-ui-css' href="css/jquery.ui.alle585.css?ver=16.0.1" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-responsive-css' href="css/responsivee585.css?ver=16.0.1" type='text/css' media='all' />
	<link rel='stylesheet'  href="css/sponcerslist.css" type='text/css'/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
    

    <style>
		h1,h2,h3,h4,h5,h6,em,p,b,a,span,body,strong,ul,li{
		font-family: "Fjalla One", Arial, Tahoma, sans-serif!important;
		}
		
        .column.third-fifth.top-a{
            margin-top:-32%;
        }
        .top-bar-color{
            background: #ea4d55!important;
        }

        .up-heading{
            color: #ec4d54; 
            font-family:Myriad Pro; 
        }

        .column.one.footer {
            margin: 0;
            width: 100%;
        }

        @media only screen and (min-width:988px){
        .hindi{
            font-size: 85px; 
        } 
        .up-heading{
            font-size:48px;
        }
        .proceed-mobile{
            display: none;
        }
       }
       
       @media only screen and (max-width:987px){
        .hindi{
            font-size: 50px; 
        } 
        img.ap-woman {
            max-width: 170%;
            margin-bottom: 25%;
        }
        .up-heading{
            font-size:38px;
        }
        #Top_bar{
            background: #ec4d54!important;
        }
        .proceed-main{
            display: none;
        }
       }
    </style>
    <style type="text/css">
        .rs-team .team-item {
          position: relative;
          overflow: hidden;
          margin-bottom: 30px;
        }
        .rs-team .team-item:before {
          content: '';
          position: absolute;
          left: 0;
          top: 0;
          height: 100%;
          width: 100%;
          background-color: rgba(0, 0, 0, 0.3);
          z-index: 1;
        }
        .rs-team .team-item .team-img {
          position: relative;
        }
        .rs-team .team-item .team-img .normal-text {
          position: absolute;
          text-align: center;
          height: 80px;
          bottom: -1px;
          padding: 17px 0;
          width: 100%;
          left: 50%;
          transform: translateX(-50%);
          -webkit-transform: translateX(-50%);
          background-color: rgba(217, 8, 69, 0.7);
          transition: .3s ease all;
          z-index: 10;
        }
        .rs-team .team-item .team-img .normal-text .team-name {
          color: #fff;
          font-size: 20px;
          font-weight: 500;
          margin: 0;
          display: block;
          text-transform: uppercase;
          padding: 0 0 3px;
        }
        .rs-team .team-item .team-img .normal-text .subtitle {
          color: #fff;
          margin: 0;
          display: block;
        }
        .rs-team .team-item .team-img img {
          width: 100%;
        }
        .rs-team .team-item .team-content {
          position: absolute;
          width: 100%;
          height: 100%;
          top: 10%;
          left: 0;
          text-align: center;
          z-index: 1;
          padding: 30px;
          opacity: 0;
          -webkit-transition: 0.3s all ease-out;
          transition: 0.3s all ease-out;
          visibility: hidden;
        }
        .rs-team .team-item .team-content:before {
          content: '';
          position: absolute;
          left: 0;
          top: 0;
          height: 100%;
          width: 100%;
          background: rgba(217, 8, 69, 0.8);
          z-index: -1;
        }
        .rs-team .team-item .team-name {
          margin-bottom: 2px;
        }
        .rs-team .team-item .team-name a {
          margin-bottom: 6px;
          font-size: 20px;
          color: #fff;
          text-transform: uppercase;
          position: relative;
          z-index: 1;
        }
        .rs-team .team-item .team-name a:hover {
          color: #fff;
        }
        .rs-team .team-item .postion {
          position: relative;
          z-index: 1;
          color: #fff;
        }
        .rs-team .team-item .share-icons {
          position: relative;
          max-width: 255px;
          margin: 0 auto 15px;
          opacity: 0;
          visibility: hidden;
        }
        .rs-team .team-item .share-icons .border {
          content: '';
          position: absolute;
          background: #fff;
          z-index: 1;
          opacity: 1;
        }
        .rs-team .team-item .share-icons .border {
          width: 25px;
          height: 25px;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
          -webkit-transform: translate(-50%, -50%);
          border-radius: 100px;
          z-index: 11;
        }
        .rs-team .team-item .team-social {
          position: relative;
        }
        .rs-team .team-item .team-social.icons-1:after,
        .rs-team .team-item .team-social.icons-1:before {
          content: '';
          position: absolute;
          background: #fff;
          z-index: 1;
          opacity: 1;
        }
        .rs-team .team-item .team-social.icons-1:after {
          top: 0%;
          left: 50%;
          height: 95px;
          width: 1px;
        }
        .rs-team .team-item .team-social.icons-1:before {
          bottom: 0;
          left: 10px;
          height: 1px;
          width: 100px;
        }
        .rs-team .team-item .team-social.icons-2:after,
        .rs-team .team-item .team-social.icons-2:before {
          content: '';
          position: absolute;
          background: #fff;
          z-index: 1;
          opacity: 1;
        }
        .rs-team .team-item .team-social.icons-2:after {
          bottom: 0;
          left: 50%;
          height: 95px;
          width: 1px;
        }
        .rs-team .team-item .team-social.icons-2:before {
          top: 0;
          right: 10px;
          height: 1px;
          width: 100px;
        }
        .rs-team .team-item .team-social li {
          display: inline-block;
          position: relative;
          transition: all 0.3s ease-in-out 0s;
          padding: 34px;
        }
        .rs-team .team-item .team-social li a {
          display: block;
          color: #fff;
          width: 50px;
          height: 50px;
          line-height: 50px;
          border: 1px solid #fff;
          text-align: center;
          border-radius: 100px;
          font-size: 20px;
        }
        .rs-team .team-item .team-social li a:hover {
          background: #fff;
          border-color: #fff;
          color: #d90845;
        }
        .rs-team .team-item:hover .team-content {
          top: 0;
        }
        .rs-team .team-item:hover .share-icons,
        .rs-team .team-item:hover .team-content,
        .rs-team .team-item:hover .team-social {
          opacity: 1;
          visibility: visible;
        }
        .rs-team .team-item:hover .normal-text {
          opacity: 0;
          visibility: hidden;
        }
        .rs-team.fullwidth-team .col-lg-3 {
          padding: 0;
        }
        .rs-team.fullwidth-team .col-lg-3 .team-item {
          margin-bottom: 0;
        }
        .rs-team.fullwidth-team .col-lg-3 .team-item .team-img .normal-text {
          text-align: left;
          background: transparent;
          padding-left: 15px;
        }
        .rs-team.rs-team2 .normal-text {
          clip-path: polygon(100% 100%, 0% 100%, 50% -95%);
        }
        .rs-team#rs-team3 .share-icons {
          max-width: 230px;
        }
        .rs-team#rs-team3.bg6,
        .rs-team#rs-team3.bg4 {
          position: relative;
        }
        .rs-team#rs-team3.bg6:after,
        .rs-team#rs-team3.bg4:after {
          content: "";
          background-position: top center;
          height: 460px;
          width: 100%;
          position: absolute;
          top: 0;
          z-index: 0;
        }
        .rs-team#rs-team3.bg4:after {
          background-image: url(images/bg/bg1.jpg);
        }
        .rs-team#rs-team3.bg6:after {
          background-image: url(images/bg/bg6.jpg);
        }
        .rs-team#rs-team3 .container-fullwidth {
          position: relative;
          z-index: 1;
        }
        .rs-team#rs-team3 .team-item {
          margin-bottom: 30px;
        }
        .rs-team#rs-team3 .team-item .team-img .normal-text {
          height: 205px;
          bottom: -23%;
          padding: 30px 0;
          width: 86%;
          border-radius: 50%;
          clip-path: none;
        }
        .rs-team#rs-team3 .team-item .team-social li {
          padding: 20px;
        }
        .rs-team#rs-team3 .team-item .team-social.icons-1:before,
        .rs-team#rs-team3 .team-item .team-social.icons-2:before {
          width: 80px;
        }
        .rs-team#rs-team3 .team-item .team-social.icons-1:after,
        .rs-team#rs-team3 .team-item .team-social.icons-2:after {
          height: 70px;
        }
        .home5 .rs-team .team-item .team-img img {
          border-radius: 5px;
        }
        .pagination {
          margin-top: 25px;
        }
        .pagination .page-item {
          margin-right: 6px;
        }
        .pagination .page-item > * {
          width: 40px;
          height: 40px;
          line-height: 40px;
          text-align: center;
          font-size: 18px;
          padding: 0;
          font-weight: 600;
          color: #676767;
          border-radius: 3px;
          outline: none;
          border-color: #e8e8e8;
          background: #fff;
        }
        .pagination .page-item > *:hover,
        .pagination .page-item > *.active {
          color: #d90845;
          border-color: #d90845;
        }
        .pagination .page-item > *.dotted {
          line-height: 40px;
        }
        ul {
            list-style: outside none none;
            margin: 0;
            padding: 0;
        }
    </style>
</head>

<body>
    <div id="Top_bar" class="top-bar-color">
        <div class="container">
            <div class="column one">
                <div class="top_bar_center clearfix">
                    <!-- Logo -->
                    <div class="logo">
                        <center>
                        <a id="logo" href="https://aparajita.sanmarg.in" title="Aparajita"><img class="logo-main scale-with-grid" src="css/images/afl1.png" alt="aparajita" /><img class="logo-sticky scale-with-grid" src="css/images/afl1.png" alt="aparajita" /><img class="logo-mobile scale-with-grid" src="css/images/afl1.png" alt="aparajita" /><img class="logo-mobile-sticky scale-with-grid" src="css/images/afl1.png" alt="aparajita" /></a>
                        </center>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div id="rs-team" class="rs-team fullwidth-team pt-100 pb-70 mt-3">
        <div class="container">
            <div class="row">

                @foreach ($categories as $category)                
                <div class="col-lg-4 col-md-6">
                    <div class="team-item">
                        <div class="team-img">
                            <img src="/storage/{{ $category->cat_image }}" alt="team Image" width="210" height="auto">
                            <div class="normal-text">
                                <h4 class="team-name">{{ $category->name }}</h4>
                                <!-- <span class="subtitle">CEO &amp; Founder</span> -->
                            </div>
                        </div>
                        <div class="team-content">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <div class="share-icons">
                                        <div class="team-details">
                                            <h4 class="team-name">
                                                <a href="/vote-nominees">{{ $category->name }}</a>
                                            </h4>
                                            <span class="postion">Vote For</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        <!-- .container-fullwidth -->
    </div>

    <div class="column one footer">
        <div id="page">   
            <div id="reviews-slider" class="flexslider">
                <ul class="slides">
                    <li><h4 class="spons">Presented by</h4>
                        <img src="css/images/footer-logo/a1.png"
                        />
                    </li>
                    <li><h4 class="spons">Powered by</h4>
                        <img src="css/images/footer-logo/a2.png"
                        />
                    </li>
                    <li><h4 class="spons">Powered by</h4>
                        <img src="css/images/footer-logo/a3.png"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="css/images/footer-logo/a4.png"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="css/images/footer-logo/a5.png"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="css/images/footer-logo/a6.png"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="css/images/footer-logo/a-a.png"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="css/images/footer-logo/a-b.png"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="css/images/footer-logo/a7.png"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="css/images/footer-logo/a8.png"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="css/images/footer-logo/a9.png"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="css/images/footer-logo/a10.png"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="css/images/footer-logo/a-c.png"
                        />
                    </li>
                    <li><h4 class="spons">Official Tabulator</h4>
                        <img src="css/images/footer-logo/a11.png"
                        />
                    </li>
                    <li><h4 class="spons">CSR Partner</h4>
                        <img src="css/images/footer-logo/a12.png"
                        />
                    </li>
                    <li><h4 class="spons">Venue</h4>
                        <img src="css/images/footer-logo/a13.png"
                        />
                    </li>
                    <li><h4 class="spons">Travel Partner</h4>
                        <img src="css/images/footer-logo/a14.png"
                        />
                    </li>
                    <li><h4 class="spons">Photography</h4>
                        <img src="css/images/footer-logo/a15.png"
                        />
                    </li>
                    <li><h4 class="spons">National News</h4>
                        <img src="css/images/footer-logo/a-d.png"
                        />
                    </li>
                    <li><h4 class="spons">Regional News</h4>
                        <img src="css/images/footer-logo/a-e.png"
                        />
                    </li>
                    <li><h4 class="spons">Hindi Print</h4>
                        <img src="css/images/footer-logo/a-f.png"
                        />
                    </li>
                    <li><h4 class="spons">Gift</h4>
                        <img src="css/images/footer-logo/a16.png"
                        />
                    </li>
                    <li><h4 class="spons">PR</h4>
                        <img src="css/images/footer-logo/a17.png"
                        />
                    </li>
                    <li><h4 class="spons">English Print</h4>
                        <img src="css/images/footer-logo/a18.png"
                        />
                    </li>
                    <li><h4 class="spons">Radio</h4>
                        <img src="css/images/footer-logo/a19.png"
                        />
                    </li>
                    <li><h4 class="spons">Events</h4>
                        <img src="css/images/footer-logo/a20.png"
                        />
                    </li>
                    <li><h4 class="spons">OOH</h4>
                        <img src="css/images/footer-logo/a21.png"
                        />
                    </li>
                    <li><h4 class="spons">OOH</h4>
                        <img src="css/images/footer-logo/a22.png"
                        />
                    </li>
                    <li><h4 class="spons">Print</h4>
                        <img src="css/images/footer-logo/a23.png"
                        />
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!-- footer start ----> 

    <footer class="footerMain">
        <div class="footerMainmenu">
            <div class="container">
                <div class="row">
                    <div class="column two-third">
                        <p>Aparajita <br> Sanmarg Bhawan<br> 160B Chittaranjan Avenue,<br>2nd Floor, Kolkata - 700007</p>
                        <ul class="socialMedia">
                                <li>
                                    <a href="https://www.facebook.com/sanmargaparajita/">
                                        <i class="icon-facebook"></i>
                                    </a>
                                </li>
                                <li id="socialInsta">
                                    <a href="https://www.instagram.com/sanmarg.aparajita/">
                                        <i class="icon-instagram"></i>
                                    </a>
                                </li>
                                <li id="socialInsta">
                                    <a href="https://www.youtube.com/channel/UCrS9ZtvDTADA4Kxi5XlJ30Q">
                                        <i class="icon-youtube"></i>
                                    </a>
                                </li>
                            </ul><br>
                    </div>
                    <div class="column one-third ml-auto">
                        <div class="footer_menu">
                            <ul class="menu">
                                <li>
                                    <a href="tel:9830265500"><i class="icon-mobile"></i> 9830222232 </a>
                                </li>
                                <li>
                                    <a href="mailto:10yearsaparajita@sanmarg.in"><i class="icon-mail"></i><span class="__cf_email__" data-cfemail="a4c5d4c5d6c5cecdd0c5e4d7c5cac9c5d6c38acdca">10yearsaparajita@sanmarg.in</span></a>
                                </li>
                            </ul>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
    </footer>



<!-- footer Finish ---->

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
    <script src="lib/steps/jquery-steps.js"></script>
    <script src="js/jquery.flexslider.js"></script>

    <script>

        var postData;

        var frmNomineeType = $('#form-nominee-type');
        var frmNomineeTypeValidator = frmNomineeType.validate();

        var formPersonalDetails = $('#form-personal-details');
        var formPersonalDetailsValidator = formPersonalDetails.validate();

        var formProfetionalDetails = $('#form-profetional-details');
        var formProfetionalDetailsValidator = formProfetionalDetails.validate();

        var formtellUsMore = $('#tell-us-more');
        var formtellUsMoreValidator = formtellUsMore.validate();

        var formfileUploadSection = $('#file-upload-section');
        var formfileUploadSectionValidator = formfileUploadSection.validate();

        $('#demo').steps({
            onChange: function(currentIndex, newIndex, stepDirection) {
                // step1
                if (currentIndex === 0) {
                    if (stepDirection === 'forward') {
                        return frmNomineeType.valid();
                    }
                }
                // step2
                if (currentIndex === 1) {
                    if (stepDirection === 'forward') {
                        return formPersonalDetails.valid();
                    }
                }
                // step3
                if (currentIndex === 2) {
                    if (stepDirection === 'forward') {
                        return formProfetionalDetails.valid();
                    }
                }
                // step4
                if (currentIndex === 3) {
                    if (stepDirection === 'forward') {
                        return formtellUsMore.valid();
                    }
                }

                // step5
                if (currentIndex === 4) {
                    if (stepDirection === 'forward') {
                        return formfileUploadSection.valid();
                    }
                }
                return true;
            },
            onFinish: function() {
                submitForm();
            }
        });

        function submitForm() {

            var formData = new FormData(document.forms['file-upload-section']);
            var formAppend;
            formAppend = jQuery(document.forms['form-nominee-type']).serializeArray();
            for (var i = 0; i < formAppend.length; i++) formData.append(formAppend[i].name, formAppend[i].value);
            formAppend = jQuery(document.forms['form-personal-details']).serializeArray();
            for (var i = 0; i < formAppend.length; i++) formData.append(formAppend[i].name, formAppend[i].value);
            formAppend = jQuery(document.forms['form-profetional-details']).serializeArray();
            for (var i = 0; i < formAppend.length; i++) formData.append(formAppend[i].name, formAppend[i].value);
            formAppend = jQuery(document.forms['tell-us-more']).serializeArray();
            for (var i = 0; i < formAppend.length; i++) formData.append(formAppend[i].name, formAppend[i].value);

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                type: "POST",
                url: '{{ url('participate') }}',
                data: formData,
                contentType: false,
                processData: false,
                success: function(response) {
                    console.log(response);
                    Swal.fire('Success!', response.message, 'success');
                    setTimeout(function(){
                        window.location = "{{ url('/') }}";
                    }, 5000);
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    response = JSON.parse(xhr.responseText);
                    console.log(response);
                    var list = '';
                    $.each(response.errors, function (key, errors) {
                        for(error of errors) {
                            list += `<p>${error}</p>`;
                        }
                    });
                    Swal.fire({
                        title: response.message,
                        icon: 'error',
                        html: list,
                    })
                },
                dataType: 'json'
            });
        }
        
        $(document).ready(function(){
        // The slider being synced must be initialized first
          $('#main-slider').flexslider({
              animation: "slide",
          });

          $('#reviews-slider').flexslider({
              animation: "slide",
              itemWidth: 150,
              itemMargin: 1,
              minItems: 3,
              maxItems: 9,
              move: 2,
          });
      });
    </script>




</body>

</html>