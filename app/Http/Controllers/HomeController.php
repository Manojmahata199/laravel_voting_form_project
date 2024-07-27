<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use \App\Models\User;
use Session;
use Craftsys\Msg91\Facade\Msg91;
use DB;
use Response;

class HomeController extends Controller
{
     public function viewIndex(Request $request)
    {
       return view('signup');       
    } 

    public function viewParticipationForm(Request $request)
    {
        $data = [];
        //$data['categories'] = \TCG\Voyager\Models\Category::all();
		$data['categories'] = \TCG\Voyager\Models\Category::orderBy('name', 'ASC')->get();;
        $data['subcategories'] = \App\Subcategory::all();
        $p_id = Session::get('participantSignUpData.p_id');
        $data['participant'] = \App\Participant::firstOrNew(['id' => $p_id]);
        //dd($data['participant']);
        return view('steps', $data);
    }

    public function viewParticipationFormOld(Request $request)
    {
        $data = [];
        $data['categories'] = \TCG\Voyager\Models\Category::all();
        $data['subcategories'] = \App\Subcategory::all();
        //return view('signup', $data);
        return view('welcome', $data);
    }

    public function showCategoriesNominees(Request $request)
    {
        if(Session::get('otpVerified')) {
            $data = [];
            $data['categories'] = \TCG\Voyager\Models\Category::all();
            $data['subcategories'] = \App\Subcategory::all();
            return view('categories-nominees' ,$data );
        }
        else {
            return redirect(url('signup'));
        }
    }

    public function showVoteNominees(Request $request)
    {
        $data = [];
        $data['categories'] = \TCG\Voyager\Models\Category::where('status', 'Y')->get();
        /*$data['categories_filter'] = DB::table('categories')->select('participants.category_1_id')->rightJoin('participants', 'categories.id', '=', 'participants.category_1_id')
        ->groupBy('participants.category_1_id')->get();*/
        $data['subcategories'] = \App\Subcategory::all();

      
        foreach ($data['categories'] as $key => $categoryy) { 
            //$categoryy['id'] = $id;
            $data['participants'][$categoryy->id][1] = \App\Participant::where('category_1_id', $categoryy->id)->where('subcategory_1_id', 1)->where('status', 'Y')->orderBy('participants_order', 'ASC')->get();
            $data['participants'][$categoryy->id][2] = \App\Participant::where('category_1_id', $categoryy->id)->where('subcategory_1_id', 2)->where('status', 'Y')->orderBy('participants_order', 'ASC')->get();
        }
       
        //dd($data);
        $data['all_selected_participants'] = \App\Participant::where('status', 'Y')->get();
        //$data['participants_sub2'] = \App\Participant::where('category_1_id', $id)->where('subcategory_1_id', 2)->get();
        //dd($data);

        
		//return view('vote-nominees' ,$data );
		return view('simple-nominees1' ,$data );
    }

    public function submitVoteNominees(Request $request )
    {
        $input = $request->validate([
            'vote' => ['required'],
        ]);   

        Session::put('userVotes', $input);
        // dd(Session::get('userVotes'));
        // \App\Models\User::vote($input);
        // return redirect( url('categories-nominees') );
        return redirect( url('complete') );
    }

    public function showVoteNomineesDemoTwo(Request $request)
    {
        $data = [];
        $data['categories'] = \TCG\Voyager\Models\Category::where('status', 'Y')->get();
        /*$data['categories_filter'] = DB::table('categories')->select('participants.category_1_id')->rightJoin('participants', 'categories.id', '=', 'participants.category_1_id')
        ->groupBy('participants.category_1_id')->get();*/
        $data['subcategories'] = \App\Subcategory::all();

      
        foreach ($data['categories'] as $key => $categoryy) { 
            //$categoryy['id'] = $id;
            $data['participants'][$categoryy->id][1] = \App\Participant::where('category_1_id', $categoryy->id)->where('subcategory_1_id', 1)->where('status', 'Y')->get();
            $data['participants'][$categoryy->id][2] = \App\Participant::where('category_1_id', $categoryy->id)->where('subcategory_1_id', 2)->where('status', 'Y')->get();
        }
       
        
        //$data['participants_sub1'] = \App\Participant::where('category_1_id', $id)->where('subcategory_1_id', 1)->get();
        //$data['participants_sub2'] = \App\Participant::where('category_1_id', $id)->where('subcategory_1_id', 2)->get();
        //dd($data);

        //return view('vote-nominees' ,$data );
        return view('vote-nominees-two' ,$data );
    }

    public function submitStep1(Request $request)
    {  

        $formArray  = $request->all();
        $p_id = Session::get('participantSignUpData.p_id');
        $participant = \App\Participant::firstOrNew(['id' => $p_id]);  

        $validator = Validator::make($formArray, [
            //'category_1_id' => 'required_if:steps,step1',
            //'subcategory_1_id' => 'required',
            'check_radio1' => 'required',            
        ], [
			//'category_1_id.required' => 'Primary category is required',
			//'subcategory_1_id.required' => 'plese select any of the sub category below from Step 1',
			'check_radio1.required' => 'Please select any Category , from step 1',            
        ])->validate();

     
  
        $Categories = \TCG\Voyager\Models\Category::all();
        
        $flag = 0;
        $cat = 1;
        foreach ($Categories as $categoryy) {    

            $cat_str = "category_".$cat."_id";
            $sub_str = "subcategory_".$cat."_id";

            if($request->input($sub_str)){

                $flag += 1;
                
                if($flag == 1){
                    $participant->category_1_id = $request->input($cat_str);
                    $participant->category_1 = \TCG\Voyager\Models\Category::findOrFail($request->input($cat_str))->name;
    
                    $participant->subcategory_1_id = $request->input($sub_str);
                    $participant->subcategory_1 = \App\Subcategory::findOrFail($request->input($sub_str))->name;
    
                }elseif($flag == 2){
                    $participant->category_2_id = $request->input($cat_str);
                    $participant->category_2 = \TCG\Voyager\Models\Category::findOrFail($request->input($cat_str))->name;
    
                    $participant->subcategory_2_id = $request->input($sub_str);
                    $participant->subcategory_2 = \App\Subcategory::findOrFail($request->input($sub_str))->name;
                }
            }
            $cat += 1;
        }
        $saved = $participant->save(); 
        return response()->json([
            'message' => "Thank you for chose Nominee categories !!",
        ]);
    }

    public function submitStep2(Request $request)
    {
        $formArray  = $request->all();
        $p_id = Session::get('participantSignUpData.p_id');
        $participant = \App\Participant::firstOrNew(['id' => $p_id]);

        $validator = Validator::make($formArray, [
            'name' => 'required',
            'birthdate' => 'required',
            'mobile_number' => "required|unique:participants,mobile_number,{$p_id},id",
            'email' => "required|unique:participants,email,{$p_id},id",
            'address' => 'required',
        ], [	
        ])->validate();

        if($request->has('name')) $participant->name = $request->input('name');
        if($request->has('birthdate')) $participant->birthdate = $request->input('birthdate');
        if($request->has('mobile_number')) $participant->mobile_number = $request->input('mobile_number');
        if($request->has('email')) $participant->email = $request->input('email');
        if($request->has('address')) $participant->address = $request->input('address');
        if($request->has('facebook_link')) $participant->facebook_link = $request->input('facebook_link');
        if($request->has('insta_link')) $participant->insta_link = $request->input('insta_link');
        if($request->has('social_media')) $participant->social_media = $request->input('social_media');
        if($request->has('family_background')) $participant->family_background = $request->input('family_background');       
		
        $saved = $participant->save(); 
        return response()->json([
            'message' => "Thank you for submit Personal Details  !!",
        ]);
    }

    public function submitStep3(Request $request)
    {
        $formArray  = $request->all();
        $p_id = Session::get('participantSignUpData.p_id');
        $participant = \App\Participant::firstOrNew(['id' => $p_id]);

        $validator = Validator::make($formArray, [
            'work_profile' => 'required',
            'org_contact_number' => 'required',
            'org_email' => 'required|email',
        ], [			
            'org_address.required' => 'The Organization Address is required',
            'org_contact_number.required' => 'The Organization Contact Number is required',
            'org_email.required' => 'The Organization Email is required',

        ])->validate();

        if($request->has('organization')) $participant->organization = $request->input('organization');
        if($request->has('work_profile')) $participant->work_profile = $request->input('work_profile');
        if($request->has('experience')) $participant->experience = $request->input('experience');
        $participant->experience_date = Carbon::createFromDate(2021, 6, 30);
        if($request->has('org_address')) $participant->org_address = $request->input('org_address');
        if($request->has('org_city')) $participant->org_city = $request->input('org_city');
        if($request->has('org_state')) $participant->org_state = $request->input('org_state');
        if($request->has('org_pincode')) $participant->org_pincode = $request->input('org_pincode');
        if($request->has('org_contact_number')) $participant->org_contact_number = $request->input('org_contact_number');
        if($request->has('org_email')) $participant->org_email = $request->input('org_email');
        if($request->has('website')) $participant->website = $request->input('website');
        if($request->has('org_fb_link')) $participant->org_fb_link = $request->input('org_fb_link');
        if($request->has('org_insta_link')) $participant->org_insta_link = $request->input('org_insta_link');
        if($request->has('digital_presence')) $participant->digital_presence = $request->input('digital_presence');  
		
        $saved = $participant->save(); 
        return response()->json([
            'message' => "Thank you for submit Profesional Details  !!",
        ]);
    }

    public function submitStep4(Request $request)
    {
        $formArray  = $request->all();
        $p_id = Session::get('participantSignUpData.p_id');
        $participant = \App\Participant::firstOrNew(['id' => $p_id]);
        
        if($request->has('response_1')) $participant->response_1 = $request->input('response_1');
        if($request->has('response_2')) $participant->response_2 = $request->input('response_2');
        if($request->has('response_3')) $participant->response_3 = $request->input('response_3');
        if($request->has('response_4')) $participant->response_4 = $request->input('response_4');
        if($request->has('response_5')) $participant->response_5 = $request->input('response_5');

        $saved = $participant->save(); 

        return response()->json([
            'message' => "Thank you for submit Response Details  !!",
        ]);
    }


    public function submitParticipationForm(Request $request)
    {

        $formArray  = $request->all();
        $request->input('steps');

        $p_id = Session::get('participantSignUpData.p_id');
        $participant = \App\Participant::firstOrNew(['id' => $p_id]);

        $validator = Validator::make($formArray, [
            'check_radio1' => 'required',
            'name' => 'required_if:steps,step2',
            'birthdate' => 'required',
            'mobile_number' => "required|unique:participants,mobile_number,{$p_id},id",
            'email' => "required|unique:participants,email,{$p_id},id",
            'address' => 'required',
            'work_profile' => 'required',
            'org_contact_number' => 'required',
            'org_email' => 'required|email',
            'file_photo' => 'nullable|file|mimes:jpg,jpeg,png|max:8192',
            'file_video' => 'nullable|file|mimes:avi,mp4,wmv|max:8192',
            'file_awards' => 'nullable|file|mimes:jpg,jpeg,png,doc,docx|max:8192',
            'file_social' => 'nullable|file|mimes:jpg,jpeg,png,doc,docx,pdf,avi,mp4,wmv|max:8192',
            'file_support' => 'nullable|file|mimes:jpg,jpeg,png,doc,docx,pdf,avi,mp4,wmv|max:8192',
        ], [
			'category_1_id.required' => 'Primary category is required',
			'subcategory_1_id.required' => 'plese select any of the category below from Step 1',
			'check_radio1.required' => 'Please select any Category , from step 1',
            'org_address.required' => 'The Organization Address is required',
            'org_contact_number.required' => 'The Organization Contact Number is required',
            'org_email.required' => 'The Organization Email is required',
            'file_photo.max' => 'The Organization Email is required',
        ])->validate();

        
        // $participant = new \App\Participant();
  
        $Categories = \TCG\Voyager\Models\Category::all();
        
        $flag = 0;
        $cat = 1;
        foreach ($Categories as $categoryy) {    

            $cat_str = "category_".$cat."_id";
            $sub_str = "subcategory_".$cat."_id";

            if($request->input($sub_str)){

                $flag += 1;
                
                if($flag == 1){
                    $participant->category_1_id = $request->input($cat_str);
                    $participant->category_1 = \TCG\Voyager\Models\Category::findOrFail($request->input($cat_str))->name;
    
                    $participant->subcategory_1_id = $request->input($sub_str);
                    $participant->subcategory_1 = \App\Subcategory::findOrFail($request->input($sub_str))->name;
    
                }elseif($flag == 2){
                    $participant->category_2_id = $request->input($cat_str);
                    $participant->category_2 = \TCG\Voyager\Models\Category::findOrFail($request->input($cat_str))->name;
    
                    $participant->subcategory_2_id = $request->input($sub_str);
                    $participant->subcategory_2 = \App\Subcategory::findOrFail($request->input($sub_str))->name;
                }
            }
            $cat += 1;
        }
		
        if($request->has('name')) $participant->name = $request->input('name');
        if($request->has('birthdate')) $participant->birthdate = $request->input('birthdate');
        if($request->has('mobile_number')) $participant->mobile_number = $request->input('mobile_number');
        if($request->has('email')) $participant->email = $request->input('email');
        if($request->has('address')) $participant->address = $request->input('address');
        if($request->has('facebook_link')) $participant->facebook_link = $request->input('facebook_link');
        if($request->has('insta_link')) $participant->insta_link = $request->input('insta_link');
        if($request->has('social_media')) $participant->social_media = $request->input('social_media');
        if($request->has('family_background')) $participant->family_background = $request->input('family_background');
        if($request->has('organization')) $participant->organization = $request->input('organization');
        if($request->has('work_profile')) $participant->work_profile = $request->input('work_profile');
        if($request->has('experience')) $participant->experience = $request->input('experience');
        $participant->experience_date = Carbon::createFromDate(2021, 6, 30);
        if($request->has('org_address')) $participant->org_address = $request->input('org_address');
        if($request->has('org_city')) $participant->org_city = $request->input('org_city');
        if($request->has('org_state')) $participant->org_state = $request->input('org_state');
        if($request->has('org_pincode')) $participant->org_pincode = $request->input('org_pincode');
        if($request->has('org_contact_number')) $participant->org_contact_number = $request->input('org_contact_number');
        if($request->has('org_email')) $participant->org_email = $request->input('org_email');
        if($request->has('website')) $participant->website = $request->input('website');
        if($request->has('org_fb_link')) $participant->org_fb_link = $request->input('org_fb_link');
        if($request->has('org_insta_link')) $participant->org_insta_link = $request->input('org_insta_link');
        if($request->has('digital_presence')) $participant->digital_presence = $request->input('digital_presence');
        if($request->has('response_1')) $participant->response_1 = $request->input('response_1');
        if($request->has('response_2')) $participant->response_2 = $request->input('response_2');
        if($request->has('response_3')) $participant->response_3 = $request->input('response_3');
        if($request->has('response_4')) $participant->response_4 = $request->input('response_4');
        if($request->has('response_5')) $participant->response_5 = $request->input('response_5');

        if($request->has('file_photo')) $participant->file_photo = $request->file('file_photo');
        if($request->has('file_video')) $participant->file_video = $request->file('file_video');
        if($request->has('file_awards')) $participant->file_awards = $request->file('file_awards');
        if($request->has('file_social')) $participant->file_social = $request->file('file_social');
        //$participant->file_experience = $request->file('file_experience');
        if($request->has('file_support')) $participant->file_support = $request->file('file_support');
        $participant->final_submit_status = "Y";
        //dd($participant);
        $saved = $participant->save(); 

        
        // $participant->response_1 = "";
        // $participant->save();

        //$update = DB::table('participants')->where('id', $p_id)->update();
		// $p_email = $participant->email;
		// $p_name = $participant->name;
        // Mail::send('mail', array(), function($message) use($p_email, $p_name) {
        //     $message->to($p_email, $p_name)->subject
        //        ('Aparajita - Your response has been submitted successfully');
        //     $message->from('10yearsaparajita@sanmarg.in','Aage kaun 2021- Aparajita');
        //  });
        //if( $request->input('steps')!='step5'){return redirect()->to(url('form'));}
            
        return response()->json([
            'message' => "Thank you for submit Nominee form. Wish you all the best !!",
        ]);
        
    }

    public function viewLogin()
    {  return redirect(url('signup'));
        $data = [];
        $data['title'] = 'Login';
        return view('login', $data);
        //$this->viewData['apiLoginUrl'] = url('api/login');
        //return view('contents/account/login', $this->viewData);
    }

    public function doLogin(Request $request)
    {  return redirect(url('signup'));
        $credentials = $request->validate([
            'email' => ['required'],
            'password' => ['required'],
        ]);

        if (Auth::attempt($credentials + ['role_id' => 3], true)) {

            $request->session()->regenerate();
            return redirect(session()->get('url.intended') ?? url('categories-nominees'));
        }else {
            Session::flash('message', 'not a member'); 
            Session::flash('alert-class', 'alert-danger'); 
            return redirect(url('/login'));
        }
    }

    public function doLogout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect(route('signup'));
    }

    public function doUserLogout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect(route('usersignup'));
    }

    public function viewUserSignUp()
    {
        $data = [];
        $data['title'] = 'Signup';
        return view('usersignup', $data);
    }
    public function doUserSignUp(Request $request)
    {
        //dd($request);
        $input = $request->validate([
            //'email' => 'required|unique:users,email',
            'mobile' => 'required|unique:users,mobile|digits:10',
        ],
        [
         'mobile.unique'=> 'This mobile number has already been used for voting, Please use a different number.', // custom message
        ]); 
        
        //$otp  = $this->sendOtp($input['mobile'],$input['email']);
        $ip =$this->getUserIpAddr();
        $otp  = $this->sendOtp($input['mobile'],null);
		
        if (!empty($otp)) {            
            Session::put('userSignUpData', $input +  ['role_id' => 3] +['otp' => $otp] +['user_ip' => $ip] );
            Session::flash('message', 'OTP has been sent.'. $otp.'');
            //Session::flash('message', 'Your OTP is: '. $otp);
        } else {
            Session::flash('message', 'OTP has been sent.');
        }
		//dd(Session::all());
		//Session::flash('message', 'OTP has been sent to Mobile no:'.$input['mobile'].' and Email: '.$input['email']);
		
        return redirect(url('userotp'));
        
    }

    public function viewSignUp()
    {
        $data = [];
        $data['title'] = 'Signup';
        return view('signup', $data);
    }

    public function doSignUp(Request $request)
    {
        //dd($request);
        $input = $request->validate([
            'mobile' => 'required|digits:10',
        ],
        [
         'mobile.unique'=> 'This mobile number has already been used for voting, Please use a different number.', // custom message
        ]); 

        $form_submit_status_count =  \App\Participant::where('mobile_number', $input['mobile'])->where('final_submit_status', "Y")->count();

        if(!empty($form_submit_status_count)){ 

            Session::flash('message', 'You are allready submit your form');            
            return redirect(url('signup'));           
        }else {
            //$otp  = $this->sendOtp($input['mobile'],$input['email']);
            $ip =$this->getUserIpAddr();
            $otp  = $this->sendOtp($input['mobile'],null);
            
            if (!empty($otp)) {            
                Session::put('participantSignUpData', $input +  ['role_id' => 3] +['otp' => $otp] +['user_ip' => $ip] );
                //Session::flash('message', 'OTP has been sent to Mobile no:'.$input['mobile']);
                Session::flash('message', 'OTP has been sent to Mobile no:'.$otp);
            } else {
                Session::flash('message', 'OTP not send this number ,Please chack:'.$input['mobile']);
            }
            //dd(Session::all());
            //Session::flash('message', 'OTP has been sent to Mobile no:'.$input['mobile'].' and Email: '.$input['email']);
            
            return redirect(url('otp'));
        
        }

        
        
    }

    public function getUserIpAddr()
    {
        $ipaddress = '';
        if (isset($_SERVER['HTTP_CLIENT_IP']))
            $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
        else if(isset($_SERVER['HTTP_X_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else if(isset($_SERVER['HTTP_X_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
        else if(isset($_SERVER['HTTP_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
        else if(isset($_SERVER['HTTP_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_FORWARDED'];
        else if(isset($_SERVER['REMOTE_ADDR']))
            $ipaddress = $_SERVER['REMOTE_ADDR'];
        else
            $ipaddress = 'UNKNOWN';    
        return $ipaddress;
    }

    private function  sendOtp($mobile,$email = "")
    {
        $p_name = "";
        $mobile = $mobile;
        $email = $email;
        $user_otp =  rand(100000,999999);
        $data = array('mobile'=>$mobile,'email'=>$email,'otp'=>$user_otp);       
        // $this->mailSend($data,$email,$p_name);
        $success = $this->sendSmsOtp($mobile,$user_otp);       
		
		if ($success) {
           return $user_otp;
        } else {
            return false ;
		}
        
        
        
    }

    private function mailSend($data,$email,$p_name)
    {
        Mail::send('voting-mail', $data, function($message) use($email, $p_name) {
            $message->to($email, $p_name)->subject
               ('Aparajita - Your OTP');
            $message->from('10yearsaparajita@sanmarg.in','Aage kaun 2021- Aparajita');
         });
    }

    private function sendSmsOtp($mobile,$user_otp){


        
        
        
        // new otp api
        // $votingportal = "APARAJITA voting portal login";
        // $comany_name = "-Sanmarg Pvt Ltd";
        // $msg = "Dear Customer your OTP for ".$votingportal." is ".$user_otp.".".$comany_name."";
        // $url = "http://dndopen.jhaveritechno.com/api/web2sms.php?template_id=1207169235301032082&workingkey=A060882309a58b77b66aa09fc39b9cbf3&sender=APVOTE&to=".$mobile."&message=".$msg;

        // echo $url;
        // die();
        
        // old otp api
        // $votingportal = "APARAJITA voting portal";
        // $comany_name = "SANMARG -";
        // $msg = "Dear customer your OTP for ".$votingportal." login is ".$user_otp." it's from OSHOST on behalf of ".$comany_name." JHVERI";
        // $url = "http://dndopen.jhaveritechno.com/api/web2sms.php?template_id=1507165950038524313&workingkey=A060882309a58b77b66aa09fc39b9cbf3&sender=JHVERI&to=".$mobile."&message=".$msg;
        
        
        
        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => "http://dndopen.jhaveritechno.com/api/web2sms.php?template_id=1207169235301032082&workingkey=A060882309a58b77b66aa09fc39b9cbf3&sender=APVOTE&to=".$mobile."&message=Dear%20Customer%20your%20OTP%20for%20APARAJITA%20voting%20portal%20login%20is%20".$user_otp.".-Sanmarg%20Pvt%20Ltd",
          //CURLOPT_URL => $url,
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => "",
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 30,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "GET",
          CURLOPT_POSTFIELDS => "{\"Value1\":\"Param1\",\"Value2\":\"Param2\",\"Value3\":\"Param3\"}",
          CURLOPT_HTTPHEADER => array(
            "content-type: application/json"
          ),
        ));
        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);
        
        if ($err) {
            return false;
            echo "cURL Error #:" . $err;
        } else {
            return TRUE ;
            echo $response;
        }

    }

    public function viewOtp()
    {  
        
        $data = [];
        $data['title'] = 'OTP';
        return view('otp', $data);
		
    }

    public function submitOtp(Request $request) 
    {   
        $input = $request->validate([
            'otp' => ['required']
        ]); 
		if ($input['otp'] == Session::get('participantSignUpData.otp')) {
		//if ($input['otp'] == '123456') {
            Session::put('otpVerified', true);
            Session::push('participantSignUpData', ['user_mobile' => Session::get('participantSignUpData.mobile')] );

            $p_data = \App\Participant::where('mobile_number', '=', Session::get('participantSignUpData.0.user_mobile'))->first();
            if ($p_data === null) {
                // user doesn't exist
                $participant = new \App\Participant();
                $participant->mobile_number = Session::get('participantSignUpData.0.user_mobile');
                $saved = $participant->save(); 
                
                $p_data = \App\Participant::where('mobile_number', '=', Session::get('participantSignUpData.0.user_mobile'))->first();
                $p_id = $p_data['id'];
                Session::put('participantSignUpData', ['p_id' => $p_id] );           
            }  
            
            else {
                $p_id = $p_data['id'];
                Session::put('participantSignUpData', ['p_id' => $p_id] );
            }


        }else{
			Session::flash('message', 'Invaild OTP! Please put correct OTP');
            return redirect(url('otp'));
			//return redirect(url('otp'))->withMessage('message',['Wrong otp ,please check otp']);
        }
		//dd(Session::all());
        //return redirect(url('vote-nominees'));
        return redirect(url('form'));
    }

    public function viewUserOtp()
    {  
        
        $data = [];
        $data['title'] = 'OTP';
        return view('userotp', $data);
		
    }

    public function submitUserOtp(Request $request) 
    {   
        $input = $request->validate([
            'otp' => ['required']
        ]); 
		if ($input['otp'] == Session::get('userSignUpData.otp')) {
        //if ($input['otp'] == '123456') {
            Session::put('otpVerified', true);
            Session::push('userSignUpData', ['user_mobile' => Session::get('userSignUpData.mobile')] );
        }else{
			Session::flash('message', 'Invaild OTP! Please put correct OTP');
            return redirect(url('userotp'));
			//return redirect(url('otp'))->withMessage('message',['Wrong otp ,please check otp']);
        }
		//dd(Session::all());
        
        return redirect(url('vote-nominees'));
    }
    
    public function viewCompleteSignUp()
    {
        //dd(Session::all());   
        //dd(Session::get('userVotes'));   
        if(empty(Session::get('userVotes'))){
            return redirect(url('vote-nominees'));
        }
        $data = [];
        $data['title'] = 'Signup';
        return view('signup-complete', $data);
    }

    public function completeSignUp(Request $request) 
    {

        $ip_count = \TCG\Voyager\Models\User::where('ip', Session::get('userSignUpData.user_ip'))->count();
        if ($ip_count > 99) {
            Session::flash('message', 'More Then vote submit from this ip');
            return redirect(url('complete'));
        }
		
        /* 
        $input = $request->validate([
            'otp' => ['required']
        ]);  */

        $input = $request->validate([
            'name' => ['required'],
            'email' => ['nullable'],
            'mobile' => ['required'],
            'gender'=> ['required'],
            'pincode' => ['required','digits:6'],
            'state' => ['required'],
            'city' => ['required'],
            'dob' => ['nullable'],
            'address' => ['nullable'],
        ]); 
        
       
        $user = new User();
        $user->role_id = 3;
        $user->name = $input['name'];
        //$user->email = Session::get('userSignUpData.email');
        $user->email = $input['email'];
        //$user->mobile = Session::get('userSignUpData.mobile');
        $user->mobile = Session::get('userSignUpData.0.user_mobile');
        $user->password = Hash::make(Session::get('userSignUpData.0.user_mobile'));
        $user->gender = $input['gender'];
        $user->pincode = $input['pincode'];
        $user->state = $input['state'];
        $user->city = $input['city'];
        $user->address = $input['address'];
        $user->dob = $input['dob'];
        $user->ip = Session::get('userSignUpData.user_ip');
       // dd($input);
        
        $user->save();
        //dd($user->id);

        $credentials_signup = [
            'mobile' => Session::get('userSignUpData.mobile'),
            'password' => Session::get('userSignUpData.mobile'),
        ];

        if (Auth::attempt($credentials_signup + ['role_id' => 3], true)) {

            $request->session()->regenerate();
            \App\Models\User::vote(Session::get('userVotes'));
            return redirect(session()->get('url.intended') ?? url('thankyou'));
        }else {
            Session::flash('message', 'not a member'); 
            Session::flash('alert-class', 'alert-danger'); 
            return redirect(url('/login'));
        }

        Session::flash('message', 'Success'); 
        Session::flash('alert-class', 'alert-success'); 
       // return redirect(url('/login'));
		return redirect(url('thankyou'));
    }
	
	public function viewThankyou()
    {
        $data = [];
        $data['title'] = 'Thank you';
        return view('thankyou', $data);
    }

    public function showTotalVotes(){
        
        
        $get = DB::table('user_votes')->get();
        $count = $get->count();
        

        echo json_encode($count);
    }

    public function allVotingCsvData(){
        // $get = DB::select("SELECT uv.id AS id,c.name AS category,s.display_name AS segment,u.name AS votername,u.created_at AS votetime,p.name AS nominee FROM user_votes AS uv
        //                 LEFT JOIN categories c
        //                 ON uv.category_id = c.id
        //                 LEFT JOIN participants p
        //                 ON uv.participant_id = p.id
        //                 LEFT JOIN users u
        //                 ON uv.user_id = u.id
        //                 LEFT JOIN subcategories s
        //                 ON uv.subcategory_id = s.id");
        // u.gendar AS votergendar,
        $get = DB::select("SELECT uv.id AS id,
        c.name AS category,
        s.display_name AS segment,
        u.name AS votername,
        u.ip AS voterip,
        u.dob AS voterdob,
        u.gender AS votergendar,
        u.mobile AS votermobile,
        u.email AS voteremail,
        u.address AS voteraddress,
        u.city AS votercity,
        u.state AS voterstate,
        u.pincode AS voterpincode,
        u.created_at AS votetime,
        p.name AS nominee FROM user_votes AS uv
                                LEFT JOIN categories c
                                ON uv.category_id = c.id
                                LEFT JOIN participants p
                                ON uv.participant_id = p.id
                                LEFT JOIN users u
                                ON uv.user_id = u.id
                                LEFT JOIN subcategories s
                                ON uv.subcategory_id = s.id
        
        
        ");
        
        
         // This is for get all result in table field for export
      
       $html='<table style="text-align:center;">
       <tr>
                <td>id</td>
                <td>Category</td>
                <td>Segment</td>
                <td>Nominee</td>
                <td>Votername</td>
                <td>voterip</td>
               
                <td>voterdob</td>
                <td>votergendar</td>
                <td>votermobile</td>
                <td>voteremail</td>
                <td>voteraddress</td>
                <td>votercity</td>
                <td>voterstate</td>
                <td>voterpincode</td>
                <td>votetime</td>

       </tr>';
               



                foreach($get as $result) {
                    $html.='<tr>
                                
                                <td>'.$result->id.'</td>
                                <td>'.$result->category.'</td>
                                <td>'.$result->segment.'</td>
                                <td>'.$result->nominee.'</td>
                                <td>'.$result->votername.'</td>
                                <td>'.$result->voterip.'</td>
                                <td>'.$result->voterdob.'</td>
                                <td>'.$result->votergendar.'</td>
                                <td>'.$result->votermobile.'</td>
                                <td>'.$result->voteremail.'</td>
                                <td>'.$result->voteraddress.'</td>
                                <td>'.$result->votercity.'</td>
                                <td>'.$result->voterstate.'</td> 

                                <td>'.$result->voterpincode.'</td>
                                <td>'.$result->votetime.'</td>
                                   
                               
                           </tr>';
                                                                                               
                               
                }

                $html.='</table>';

                $date = Carbon::now()->toDateTimeString();

               



                header("Content-Type:   application/vnd.ms-excel; charset=utf-8");
                header("Content-type:   application/x-msexcel; charset=utf-8");
                header("Content-Disposition: attachment; filename=totalvote-{$date}.xls"); 
                header("Expires: 0");
                header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
                header("Cache-Control: private",false);
            
                echo $html;

             exit();
        
        
        
        
        
        // print_r($get);
        // die();

        // $date = Carbon::now()->toDateTimeString();

        // $headers = array(
        //     "Content-type" => "text/csv",
        //     "Content-Disposition" => "attachment; filename=totalvote-{$date}.csv",
        //     "Pragma" => "no-cache",
        //     "Cache-Control" => "must-revalidate, post-check=0, pre-check=0",
        //     "Expires" => "0"
        // );
    
        // $reviews = $get;
        // $columns = array('Category', 'Segment', 'Nominee', 'Votername', 'voterip', 'votergendar', 'voterdob', 'votermobile', 'voteremail', 'voteraddress', 'votercity', 'voterstate', 'voterpincode', 'votetime');
    
        // $callback = function() use ($reviews, $columns)
        // {
        //     $file = fopen('php://output', 'w');
        //     fputcsv($file, $columns);
    
        //     foreach($reviews as $key => $review) {
        //         fputcsv($file, array( $review->category, $review->segment, $review->nominee, $review->votername, $review->voterip, $review->votergendar, $review->voterdob, $review->votermobile, $review->voteremail, $review->voteraddress, $review->votercity, $review->voterstate, $review->voterpincode, $review->votetime));
        //     }
        //     fclose($file);
        // };
        // return Response::stream($callback, 200, $headers);
    }

    public function allVotingCountCsvData(){
        //$get = DB::select("SELECT  `category`,`segment`,`nominee`,`vote` FROM `total_vote_count`");
        $get = DB::table('total_vote_count')->get();

        
        
        $html='<table style="text-align:center;">
       <tr>
                <td>id</td>
                <td>Category</td>
                
                <td>Nominee</td>
                <td>vote</td>
               
       </tr>';
               

                foreach($get as $result) {
                    $html.='<tr>
                                <td>'.$result->id.'</td>
                                <td>'.$result->category.'</td>
                                
                                <td>'.$result->nominee.'</td>
                                <td>'.$result->vote.'</td>
                           </tr>';
                                                                                               
                }

                $html.='</table>';

                $date = Carbon::now()->toDateTimeString();

               



                header("Content-Type:   application/vnd.ms-excel; charset=utf-8");
                header("Content-type:   application/x-msexcel; charset=utf-8");
                header("Content-Disposition: attachment; filename=totalvote_countlist-{$date}.xls"); 
                header("Expires: 0");
                header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
                header("Cache-Control: private",false);
            
                echo $html;

             exit();
             
             
             
             
        // $date = Carbon::now()->toDateTimeString();
        // $headers = array(
        //     "Content-type" => "text/csv",
        //     "Content-Disposition" => "attachment; filename=totalvote-{$date}.csv",
        //     "Pragma" => "no-cache",
        //     "Cache-Control" => "must-revalidate, post-check=0, pre-check=0",
        //     "Expires" => "0"
        // );
    
        // $reviews = $get;
        // // print_r($get);
        // // die();
        // $columns = array('Category', 'Segment', 'Nominee', 'vote');
    
        // $callback = function() use ($reviews, $columns)
        // {
        //     $file = fopen('php://output', 'w');
        //     fputcsv($file, $columns);
    
        //     foreach($reviews as $key => $review) {
        //         fputcsv($file, array( $review->category, $review->segment, $review->nominee, $review->vote));
        //     }
        //     fclose($file);
        // };
        // return Response::stream($callback, 200, $headers);
    }

}
