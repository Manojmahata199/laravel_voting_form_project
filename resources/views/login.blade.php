<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>Aparajita Voting 2024</title>
    <link rel = "icon" href ="https://aparajitavoting.sanmarg.in/storage/participants/aparajita_icon.png" type = "image/x-icon">
    <link rel="stylesheet" href="{{ asset('lib/steps/jquery-steps.css') }}">
    <!-- Demo stylesheet -->
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">

    <link rel='stylesheet' id='sb_instagram_styles-css' href="{{ asset('css/sbi-styles.minbf9e.css?ver=2.9.3.1') }}') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='wp-block-library-css' href="{{ asset('css/style.minf658.css?ver=5.8.1') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='contact-form-7-css' href="{{ asset('css/styles7661.css?ver=5.4.2') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='sbtt-style-css' href="{{ asset('css/sbtt-frontf658.css?ver=5.8.1') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='tps-super-font-awesome-css-css' href="{{ asset('css/font-awesomef658.css?ver=5.8.1') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='tps-super-owl.carousel-css-css' href="{{ asset('css/owl.carouself658.css?ver=5.8.1') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='tps-super-style-css-css' href="{{ asset('css/theme-stylef658.css?ver=5.8.1') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='style-css' href="{{ asset('css/stylee585.css?ver=16.0.1') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-base-css' href="{{ asset('css/basee585.css?ver=16.0.1') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-layout-css' href="{{ asset('css/layoute585.css?ver=16.0.1') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-shortcodes-css' href="{{ asset('css/shortcodese585.css?ver=16.0.1') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-animations-css' href="{{ asset('css/animations.mine585.css?ver=16.0.1') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-jquery-ui-css' href="{{ asset('css/jquery.ui.alle585.css?ver=16.0.1') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='mfn-responsive-css' href="{{ asset('css/responsivee585.css?ver=16.0.1') }}" type='text/css' media='all' />
    <link rel='stylesheet'  href="{{ asset('css/sponcerslist.css') }}" type='text/css'/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css">
    <style type="text/css">
        body{
            background-color: #f7f7ff;
        }
        .btn-white {
            background-color: #fff;
            border-color: #e7eaf3;
        }
        .radius-15 {
            border-radius: 15px;
        }
        .contacts-social a {
            font-size: 16px;
            width: 36px;
            height: 36px;
            line-height: 36px;
            background: #ffffff;
            border: 1px solid #eeecec;
            text-align: center;
            border-radius: 50%;
            color: #2b2a2a;
        }
        .bg-info {
            background-color: #0dcaf0!important;
        }
        .bg-primary {
            background-color: #008cff!important;
        }
        .bg-danger {
            background-color: #fd3550!important;
        }
        .bg-warning {
            background-color: #ffc107!important;
        }
    </style>
    <style type="text/css">
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
    	
		.account-block {
		    padding: 0;
		    background-image: url(http://localhost/aparajita/public/css/images/ap-woman_p.png);
		    background-repeat: no-repeat;
		    background-size: cover;
		    height: 100%;
		    position: relative;
		}
		.account-block .overlay {
		    -webkit-box-flex: 1;
		    -ms-flex: 1;
		    flex: 1;
		    position: absolute;
		    top: 0;
		    bottom: 0;
		    left: 0;
		    right: 0;
		    background-color: rgba(0, 0, 0, 0.4);
		}
		.account-block .account-testimonial {
		    text-align: center;
		    color: #fff;
		    position: absolute;
		    margin: 0 auto;
		    padding: 0 1.75rem;
		    bottom: 3rem;
		    left: 0;
		    right: 0;
		}
		.text-theme {
		    color: #5369f8 !important;
		}
		.btn-theme {
		    background-color: #5369f8;
		    border-color: #5369f8;
		    color: #fff;
		}
    </style>
  

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
                        <a id="logo" href="https://aparajita.sanmarg.in" title="Aparajita">
                            <img class="logo-main scale-with-grid" src="{{ asset('css/images/afl1.png') }}" alt="aparajita" />
                            <img class="logo-sticky scale-with-grid" src="{{ asset('css/images/afl1.png') }}" alt="aparajita" />
                            <img class="logo-mobile scale-with-grid" src="{{ asset('css/images/afl1.png') }}" alt="aparajita" />
                            <img class="logo-mobile-sticky scale-with-grid" src="{{ asset('css/images/afl1.png') }}" alt="aparajita" />
                        </a>
                        </center>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div id="main-wrapper" class="container">
	    <div class="row justify-content-center">
	        <div class="col-xl-10">
	            <div class="card border-0">
	                <div class="card-body p-0">
	                    <div class="row no-gutters">
	                        <div class="col-lg-6">
	                            <div class="p-5">
	                                <div class="mb-5">
	                                    <h3 class="h4 font-weight-bold text-theme">Login</h3>
	                                </div>
	                                <h6 class="h5 mb-0">Login.</h6>
                                    @if(Session::has('message'))
                                    <p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
                                    @endif
	                                <form method="POST" action="{{ url('login') }}">	                                  
	                                	@csrf
	                                    <div class="form-group">
	                                        <label for="exampleInputEmail1">Email address</label>
	                                        <input name="email" type="email" class="form-control" id="exampleInputEmail1" />
	                                    </div>
	                                    <div class="form-group mb-5">
	                                        <label for="exampleInputPassword1">Password</label>
	                                        <input name="password" type="password" class="form-control" id="exampleInputPassword1" />
	                                    </div>
	                                    <button type="submit" class="btn btn-theme">Login</button>
	                                </form>
	                            </div>
	                        </div>
	                        <div class="col-lg-6 d-none d-lg-inline-block">
	                            <div class="account-block rounded-right">
	                                <div class="overlay rounded-right"></div>
	                                <div class="account-testimonial">
	                                    <h4 class="text-white mb-4">This beautiful theme yours!</h4>
	                                    <p class="lead text-white">"Best investment i made for a long time. Can only recommend it for other users."</p>
	                                    <p>- Admin User</p>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- end card-body -->
	            </div>
	            <!-- end card -->
	            <p class="text-muted text-center mt-3 mb-0">Already have an account? <a href="login.html" class="text-primary ml-1">login</a></p>
	            <!-- end row -->
	        </div>
	        <!-- end col -->
	    </div>
	    <!-- Row -->
	</div>

    <div class="column one footer">
        <div id="page">   
            <div id="reviews-slider" class="flexslider">
                <ul class="slides">
                    <li><h4 class="spons">Presented by</h4>
                        <img src="{{ asset('css/images/footer-logo/a1.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Powered by</h4>
                        <img src="{{ asset('css/images/footer-logo/a2.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Powered by</h4>
                        <img src="{{ asset('css/images/footer-logo/a3.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="{{ asset('css/images/footer-logo/a4.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="{{ asset('css/images/footer-logo/a5.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="{{ asset('css/images/footer-logo/a6.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="{{ asset('css/images/footer-logo/a-a.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="{{ asset('css/images/footer-logo/a-b.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="{{ asset('css/images/footer-logo/a7.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="{{ asset('css/images/footer-logo/a8.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="{{ asset('css/images/footer-logo/a9.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="{{ asset('css/images/footer-logo/a10.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Associate</h4>
                        <img src="{{ asset('css/images/footer-logo/a-c.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Official Tabulator</h4>
                        <img src="{{ asset('css/images/footer-logo/a11.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">CSR Partner</h4>
                        <img src="{{ asset('css/images/footer-logo/a12.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Venue</h4>
                        <img src="{{ asset('css/images/footer-logo/a13.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Travel Partner</h4>
                        <img src="{{ asset('css/images/footer-logo/a14.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Photography</h4>
                        <img src="{{ asset('css/images/footer-logo/a15.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">National News</h4>
                        <img src="{{ asset('css/images/footer-logo/a-d.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Regional News</h4>
                        <img src="{{ asset('css/images/footer-logo/a-e.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Hindi Print</h4>
                        <img src="{{ asset('css/images/footer-logo/a-f.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Gift</h4>
                        <img src="{{ asset('css/images/footer-logo/a16.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">PR</h4>
                        <img src="{{ asset('css/images/footer-logo/a17.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">English Print</h4>
                        <img src="{{ asset('css/images/footer-logo/a18.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Radio</h4>
                        <img src="{{ asset('css/images/footer-logo/a19.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Events</h4>
                        <img src="{{ asset('css/images/footer-logo/a20.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">OOH</h4>
                        <img src="{{ asset('css/images/footer-logo/a21.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">OOH</h4>
                        <img src="{{ asset('css/images/footer-logo/a22.png') }}"
                        />
                    </li>
                    <li><h4 class="spons">Print</h4>
                        <img src="{{ asset('css/images/footer-logo/a23.png') }}"
                        />
                    </li>
                </ul>
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
    </div>



<!-- footer Finish ---->

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
    <script src="{{ asset('lib/steps/jquery-steps.js') }}"></script>
    <script src="{{ asset('js/jquery.flexslider.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>

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