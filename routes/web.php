<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    //return view('signup');
    return redirect('usersignup');
});

Route::get('login',  function () {
    return view('login');
})->name('login');

//Route::get('/', [HomeController::class, 'viewParticipationForm']);
Route::get('form', [HomeController::class, 'viewParticipationForm']);
//Route::get('/', [HomeController::class, 'viewParticipationFormOld']);
Route::post('participate', [HomeController::class, 'submitParticipationForm']);
Route::post('step1', [HomeController::class, 'submitStep1']);
Route::post('step2', [HomeController::class, 'submitStep2']);
Route::post('step3', [HomeController::class, 'submitStep3']);
Route::post('step4', [HomeController::class, 'submitStep4']);
Route::post('step5', [HomeController::class, 'submitStep5']);
Route::get('login', [HomeController::class, 'viewLogin'])->name('login');
Route::post('login', [HomeController::class, 'doLogin']);
Route::get('logout', [HomeController::class, 'doLogout'])->name('logout');
Route::get('userlogout', [HomeController::class, 'doUserLogout'])->name('logout');

Route::get('signup', [HomeController::class, 'viewSignUp'])->name('signup');
Route::post('signup', [HomeController::class, 'doSignUp']);

//Route::get('/', [HomeController::class, 'viewUserSignUp'])->name('usersignup');
//Route::post('/', [HomeController::class, 'doUserSignUp']);
Route::get('usersignup', [HomeController::class, 'viewUserSignUp'])->name('usersignup');
Route::post('usersignup', [HomeController::class, 'doUserSignUp']);

Route::get('otp', [HomeController::class, 'viewOtp'])->name('otp');
Route::post('otp', [HomeController::class, 'submitOtp']);

Route::get('userotp', [HomeController::class, 'viewUserOtp'])->name('otp');
Route::post('userotp', [HomeController::class, 'submitUserOtp']);

Route::get('complete', [HomeController::class, 'viewCompleteSignUp']);
Route::post('complete', [HomeController::class, 'completeSignUp']);

Route::get('categories-nominees', [HomeController::class, 'showCategoriesNominees']);
Route::get('vote-nominees', [HomeController::class, 'showVoteNominees']);
Route::post('vote-nominees', [HomeController::class, 'submitVoteNominees']);
Route::get('vote-nominees-2', [HomeController::class, 'showVoteNomineesDemoTwo']);
Route::post('vote-nominees-2', [HomeController::class, 'submitVoteNominees']);
Route::get('thankyou', [HomeController::class, 'viewThankyou'])->name('thankyou');

Route::get('total-votes', [HomeController::class, 'showTotalVotes']);
Route::get('all-voting-csv-data', [HomeController::class, 'allVotingCsvData']);
Route::get('all-voting-count-csv-data', [HomeController::class, 'allVotingCountCsvData']);


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::group(['middleware' => ['auth']], function() {
   
    
});