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
	
	<style>
        .top-bar-color{
            background: #ea4d55!important;
        }
		@media only screen and (max-width:987px){
        #Top_bar{
            background: #ec4d54!important;
                }
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
                        <a id="logo" href="https://aparajita.sanmarg.in" title="Aparajita"><img class="logo-main scale-with-grid" src="css/images/aparajita.png" alt="aparajita" /><img class="logo-sticky scale-with-grid" src="css/images/aparajita.png" alt="aparajita" /><img class="logo-mobile scale-with-grid" src="css/images/aparajita.png" alt="aparajita" /><img class="logo-mobile-sticky scale-with-grid" src="css/images/aparajita.png" alt="aparajita" /></a>
						</center>
                    </div>
                </div>
            </div>
        </div>
    </div>

        

    <div class="step-app" id="demo">
        <div class="awards-title" style="margin: 70px 0;">
            <center style="background: #ec4d54;
padding: 9px 0px;"><h1 style="font-size:25px; font-weight:700; color:#fff;">Nominee Registration Form</h1></center>
         <br>
         <h3 style="color: #ec4d54; font-weight:400; text-transform:none; font-size:19px"><i class="fa fa-exclamation-circle" aria-hidden="true" style="font-size:20px;color:red"></i>The form has various parts and is exhaustive in nature to obtain complete data for the Jury. Please ensure that the data filled in,  is authentic and verified.</h3></div>


@php 
    //dd($participant);
    // echo "<pre>";
    // print_r($participant);
    // echo "</pre>"
@endphp 

        <ul class="step-steps">
            <li data-step-target="step1">Step 1</li>
            <li data-step-target="step2">Step 2</li>
            <li data-step-target="step3">Step 3</li>
            <li data-step-target="step4">Step 4</li>
            <li data-step-target="step5">Step 5</li>
        </ul>
        <div class="step-content">
            <div class="step-tab-panel" data-step="step1">
                <h3 class="nomform-subheading">Category:</h3>
                <form method="POST" id="form-nominee-type" class="wpcf7-form init" novalidate="novalidate" data-status="init" enctype="multipart/form-data" action="participate">  
                    @csrf                  
                    <div >
                        <table class="table" id="table1" border="1">
                            <tr>
                                <td colspan="3">Award category - Please select the category in which you wish to apply<span class="highlight-field">*</span> </td>
                            </tr>
                            <tr>
                                <td class="tbl">Select Category:</td>
								 @foreach ($subcategories as $subcategory)
                                <td class="tbl">{{ $subcategory->name }}</td>
								 @endforeach
                            </tr>
                            <?php $val = 1 ?>
							<?php //$categories = \TCG\Voyager\Models\Category::orderBy('name', 'ASC')->get(); ?>
                            @foreach ($categories as $category)
                            <tr>
                                <td>{{ $category->name }}</td>                               
                                <input type="hidden" id="category_{{$val}}_id" name="category_{{$val}}_id"  value="{{$category->id}}">
                                @foreach ($subcategories as $subcategory)
                                @php  
                                    $cat_select_id = $category->id;
                                    $cat_srver_id = $participant->category_1_id ;
                                    $subcat_srver_id = $participant->subcategory_1_id ;
                                    $subcat_select_id = $subcategory->id ;
                                    $checked = ($cat_select_id == $cat_srver_id && $subcat_srver_id == $subcat_select_id ) ? "checked" : "" ; 
                                @endphp 
                                <td>
                                    <input value="{{$subcategory->id}}"  type="radio" {{$checked}}  name="subcategory_{{$val}}_id" >
                                </td>                                                        
                                @endforeach
                            </tr>
                            <?php $val += 1;   ?>     
                            @endforeach
                            <tr>
                                <td colspan="3" ><input type="button" value="Clear Selection" id="clearAllRadio"></td>
                            </tr>
                        </table>
                        <input type="hidden" id="check_radio1" name="check_radio1" value="">
                        <div class='reqCategory' style="color:#ee8929;"></div>    
                    </div>

                    <p style="color:red; font-size:15px">Note: All fields marked with * are mandatory </p>
                    <input type="hidden" name="steps" value="step1">
                    <button id="save-btn1" class="btn btn-success save-btn"> Save Step 1 </button>
                </form>

            </div>
            <div class="step-tab-panel" data-step="step2">
                <h3 class="nomform-subheading">Participant Information – Personal details</h3>
                <form method="POST" id="form-personal-details" class="wpcf7-form init" novalidate="novalidate" data-status="init" enctype="multipart/form-data" action="participate">  
                    @csrf
                    <div class="column one-second">
                        <label>Name of the Participant<span class="highlight-field">*</span></label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="name" value="{{$participant->name}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Enter name" required />
                        </span>
                    </div>

                    <div class="column one-second">
                        <label>Date of birth<span class="highlight-field">*</span></label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="date" name="birthdate" value="{{$participant->birthdate}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" required />
                        </span>
                    </div>
     
                    <div class="column one-second">
                        <label>Mobile number<span class="highlight-field">*</span></label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="number" readonly minlength="10" maxlength="10" name="mobile_number" value="{{$participant->mobile_number}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Enter Mobile No." required />
                        </span>
                    </div>

                    <div class="column one-second">
                        <label>Email ID<span class="highlight-field">*</span></label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="email" name="email" value="{{$participant->email}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Email ID" required />
                        </span>
                    </div>

                    <div class="column one">
                        <label>Address<span class="highlight-field">*</span></label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="address" value="{{$participant->address}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Enter Address" required />
                        </span>
                    </div>

                    <div class="column one">
                        <label>Digital Presence (including Social Media)</label>
                    </div>
                    <div class="column one-third">

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="facebook_link" value="{{$participant->facebook_link}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Your Facebook link" />
                        </span>
                    </div>

                    <div class="column one-third">

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="insta_link" value="{{$participant->insta_link}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Your Instagram Id" />
                        </span>
                    </div>

                    <div class="column one-third">

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="social_media" value="{{$participant->social_media}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Others" />
                        </span>
                    </div>

                    <div class="column one">
                        <label>Tell us more about yourself (300 words)</label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <textarea name="family_background"  size="40" class="wpcf7-form-control wpcf7-text word_count" aria-invalid="false" placeholder="Enter more details">{{$participant->family_background}}</textarea>
							Total word Count : <span class="display_count">0</span> words.
                        </span>
                    </div>
                    <p style="color:red; font-size:15px">Note: All fields marked with * are mandatory </p>
                    <input type="hidden" name="steps" value="step2">
                    <button id="save-btn2" class="btn btn-success save-btn"> Save Step 2 </button>
                </form>
            </div>
            <div class="step-tab-panel" data-step="step3">
                <h3 class="nomform-subheading">Participant Information – Professional details</h3>
                <form method="POST" id="form-profetional-details" class="wpcf7-form init" novalidate="novalidate" data-status="init" enctype="multipart/form-data" action="participate">
                    @csrf
                    <div class="column one">
                        <label>Name of the organisation</label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="organization" value="{{$participant->organization}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Organization name" />
                        </span>
                    </div>

                    <div class="column one-second">
                        <label>Current work profile<span class="highlight-field">*</span></label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="work_profile" value="{{$participant->work_profile}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Enter work profile" required />
                        </span>
                    </div>

                    <div class="column one-second">
                        <label>Years of experience as on June 30, 2021<span class="highlight-field">*</span></label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="number" name="experience" value="{{$participant->experience}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Years of experience" min="1" max="99" required/>
                        </span>
                    </div>

                    <div class="column one">
                        <label>Address</label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="org_address" value="{{$participant->org_address}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Enter organization address" />
                        </span>
                    </div>

                    <div class="column one-third">
                        <label>City</label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="org_city" value="{{$participant->org_city}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Enter organization city" />
                        </span>
                    </div>

                    <div class="column one-third">
                        <label>State</label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="org_state" value="{{$participant->org_state}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Enter organization state" />
                        </span>
                    </div>

                    <div class="column one-third">
                        <label>Pin code</label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="number" maxlength="6" name="org_pincode" value="{{$participant->org_pincode}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Enter organization pin code" />
                        </span> 
                    </div>

                    <div class="column one-second">
                        <label>Contact number<span class="highlight-field">*</span></label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="number" minlength="10" maxlength="10" name="org_contact_number" value="{{$participant->org_contact_number}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Organization contact number" required />
                        </span>
                    </div>

                    <div class="column one-second"> 
                        <label>Email Id<span class="highlight-field">*</span></label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="email" name="org_email" value="{{$participant->org_email}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Organization email id" required />
                        </span>
                    </div>

                    <div class="column one">
                        <label>Website URL (if any)</label>

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="website" value="{{$participant->website}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Organization website" />
                        </span>
                    </div>

                    <div class="column one">
                        <label>Digital presence (including social media)</label>
                    </div>
                    <div class="column one-third">

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="org_fb_link" value="{{$participant->org_fb_link}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Facebook profile link" />
                        </span>
                    </div>

                    <div class="column one-third">

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="org_insta_link" value="{{$participant->org_insta_link}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Instagram Profile Link" />
                        </span>
                    </div>

                    <div class="column one-third">

                        <span class="wpcf7-form-control-wrap your-subject">
                            <input type="text" name="digital_presence" value="{{$participant->digital_presence}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Others" />
                        </span>
                    </div>
                    <input type="hidden" name="steps" value="step3">
                    <button id="save-btn3" class="btn btn-success save-btn"> Save Step 3 </button>
                    <p style="color:red; font-size:15px">Note: All fields marked with * are mandatory </p>

                </form>
            </div>
            <div class="step-tab-panel" data-step="step4">
                <h3 class="nomform-subheading">Tell us more:</h3>
                <form method="POST" id="tell-us-more" class="wpcf7-form init" novalidate="novalidate" data-status="init" enctype="multipart/form-data" action="participate">
                    @csrf
                    <div class="column one">
                        <label>1. Please elaborate on the key learnings/achievements of your career. (300 words)</label>

                        <span class="wpcf7-form-control-wrap your-message">
                            <textarea name="response_1"  cols="40" rows="5" class="wpcf7-form-control wpcf7-textarea word_count1" aria-invalid="false" placeholder="Write here">{{$participant->response_1}}</textarea>
							Total word Count : <span class="display_count1">0</span> words. 
                        </span>
                    </div>

                    <div class="column one">
                        <label>2. What was the biggest challenge that you faced in your career? How did you overcome the same? (300 words)</label>

                        <span class="wpcf7-form-control-wrap your-message">
                            <textarea name="response_2"  cols="40" rows="5" class="wpcf7-form-control wpcf7-textarea word_count2" aria-invalid="false" placeholder="Write here">{{$participant->response_2}}</textarea>
							Total word Count : <span class="display_count2">0</span> words. 
                        </span>
                    </div>

                    <div class="column one">
                        <label>3. How has your initiative/work created an impact on the society? Please elaborate. (300 words)</label>

                        <span class="wpcf7-form-control-wrap your-message">
                            <textarea name="response_3"  cols="40" rows="5" class="wpcf7-form-control wpcf7-textarea word_count3" aria-invalid="false" placeholder="Write here">{{$participant->response_3}}</textarea>
							Total word Count : <span class="display_count3">0</span> words. 
                        </span>
                    </div>

                    <div class="column one">
                        <label>4. Share any future plans that are currently in the pipeline? ( 300 words )</label>

                        <span class="wpcf7-form-control-wrap your-message">
                            <textarea name="response_4"  cols="40" rows="5" class="wpcf7-form-control wpcf7-textarea word_count4" aria-invalid="false" placeholder="Write here">{{$participant->response_4}}</textarea>
							Total word Count : <span class="display_count4">0</span> words. 
                        </span>
                    </div>

                    <div class="column one">
                        <label>5. Anything else that you would like to add? ( 300 words )</label>

                        <span class="wpcf7-form-control-wrap your-message">
                            <textarea name="response_5"  cols="40" rows="5" class="wpcf7-form-control wpcf7-textarea word_count5" aria-invalid="false" placeholder="Write here">{{$participant->response_5}}</textarea>
							Total word Count : <span class="display_count5">0</span> words. 
                        </span>
                    </div>
                    <input type="hidden" name="steps" value="step4">
                    <button id="save-btn4" class="btn btn-success save-btn"> Save Step 4 </button>
                </form>
            </div>
            <div class="step-tab-panel" data-step="step5">
                <h3 class="nomform-subheading">Participant Information – Professional details:</h3>
                <!--<p ><strong>Please attach below mandatory &amp; supporting documents (such as: Photo, Passport copy Initiative Details, Awards/ Certificates received, etc.) to substantiate your application. The list of documents that needs to be attached to support your entry is as below:  <b>(max 8 MB per file)</b></strong>
					</p>--><br><br>
                <form method="POST" id="file-upload-section" class="wpcf7-form init" novalidate="novalidate" data-status="init" enctype="multipart/form-data" action="participate">
                    @csrf
                    <div class="ttbl">
                        <table class="table" id="table1" border="1">
                            <tr>
								<th class="tbl">Document Details</th>
								<th class="tbl">Type of the file</th>
								<th class="tbl">Attachment (Max 8mb per file)</th>
							</tr>
							<tr>
								<th>Upload your latest photohograph<span class="highlight-field">*</span></th>
								<th>jpg, jpeg & png only</th>
								<th> 
									<input type="file" name="file_photo" value="{{$participant->file_photo}}" size="40" class="wpcf7-form-control wpcf7-text file-att" required /> 					   </th>
							</tr>
							<tr>
								<td>Awards, recognition, credits, etc</td>
								<td>jpg, jpeg, pdf, png, doc, and/or docx only</td>
								<td><input type="file" name="file_awards" value="{{$participant->file_awards}}" size="40" class="wpcf7-form-control wpcf7-text file-att" /></td>
							</tr>
							<tr>
								<td>Photos, Testimonials</td>
								<td>jpg, jpeg, pdf, png, doc, & docx only</td>
								<td><input type="file" name="file_social" value="{{$participant->file_social}}" size="40" class="wpcf7-form-control wpcf7-text file-att" /></td>
							</tr>
							<tr>
								<td>Video (if any)</td>
								<td>Within 8 MB Only</td>
								<td><input type="file" name="file_video" value="{{$participant->file_video}}" size="40" class="wpcf7-form-control wpcf7-text file-att" /></td>
							</tr>
							<tr>
								<td>Any other relevant document that you would like to share</td>
								<td>jpg, jpeg, pdf, png, doc, & docx only</td>
								<td><input type="file" name="file_support" value="{{$participant->file_support}}" size="40" class="wpcf7-form-control wpcf7-text file-att" /></td>
							</tr>
                        </table>
                        <div class='reqCategory' style="color:#ee8929;"></div>    
                    </div>

					<br><br><br><br>
                    <div class="column one">
                        <span class="wpcf7-list-item"><label><input type="checkbox" name="terms-condition" value="Y" aria-invalid="false" required><span class="wpcf7-list-item-label">I confirm that the information provided is complete, accurate and true to my knowledge. If any detail/information is found to be incorrect, then the jury shall have the right to disqualify my entry.</span>
                            </label></span>
                    </div>
					<br><br>
                    <div class="column one">
                    <p style="color:red; font-size:15px">Note: All fields marked with * are mandatory </p>
                    </div>

                </form>
            </div>
        </div>
        <div class="step-footer">
            <button data-step-action="prev" class="step-btn">Previous</button>
            <button data-step-action="next" class="step-btn">Next</button>
            <button data-step-action="finish" class="step-btn">Submit</button>
        </div>
    </div>

    
<!-- footer start ---->
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
						</ul> <br>
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
						</ul> <br>
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

        $("#save-btn1").click(function () {
            $(frmNomineeType).submit();
        });

        $(frmNomineeType).submit(function (e) {
            e.preventDefault();
            if(!frmNomineeType.valid()) return;
            $.ajax({
                type: 'post',
                url: 'https://aparajita.sanmarg.in/public/step1',
                data: frmNomineeType.serialize(),
                success: function(response){
                   Swal.fire('Success!', response.message, 'success');
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
                }
            });
        });       
    

        $("#save-btn2").click(function () {
            $(formPersonalDetails).submit();
        });

        $(formPersonalDetails).submit(function (e) {
            e.preventDefault();
            if(!formPersonalDetails.valid()) return;
            $.ajax({
                type: 'post',
                url: 'https://aparajita.sanmarg.in/public/step2',
                data: formPersonalDetails.serialize(),
                success: function(response){
                    Swal.fire('Success!', response.message, 'success');
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
            });
        });

        $("#save-btn3").click(function () {
            $(formProfetionalDetails).submit();
        });

        $(formProfetionalDetails).submit(function (e) {
            e.preventDefault();
            if(!formPersonalDetails.valid()) return;
            $.ajax({
                type: 'post',
                url: 'https://aparajita.sanmarg.in/public/step3',
                data: formProfetionalDetails.serialize(),
                success: function(response){
                    Swal.fire('Success!', response.message, 'success');
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
                }
            });
        });

        $("#save-btn4").click(function () {
            $(formtellUsMore).submit();
        });

        $(formtellUsMore).submit(function (e) {
            e.preventDefault();
            if(!formtellUsMore.valid()) return;
            $.ajax({
                type: 'post',
                url: 'https://aparajita.sanmarg.in/public/step4',
                data: formtellUsMore.serialize(),
                success: function(response){
                    Swal.fire('Success!', response.message, 'success');
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
                }
            });
        });

        $('#demo').steps({
            onChange: function(currentIndex, newIndex, stepDirection) {
                // step1
                if (currentIndex === 0) {
                    if (stepDirection === 'forward') { 
                        if(!frmNomineeType.valid()) return;
                        $.ajax({
                            type: 'post',
                            url: 'https://aparajita.sanmarg.in/public/step1',
                            data: frmNomineeType.serialize(),
                            success: function(response){
                                //Swal.fire('Success!', response.message, 'success');
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
                            }
                        });
                    }
                }
                // step2
                if (currentIndex === 1) {
                    if (stepDirection === 'forward') {
                        if(!formPersonalDetails.valid()) return;
                        $.ajax({
                            type: 'post',
                            url: 'https://aparajita.sanmarg.in/public/step2',
                            data: formPersonalDetails.serialize(),
                            success: function(response){
                                //console.log(response.errors);
                                //Swal.fire('Success!', response.message, 'success');
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
                        });
                    }
                }
                // step3
                if (currentIndex === 2) {
                    if (stepDirection === 'forward') {
                        if(!formProfetionalDetails.valid()) return;
                        $.ajax({
                            type: 'post',
                            url: 'https://aparajita.sanmarg.in/public/step3',
                            data: formProfetionalDetails.serialize(),
                            success: function(response){
                               // Swal.fire('Success!', response.message, 'success');
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
                            }
                        });
                    }
                }
                // step4
                if (currentIndex === 3) {
                    if (stepDirection === 'forward') {
                        if(!formtellUsMore.valid()) return;
                        $.ajax({
                            type: 'post',
                            url: 'https://aparajita.sanmarg.in/public/step4',
                            data: formtellUsMore.serialize(),
                            success: function(response){
                                //Swal.fire('Success!', response.message, 'success');
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
                            }
                        });
                        
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
                Swal.fire({
                title: 'Once You Submit ,you can`t change or modify the form?',
                showDenyButton: true,
                showCancelButton: false,
                confirmButtonText: 'Save',
                denyButtonText: `Don't save`,
                icon: 'success',
                }).then((result) => {
                /* Read more about isConfirmed, isDenied below */
                if (result.isConfirmed) {
                    submitForm();
                    //Swal.fire('Saved!', '', 'success')
                } else if (result.isDenied) {
                    Swal.fire('Please keep Changing', '', 'info')
                }
                })
                
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
                        window.location = "{{ url('/logout') }}";
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

        var count_l = $("input[type='radio']:checked").length;
        //alert(count_l);
        if(count_l > 0) $("#check_radio1").val(1);

        $("input[type='radio']").change(function(){
            var count = $("input[type='radio']:checked").length;
            $("#check_radio1").val(1);
            if(count>1){
                $(this).prop('checked', false);
              alert("Only one category is allowed");
            }
        });

        
		  
		$('#clearAllRadio').click(function() {

            var catItem = 0;
            // $('input[name=subcategory_1_id]').prop('checked', false);
            $("#check_radio1").val("");
            var arrayCat = <?php echo json_encode($categories); ?>;
            arrayCat.forEach(function(item) {
                // do something with `item`
                catItem++;
                $('input[name=subcategory_'+catItem+'_id]').prop('checked', false);
            });
        });



        
        

       
        
        
       
      });

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
			
			$(".word_count").on('keyup', function() {
				var words = 0;

				if ((this.value.match(/\S+/g)) != null) {
				  words = this.value.match(/\S+/g).length;
				}

				if (words > 300) {
				  // Split the string on first 200 words and rejoin on spaces
				  var trimmed = $(this).val().split(/\s+/, 300).join(" ");
				  // Add a space at the end to make sure more typing creates new words
				  $(this).val(trimmed + " ");
				}
				else {
				  $('.display_count').text(words);
				}
			  });

              $(".word_count1").on('keyup', function() {
				var words = 0;

				if ((this.value.match(/\S+/g)) != null) {
				  words = this.value.match(/\S+/g).length;
				}

				if (words > 300) {
				  // Split the string on first 200 words and rejoin on spaces
				  var trimmed = $(this).val().split(/\s+/, 300).join(" ");
				  // Add a space at the end to make sure more typing creates new words
				  $(this).val(trimmed + " ");
				}
				else {
				  $('.display_count1').text(words);
				}
			  });

              $(".word_count2").on('keyup', function() {
				var words = 0;

				if ((this.value.match(/\S+/g)) != null) {
				  words = this.value.match(/\S+/g).length;
				}

				if (words > 300) {
				  // Split the string on first 200 words and rejoin on spaces
				  var trimmed = $(this).val().split(/\s+/, 300).join(" ");
				  // Add a space at the end to make sure more typing creates new words
				  $(this).val(trimmed + " ");
				}
				else {
				  $('.display_count2').text(words);
				}
			  });

              $(".word_count3").on('keyup', function() {
				var words = 0;

				if ((this.value.match(/\S+/g)) != null) {
				  words = this.value.match(/\S+/g).length;
				}

				if (words > 300) {
				  // Split the string on first 200 words and rejoin on spaces
				  var trimmed = $(this).val().split(/\s+/, 300).join(" ");
				  // Add a space at the end to make sure more typing creates new words
				  $(this).val(trimmed + " ");
				}
				else {
				  $('.display_count3').text(words);
				}
			  });

              $(".word_count4").on('keyup', function() {
				var words = 0;

				if ((this.value.match(/\S+/g)) != null) {
				  words = this.value.match(/\S+/g).length;
				}

				if (words > 300) {
				  // Split the string on first 200 words and rejoin on spaces
				  var trimmed = $(this).val().split(/\s+/, 300).join(" ");
				  // Add a space at the end to make sure more typing creates new words
				  $(this).val(trimmed + " ");
				}
				else {
				  $('.display_count4').text(words);
				}
			  });

              $(".word_count5").on('keyup', function() {
				var words = 0;

				if ((this.value.match(/\S+/g)) != null) {
				  words = this.value.match(/\S+/g).length;
				}

				if (words > 300) {
				  // Split the string on first 200 words and rejoin on spaces
				  var trimmed = $(this).val().split(/\s+/, 300).join(" ");
				  // Add a space at the end to make sure more typing creates new words
				  $(this).val(trimmed + " ");
				}
				else {
				  $('.display_count5').text(words);
				}
			  });
		  });

    </script>



</body>

</html>