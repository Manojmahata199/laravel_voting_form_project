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
   .footer-text img {
    	position: absolute;
    	right: 15px;
    	bottom: -40px;
    	max-height: 90px;
    	z-index: 1;
    }
    @media (max-width:1550px) {
    .footer-text img {
    	bottom: -35px;
    	max-height: 80px;
    }
    .slick-slide img {
        height:60px;
    }
    }
    @media (max-width:1199px) {
    .footer-text img {
    	bottom: -30px;
    	max-height: 70px;
    }
    .slick-slide img {
        height:50px;
    }
    }
    @media (max-width:991px) {
    .footer-text img {
    	bottom: -25x;
    	max-height: 60px;
    }
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
    .footer-text img {
    	bottom: -30px;
    	max-height: 50px;
     }
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
            <div class="row">
                <div class="col-md-12">
                    <div class="box-one">
                        <h2>Your vote is precious. Each vote counts.</h2>
                        <p>We would request you to go through each nominee profile carefully before your final selection.</p>
                    </div>
                </div>
                <div class="col-md-12">
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
                <div class="col-md-12">
                    <div class="box-two">
                        <h3>Please Note:</h3>
                        <ul>
                            <li>
                                You can vote with an Indian mobile number only. 
                            </li>
                            <li>                            
                                You can vote only once from the same mobile number.
                            </li>
                            <li>
                                You need to vote for atleast one category.
                            </li>
                            <li>
                                You can vote for only one nominee in each category.
                            </li>
                        </ul>
                    <!--<div class="box-one">-->
                    <!--    <h2>Voting is now closed for Aparajita 2023 </h2>-->
                    <!--</div>-->
                        <p>
                            Please provide a mobile number to receive the OTP to register your vote.
                        </p>
                        <form method="POST" action="{{ url('usersignup') }}">	                                  
                            @csrf
                            <div class="row">
                                <div class="col-lg-4 col-md-5 col-sm-6">
                                    <div class="input-box">
                                        <label>MOBILE NUMBER:</label>
                                        <input name="mobile" type="number"   class="form-control" id="exampleInputMobile" required/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-5 col-sm-6 text-right">
                                    <button type="submit" class="btn btn-danger center-block">Sign Up</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-text">
            <div class="container">
                <img src="css/images/footer.png" class="img-fluid" />
            </div>
        </div>
    </section>
    
    <footer style="background-color: #f2f0f0;">
        <div class="container-logo">
            <!--container-->
            <div class="row">
                <div class="col-md-12">
                    <div class="footer-list">
                        <!--<ul>-->
                            <!--<li>-->
                            <!--    <p>Platinum Sponsors:</p>-->
                            <!--</li>-->
                            <!--<li>-->
                            <!--    <a href="#">-->
                                     <!--<img src="css/images/footer-01.jpg"  style="height:100%;width: 100%;"  alt="">-->
                            <!--    </a>-->
                            <!--</li>-->
                            <!--<li>-->
                            <!--    <a href="#">-->
                            <!--        <img src="css/images/kutchina.png" class="img-fluid" alt="">-->
                            <!--    </a>-->
                            <!--</li>-->
                            <!--<li>-->
                            <!--    <a href="#">-->
                            <!--        <img src="css/images/sawansukha.png" class="img-fluid" alt="">-->
                            <!--    </a>-->
                            <!--</li>-->
                        <!--</ul>-->
                        
                        
                        
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
<!-- jQuery library --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="{{ asset('js/function.js') }}"></script>



<!--logo slider js-->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
</body>
</html>
