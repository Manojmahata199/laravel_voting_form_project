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

.modal-content{
    background-color:black !important;
}
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


    input {
    visibility:hidden;
    }
    label {
        cursor: pointer;
    }

    label.btn span {        
            background: #e54e55;    
            color: #fff;
            cursor: pointer;
           /*  left: -9%;
            margin: -26px; */
            text-transform: uppercase;
            letter-spacing: 1px;
            outline: none;
            position: relative;
            -webkit-transition: all 0.3s;
            -moz-transition: all 0.3s;
            transition: all 0.3s;
            font-weight: 700;
            border-radius: 20px;
        }
 
    label.bg-sweet {
        margin-right: 2%;
        border: 2px solid red;
        padding: 6px 24px;
        border-radius: 25px;
    }
   
       
    
    /* input:checked + span {
        background: rgb(87, 212, 114);
    } */
    label.btn input:checked+span {
          background-color: #86a17d;
           /*#4dea7c;*/
          color: #fff;
          padding: 15px 30px;
          -webkit-transition: all 0.3s;
            -moz-transition: all 0.3s;
            transition: all 0.3s;
            border: 1px solid seashell;
            border-radius: 25px;

           /*  margin: -27px;
            top: -5%; */
    }
    
    .slick-slide img {
        height:60px;
    }
   
    .business-section .main-box .boxes .details {
        position: relative;
        padding: 0px 30px;
        top: 20px;
        z-index: 1;
        min-height: 220px;
    }
    .details h4{
        height:70px;
    }
    @media (max-width: 1750px)
    .business-section .main-box .boxes .details {
        padding: 0px 25px;
        top: 15px;
        min-height: 200px;
    }
    @media (max-width: 1550px){
    .business-section .main-box .boxes .details {
        padding: 0px 15px;
        top: 10px;
        min-height: 185px;
    }
    .slick-slide img {
        height:60px;
    }
    }
    @media (max-width: 1199px){
    .details h4{
        height:60px;
    }
    .slick-slide img {
        height:50px;
    }
    }
    @media (max-width: 991px){
    .details h4{
        height:90px;
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
     @media (max-width: 600px){
    .details h4{
        height:65px;
    }
    .slick-slide img {
         height:50px;
     }
    }
    @media (max-width: 400px){
    .details h4{
        height:65px;
    }
    .slick-slide img {
         height:40px;
     }
    }
   
    
        
</style>
</head>
<body>    
    <section class="hero-section">
        <div class="container-fluid">
            <div class="row"  style="background-color: #e7e6da;">
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
                        <!--<p>-->
                        <!--    We would request you to go through each nominee profile carefully before your final selection.-->
                        <!--</p>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section-two">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <h2>Choose a catgeory or scroll down to view all nominees.</h2>
                    <h3>Please note: Your vote will only be submitted once you click the ‘Submit’ button at the end of the page.*</h3>
                </div>
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-md-3 col-6">
                            <a href="#1">
                            <div class="boxes">
                                <div class="icons-image">
                                    <img src="css/images/44.png" class="img-fluid" alt="">
                                </div>
                                <h4>BUSINESS AND ENTREPRENEURSHIP</h4>
                            </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-6">
                            <a href="#2">
                            <div class="boxes">
                                <div class="icons-image">
                                    <img src="css/images/33.png" class="img-fluid" alt="">
                                </div>
                                <h4>COMMUNITY SERVICE AND ADVOCACY</h4>
                            </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-6">
                            <a href="#3">
                            <div class="boxes">
                                <div class="icons-image">
                                    <img src="css/images/22.png" class="img-fluid" alt="">
                                </div>
                                <h4>GOURMET</h4>
                            </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-6">
                            <a href="#4">
                            <div class="boxes">
                                <div class="icons-image">
                                    <img src="css/images/11.png" class="img-fluid" alt="">
                                </div>
                                <h4>VISUAL ARTS</h4>
                            </div>
                            </a>
                        </div>
                        
                        <!--for showing only 4 categories-->
                        <!--<div class="col-md-4 col-6">-->
                        <!--    <a href="#5">-->
                        <!--    <div class="boxes">-->
                        <!--        <div class="icons-image">-->
                        <!--            <img src="css/images/performing-arts.png" class="img-fluid" alt="">-->
                        <!--        </div>-->
                        <!--        <h4>MANAGEMENT PROFESSIONAL</h4>-->
                        <!--    </div>-->
                        <!--    </a>-->
                        <!--</div>-->
                        <!--<div class="col-md-4 col-6">-->
                        <!--    <a href="#6">-->
                        <!--    <div class="boxes">-->
                        <!--        <div class="icons-image">-->
                        <!--            <img src="css/images/social-impact.png" class="img-fluid" alt="">-->
                        <!--        </div>-->
                        <!--        <h4>VISUAL ARTS</h4>-->
                        <!--    </div>-->
                        <!--    </a>-->
                        <!--</div>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <form method="POST" action='{{ url("vote-nominees") }}'> 
    @csrf 
        <section class="business-section">
            <div class="container">
                <div class="row">
                    @php $i = 1; @endphp
                    @foreach ($categories as $category)
                        <div class="col-md-12" id="@php echo $i++; @endphp">
                            <div class="main-box">
                                <div class="title-top">
                                    <h2>
                                        {{$category->name}} 
                                </div>

                                @foreach ($subcategories as $key => $subcategory)  
                                @php if (count($participants[$category->id][$subcategory->id]) > 0): @endphp 
                                    <div class="title-top1">
                                        <h2>     
                                            <!--<span>-{{$subcategory->display_name}}-</span>-->
                                        </h2>
                                    </div>

                                    <div class="row">
                                        @foreach ($participants[$category->id][$subcategory->id] as $key => $participant)
                                            <div class="col-md-4 boxes">
                                                <div class="profile-image">
													@php $url = Storage::url($participant->display_profile_pic); @endphp
                                                    <img src="https://aparajitavoting.sanmarg.in{{ $url }}" class="img-fluid" id="nomenee_img" alt="">
                                                    {{-- <div class="profile-icon">
                                                        <img src="css/images/01.png" class="img-fluid" alt="">
                                                    </div> --}}
                                                </div>
                                                <div class="details">
                                                    {{-- <div class="title">
                                                        {{ $participant->name }}
                                                    </div> --}}
                                                    <h4>&nbsp;{{ $participant->position_english}}</h4> 
                                                    <a href = "#close" class='forum-title' name = "abc" data-toggle="modal" data-target="#voterModalCenter"
                                                    data-name="{{ $participant->name }}"
                                                    data-company="{{ $participant->position_english}}"	
                                                    data-text_eng="{{ $participant->Profile_text_english}}"
                                                    data-text_hindi="{{ $participant->profile_text_hindi}}"
                                                    data-cat="{{$category->name}}"
                                                    data-sub_cat="{{$subcategory->display_name}}">
                                                    Click for details
                                                    </a>
                                                    <br><br>
                                                    <label class="btn mt-2 bttn">
                                                        <input type="radio" value="{{ $participant->id }}" autocomplete="off" name="vote[{{$category->id}}][{{$subcategory->id}}]" id="option-{{ $participant->id }}">
                                                        <span class="vote bttn">Vote</span>
                                                    </label>
                                                    {{-- <button type="button" class="rounded vote">Vote</button> --}}
                                                </div>
                                            </div>
                                        
                                        @endforeach
                                    </div>
                                @php endif; @endphp  
                                @endforeach
                            </div>
                        </div> 
                    @endforeach                       
                </div>
            </div>
        </section>
        <section class="section-one pt-0">
            <div class="container">
                <div class="row">                
                    <div class="col-md-12">
                        <div class="box-two">
                            <form accept="#" method="post">
                                <div class="row">
                                    <div class="col-lg-12 text-center">
                                        <label  id="clear_radio" class="bg-sweet">Clear All</label>
                                        <button type="submit" class="submit">Submit</button>
                                    </div>
                                </div>
                            </form>
                            <p class="note">Please note: Your vote will only be submitted once you click the ‘Submit’ button at the end of the page.*</p>
                           
                                         
                        </div>
                    </div>
                </div>
            </div>
            
            
                                
        </section>
    </form>    
    <footer style="background-color: #f2f0f0;">
        <div class="container-logo">
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
     <!--Modal -->
    <div class="modal fade" id="voterModalCenter" tabindex="-1" role="dialog" aria-labelledby="popupstart" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content  popup-start">
            <div class="modal-body">
                <div class="iner">
                    <span class="cross fa fa-times" data-dismiss="modal"></span>
                    <div class="row">
                        <div class="col-md-12">
                            <h2><span class="cat2">BUSINESS</span>
                             <!--<span class="sub_cat2">YOU SHINE</span>-->
                            </h2>
                            <h3>
                                <span class="txt_name">UPASANA RUNGTA</span> <br /><span class="txt_company">Visual Designer</span>
                            </h3>
                            <p class="txt_eng">
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
    <div class="modal fade" id="voterModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-lg"> 
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title text-center" id="exampleModalLongTitle">Modal title</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
               <div class="container">
                   <div class="row">
                        <div class="col-md-6 txt_img"><img src="{{$url}}" width="auto" height="auto" class="responsive p-2 mx-auto d-block" alt=""></div>
                        <div class="col-md-6 ml-auto mt-5">
                            <h5 class="mb-1 mt-3 txt_name"></h5>
                            <h4 class="mb-1 txt_company" style="color:black"></h4>
                        </div>
                  </div>
                  <div class="col-md-12 mt-2">              
                      <div class="radius-15">
                          <div class="text-center">
                              <div class="radius-15"> 
                                  <p class="mb-1 text-justify mtxt txt_eng"></p>
                              </div>
                          </div>
                      </div>  
                      <p class="m-2 ">&nbsp;</p>
                      <div class="radius-15">
                        <div class="text-center">
                            <div class="radius-15"> 
                                <p class="mb-1 text-justify mtxt txt_hindi"></p>
                            </div>
                        </div>
                    </div>            
                  </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
    </div>

    
<!-- jQuery library --> 
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



        $('input[type="radio"]').on('click change', function(e) {
            console.log(e.type);
            console.log($(this).attr('id'));
        });
       

        $('#voterModalCenter').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var recipient = button.data('whatever') // Extract info from data-* attributes
            // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
            // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
            var url = button.data('profile_image');
            var name = button.data('name');
            var company = button.data('company');
            var text_eng = button.data('text_eng');
            var text_hindi = button.data('text_hindi');
            var text_hindi = button.data('text_hindi');
            var cat1 = button.data('cat');
            var sub_cat1 = button.data('sub_cat');
            var modal = $(this);
            modal.find('.txt_img img').attr("src",url)
            modal.find('.modal-title').text(name)
            modal.find('.txt_name').html(name)
            modal.find('.txt_company').html(company)
            modal.find('.txt_eng').html(text_eng)
            modal.find('.cat2').html(cat1)
            modal.find('.sub_cat2').html(sub_cat1)
            //modal.find('.txt_hindi').html(text_hindi)
        });

        $("#clear_radio").click(function(){
        //var r = confirm("Did You Want To Clear All Selection");
       
        Swal.fire({
            title: 'Are you sure?',
            text: "Did You Want To Clear All Selection!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, Clear it!'
            }).then((result) => {
            if (result.isConfirmed) {
                clearSelection()
                Swal.fire(
                'Cleared!',
                'Your Selection has been cleared.',
                'success'
                )
            }
        })
        
        function clearSelection(){
                //if (r == true) {   
                var arrayCat = <?php echo json_encode($all_selected_participants); ?>;
                jQuery.each(arrayCat, function(index, item) {
                    // do something with `item` (or `this` is also `item` if you like)                
                    var itel_id = item.id;
                    var id = "#option-"+itel_id; 
                    $(id).prop('checked', false); 
                });
            //}

        }
    });

    @if ($errors->any())
        @foreach ($errors->all() as $error)
            Swal.fire({
            icon: 'error',
            title: 'Please vote in at least one category',
            text: '',
            //footer: '<a href="">please select at least one</a>'
        })
        @endforeach
    @endif
    
    

  });

  

</script>
</body>
</html>
