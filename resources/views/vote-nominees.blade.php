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
    <!-- <link rel='stylesheet' id='mfn-shortcodes-css' href="{{ asset('css/shortcodese585.css?ver=16.0.1') }}" type='text/css' media='all' /> -->
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
        .event-schedule-area .tab-area .nav-tabs {
            border-bottom: inherit;
        }

        .event-schedule-area .tab-area .nav {
            border-bottom: inherit;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            margin-top: 80px;
        }

        .event-schedule-area .tab-area .nav-item {
            margin-bottom: 75px;
        }
        .event-schedule-area .tab-area .nav-item .nav-link {
            text-align: center;
            font-size: 22px;
            color: #333;
            font-weight: 600;
            border-radius: inherit;
            border: inherit;
            padding: 0px;
            text-transform: capitalize !important;
        }
        .event-schedule-area .tab-area .nav-item .nav-link.active {
            color: #4125dd;
            background-color: transparent;
        }

        .event-schedule-area .tab-area .tab-content .table {
            margin-bottom: 0;
            width: 80%;
        }
        .event-schedule-area .tab-area .tab-content .table thead td,
        .event-schedule-area .tab-area .tab-content .table thead th {
            border-bottom-width: 1px;
            font-size: 20px;
            font-weight: 600;
            color: #252525;
        }
        .event-schedule-area .tab-area .tab-content .table td,
        .event-schedule-area .tab-area .tab-content .table th {
            border: 1px solid #b7b7b7;
            padding-left: 30px;
        }
        .event-schedule-area .tab-area .tab-content .table tbody th .heading,
        .event-schedule-area .tab-area .tab-content .table tbody td .heading {
            font-size: 16px;
            text-transform: capitalize;
            margin-bottom: 16px;
            font-weight: 500;
            color: #252525;
            margin-bottom: 6px;
        }
        .event-schedule-area .tab-area .tab-content .table tbody th span,
        .event-schedule-area .tab-area .tab-content .table tbody td span {
            color: #4125dd;
            font-size: 18px;
            text-transform: uppercase;
            margin-bottom: 6px;
            display: block;
        }
        .event-schedule-area .tab-area .tab-content .table tbody th span.date,
        .event-schedule-area .tab-area .tab-content .table tbody td span.date {
            color: #656565;
            font-size: 14px;
            font-weight: 500;
            margin-top: 15px;
        }
        .event-schedule-area .tab-area .tab-content .table tbody th p {
            font-size: 14px;
            margin: 0;
            font-weight: normal;
        }

        .event-schedule-area-two .section-title .title-text h2 {
            margin: 0px 0 15px;
        }

        .event-schedule-area-two ul.custom-tab {
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            border-bottom: 1px solid #dee2e6;
            margin-bottom: 30px;
        }
        .event-schedule-area-two ul.custom-tab li {
            margin-right: 70px;
            position: relative;
        }
        .event-schedule-area-two ul.custom-tab li a {
            color: #252525;
            font-size: 25px;
            line-height: 25px;
            font-weight: 600;
            text-transform: capitalize;
            padding: 35px 0;
            position: relative;
        }
        .event-schedule-area-two ul.custom-tab li a:hover:before {
            width: 100%;
        }
        .event-schedule-area-two ul.custom-tab li a:before {
            position: absolute;
            left: 0;
            bottom: 0;
            content: "";
            background: #4125dd;
            width: 0;
            height: 2px;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            transition: all 0.4s;
        }
        .event-schedule-area-two ul.custom-tab li a.active {
            color: #4125dd;
        }

        .event-schedule-area-two .primary-btn {
            margin-top: 40px;
        }

        .event-schedule-area-two .tab-content .table {
            -webkit-box-shadow: 0 1px 30px rgba(0, 0, 0, 0.1);
            box-shadow: 0 1px 30px rgba(0, 0, 0, 0.1);
            margin-bottom: 0;
        }
        .event-schedule-area-two .tab-content .table thead {
            background-color: #007bff;
            color: #fff;
            font-size: 20px;
        }
        .event-schedule-area-two .tab-content .table thead tr th {
            padding: 20px;
            border: 0;
        }
        .event-schedule-area-two .tab-content .table tbody {
            background: #fff;
        }
        .event-schedule-area-two .tab-content .table tbody tr.inner-box {
            border-bottom: 1px solid #dee2e6;
        }
        .event-schedule-area-two .tab-content .table tbody tr th {
            border: 0;
            padding: 30px 20px;
            vertical-align: middle;
        }
        .event-schedule-area-two .tab-content .table tbody tr th .event-date {
            color: #252525;
            text-align: center;
        }
        .event-schedule-area-two .tab-content .table tbody tr th .event-date span {
            font-size: 50px;
            line-height: 50px;
            font-weight: normal;
        }
        .event-schedule-area-two .tab-content .table tbody tr td {
            padding: 30px 20px;
            vertical-align: middle;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .r-no span {
            color: #252525;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .event-wrap h3 a {
            font-size: 20px;
            line-height: 20px;
            color: #cf057c;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            transition: all 0.4s;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .event-wrap h3 a:hover {
            color: #4125dd;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .event-wrap .categories {
            display: -webkit-inline-box;
            display: -ms-inline-flexbox;
            display: inline-flex;
            margin: 10px 0;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .event-wrap .categories a {
            color: #252525;
            font-size: 16px;
            margin-left: 10px;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            transition: all 0.4s;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .event-wrap .categories a:before {
            content: "\f07b";
            font-family: fontawesome;
            padding-right: 5px;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .event-wrap .time span {
            color: #252525;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .event-wrap .organizers {
            display: -webkit-inline-box;
            display: -ms-inline-flexbox;
            display: inline-flex;
            margin: 10px 0;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .event-wrap .organizers a {
            color: #4125dd;
            font-size: 16px;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            transition: all 0.4s;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .event-wrap .organizers a:hover {
            color: #4125dd;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .event-wrap .organizers a:before {
            content: "\f007";
            font-family: fontawesome;
            padding-right: 5px;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .primary-btn {
            margin-top: 0;
            text-align: center;
        }
        .event-schedule-area-two .tab-content .table tbody tr td .event-img img {
            width: 100px;
            height: 100px;
            border-radius: 8px;
        }   
        
        label.btn {
          padding: 0;
        }

        label.btn input {
          opacity: 0;
          position: absolute;
        }

        label.btn span {
          text-align: center;
          padding: 6px 12px;
          display: block;
        }

        label.btn input:checked+span {
          background-color: rgb(80, 110, 228);
          color: #fff;
        }
    </style>
    <style type="text/css">
        /***********************************************/
        /***************** Accordion ********************/
        /***********************************************/
        @import url('https://fonts.googleapis.com/css?family=Tajawal');
        @import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');

        section{
            padding: 60px 0;
        }

        #accordion-style-1 h1,
        #accordion-style-1 a{
            color:#fd3550;
        }
        #accordion-style-1 .btn-link {
            font-weight: 400;
            color: #fd3550;
            background-color: transparent;
            text-decoration: none !important;
            font-size: 50px;
            font-weight: bold;
            padding-left: 25px;
        }

        #accordion-style-1 .card-body {
            border-top: 2px solid #fd3550;
        }

        #accordion-style-1 .card-header .btn.collapsed .fa.main{
            display:none;
        }

        #accordion-style-1 .card-header .btn .fa.main{
            background: #007b5e;
            padding: 13px 11px;
            color: #ffffff;
            width: 35px;
            height: 41px;
            position: absolute;
            left: -1px;
            top: 10px;
            border-top-right-radius: 7px;
            border-bottom-right-radius: 7px;
            display:block;
        }

        /* rahul css */

        .card-body.text-center {
            min-height: 250px;
        }

        input[type=radio] {
            border: 0px;
            width: 100%;
            height: 2em;
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
    <form method="POST" action='{{ url("vote-nominees") }}'> 
    @csrf 
        @foreach ($categories as $category)
        <div class="container event-schedule-area-two p-3 mt-2"> 
            <div class="tab-content mt-1 radius-15">
                <div class="tab-pane fade active show" id="home" role="tabpanel">
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="bg-danger">
                                <tr>
                                    <th class="text-center text-black" scope="col"><h2 class="text-white">{{$category->name}}</h2></th>                               
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div> 
        @foreach ($subcategories as $key => $subcategory)  
        @php if (count($participants[$category->id][$subcategory->id]) > 0): @endphp  
            <div class="tab-content radius-15">
                <div class="tab-pane fade active show" id="home" role="tabpanel">
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="bg-success">
                                <tr>
                                    <th class="text-center text-white" scope="col">{{$subcategory->name}}</th>                                
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>        
            @php //print_r($participants[$category->id][$subcategory->id]); @endphp
            <div class="row row-cols-1 row-cols-lg-3 row-cols-xl-3  p-3 ">
                @foreach ($participants[$category->id][$subcategory->id] as $participant)
                    <div class="col-md-4 mt-2">              
                        <div class="card radius-15 bg-danger">
                            <div class="card-body text-center">
                                <div class="radius-15">                                   
                                    <img src="{{ Storage::disk(\App\Participant::STORAGE_DISK)->url( $participant->photo ) }}" width="100" height="100" class="rounded-circle shadow p-1 bg-white mx-auto d-block" alt="">
                                    <h5 class="mb-1 mt-3 text-white">{{ $participant->name }}</h5>
                                    <p class="mb-1 text-white">{{ $participant->organization}}</p>
                                    <div class="form-check">
                                        <input type="radio" class="btn-check cat-{{$category->id}}" data-group-class=".cat-{{$category->id}}"  name="vote[{{$category->id}}][{{$subcategory->id}}]" id="option-{{ $participant->id }}" value="{{ $participant->id }}" autocomplete="off">
                                        <!-- <label class="btn btn-secondary" for="option-{{ $participant->id }}">Vote Me</label>    --> 
                                    </div>  
                                    <?php /* ?>
                                    <div>
                                        <label class="btn btn-secondary btn-outline-primary">
                                            <input type="radio" name="vote[{{$subcategory->id}}]">
                                            <span>Vote Me</span>
                                        </label>
                                    </div>
                                    <?php */ ?>
                                </div>
                            </div>
                        </div>             
                    </div>
                @endforeach
            </div>
        @php endif; @endphp  
        @endforeach
        </div>
        @endforeach
       <center> <button type="submit" class="btn step-btn">Submit Vote</button><center>
    </form>
    <!-- Accordion -->



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

          /*$('.btn-check').on('checked', function(el){

                let checked = $(el).is(':checked');
                console.log(">>" + checked)
                let elClass = $(el).data('group-class');
                console.log(elClass);
                $(elClass).prop('required', checked);
          });*/

           

        $('input[type="radio"]').click(function(){
            if ($(this).is(':checked'))
            {
              //alert($(this).val());
              //$(this).prop('required',true);
              let elClass = $(this).data('group-class');
              //alert(elClass);
              $(elClass).prop('required',true);;
            }
        });

      });
    </script>




</body>

</html>