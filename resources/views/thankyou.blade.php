<!DOCTYPE HTML>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="csrf-token" content="{{ csrf_token() }}" />
<title>Aparajita Voting 2024</title>
<link rel = "icon" href ="https://aparajitavoting.sanmarg.in/storage/participants/aparajita_icon.png" type = "image/x-icon">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Stylesheet --->
<link rel="stylesheet" href="{{ asset('css/fonts.css') }}">
<link rel="stylesheet" href="{{ asset('css/style.css') }}">

<!--link for logo slider-->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


<style rel="stylesheet">

  /*this is for logo slider*/
/* Slider */
/*slider css*/

.slick-slide {
    margin: 0px 20px;
}

.slick-slide img {
    width: 100%;
    height:60px;
    margin-top:20px;
    margin-bottom:20px;
}
.container-logo{
    max-width:1600px;
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}

.slick-slider
{
    position: relative;
    display: block;
    box-sizing: border-box;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
            user-select: none;
    -webkit-touch-callout: none;
    -khtml-user-select: none;
    -ms-touch-action: pan-y;
        touch-action: pan-y;
    -webkit-tap-highlight-color: transparent;
}

.slick-list
{
    position: relative;
    display: block;
    overflow: hidden;
    margin: 0;
    padding: 0;
}
.slick-list:focus
{
    outline: none;
}
.slick-list.dragging
{
    cursor: pointer;
    cursor: hand;
}

.slick-slider .slick-track,
.slick-slider .slick-list
{
    -webkit-transform: translate3d(0, 0, 0);
       -moz-transform: translate3d(0, 0, 0);
        -ms-transform: translate3d(0, 0, 0);
         -o-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
}

.slick-track
{
    position: relative;
    top: 0;
    left: 0;
    display: block;
}
.slick-track:before,
.slick-track:after
{
    display: table;
    content: '';
}
.slick-track:after
{
    clear: both;
}
.slick-loading .slick-track
{
    visibility: hidden;
}

.slick-slide
{
    display: none;
    float: left;
    height: 100%;
    min-height: 1px;
}
[dir='rtl'] .slick-slide
{
    float: right;
}
.slick-slide img
{
    display: block;
}
.slick-slide.slick-loading img
{
    display: none;
}
.slick-slide.dragging img
{
    pointer-events: none;
}
.slick-initialized .slick-slide
{
    display: block;
}
.slick-loading .slick-slide
{
    visibility: hidden;
}
.slick-vertical .slick-slide
{
    display: block;
    height: auto;
    border: 1px solid transparent;
}
.slick-arrow.slick-hidden {
    display: none;
}


/*slider css*/

    @media (max-width:1550px) {
    
    .slick-slide img {
        height:60px;
    }
    }
    @media (max-width:1199px) {
    
    .slick-slide img {
        height:50px;
    }
    }
    @media (max-width:991px) {
    
    .slick-slide img {
        height:70px;
    }
    }
    @media (max-width:768px) {
        .slick-slide img {
            height:60px;
        }
    }
    @media (max-width:600px) {
   
     .slick-slide img {
         height:50px;
     }
    }
    @media (max-width:400px) {
        .slick-slide img {
         height:40px;
     }
    }

</style>
</head>
<body>
    
    <section class="hero-section">
        <div class="container-fluid">
            <div class="row" style="background-color: #e7e6da;">
                <div class="col-md-12 banner-large">
                    <img src="css/images/banner.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </section>
    <section class="section-one">
        <div class="container">
            <div class="row flex-row-reverse">
                <div class="col-md-4">
                    <div class="box-text">
                        <img src="css/images/Final-Voting-Page_edits-ai_19.png" class="img-fluid" alt="">
                        <div class="text">
                            <!--<div class="items">-->
                            <!--    Another <strong>year,</strong><br /> -->
                            <!--    another <strong>horizon,</strong><br />-->
                            <!--    another <strong>celebration</strong><br />-->
                            <!--    of <strong>womanhood</strong>.-->
                            <!--</div>-->
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-11">
                            <div class="box-three">
                                <center><h1 class="heading heading-correct-pronounciation" style="color:black; font-weight:600">
                                    THANK YOU FOR VOTING
                                       </h1></center>

                                       <br><br>
       <center> <a href="https://aparajitavoting.sanmarg.in/userlogout"><button type="submit" class="btn btn-danger btn-lg" >Back to Home Page</button></a><center>
                            </div>
                        </div>
                    </div>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    @if(Session::has('message'))
                        <p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
                    @endif

                </div>
            </div>
           
        </div>
    </section>
    
    <footer style="background-color: #f2f0f0;">
        <div class="container-logo">
            <div class="row">
                <div class="col-md-12">
                    <div class="footer-list">
                        <!--this is new crousal slider-->
                        
                        
                        
                        <div class="container-logo">
                            <!---->
                           <section class="customer-logos slider">
                              <div class="slide"><img src="css/images/footer-logo/aaaDHOOT_Logo.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/bbBMD.jpg"></div>
                              <div class="slide"><img src="css/images/footer-logo/ccBengal_Energy.jpg"></div>
                              <div class="slide"><img src="css/images/footer-logo/dddKutchina.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/eeMINU_MOR.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/ffGolden_Goenka.jpg"></div>
                              <div class="slide"><img src="css/images/footer-logo/gggPackman.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/hhhmb.jpeg"></div>
                              <div class="slide"><img src="css/images/footer-logo/iiiENY.jpg"></div>
                              
                              <div class="slide"><img src="css/images/footer-logo/jjjSanmarg_Foundation.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/kkkJW_Marriott.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/lllaircom_logo.jpg"></div>
                              <div class="slide"><img src="css/images/footer-logo/mmmSanmarg.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/nnnfm_radio.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/oooflutter_wave.jpeg"></div>
                              <div class="slide"><img src="css/images/footer-logo/pppcreative_groups.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/qqqSHE.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/rrrgokul_vatika.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/sssSan Logo.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/tttSaviles.png"></div>
                              <div class="slide"><img src="css/images/footer-logo/uuuPrintfactory.png"></div>
                              
                           </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
<!-- Modal -->
<div class="modal fade" id="popupstart" tabindex="-1" role="dialog" aria-labelledby="popupstart" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content  popup-start">
        <div class="modal-body">
            <div class="iner">
                <span class="cross fa fa-times" data-dismiss="modal"></span>
                <div class="row">
                    <div class="col-md-12">
                        <h2>BUSINESS - <span>YOU SHINE</span></h2>
                        <h3>
                            UPASANA RUNGTA <br /><span>Visual Designer</span>
                        </h3>
                        <p>
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud 
                        </p>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </div>
  </div>


<!-- footer Finish ---->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="{{ asset('js/function.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
    <script src="{{ asset('lib/steps/jquery-steps.js') }}"></script>
    <script src="{{ asset('js/jquery.flexslider.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
    
    
<!--logo slider js-->
<!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>-->
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
<!------ Include the above in your HEAD tag ---------->

<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>

<script type="text/javascript">
    $(document).ready(function(){
        $('.customer-logos').slick({
            slidesToShow: 10,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 1500,
            arrows: false,
            dots: false,
            pauseOnHover: false,
            responsive: [{
                breakpoint: 991,
                settings: {
                    slidesToShow: 5
                }
            }, {
                breakpoint: 520,
                settings: {
                    slidesToShow: 3
                }
            }]
        });
    });
</script>

<!--logo slider end-->




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