<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\User;
use Validator;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;

class PayinController extends Controller
{
public function payin(Request $request)
{
       
         $validator = Validator::make($request->all(), [
            'user_id' => 'required|exists:users,id',
            'cash' => 'required|numeric|min:110',
            'type' => 'required',
        ]);
        $validator->stopOnFirstFailure();

        if ($validator->fails()) {
            $response = [
                'status' => 400,
                'message' => $validator->errors()->first()
            ];

            return response()->json($response);
        }

        
        
	$cash = $request->cash;
    // $extra_amt = $request->extra_cash;
     $type = $request->type;
    $userid = $request->user_id;
	   //	$total_amt=$cash+$extra_amt+$bonus;
		 
              $date = date('YmdHis');
        $rand = rand(111111111, 999999999);
        $orderid = 'TXT'. $rand;
        $datetime=now();
        $check_id = DB::table('users')->where('id',$userid)->first();
        $merchantid =DB::table('admin_settings')->where('id',12)->value('longtext');
        
        
         
        $mobile=$check_id->mobile;
       if (!$mobile || !preg_match('/^[6-9]\d{9}$/', $mobile)) {
            // Invalid mobile number
             return response()->json(['status' => 400, 'message' => 'Invalid mobile number.']);
        }
        
        
        if($type == 3){
        if ($check_id) {
            $redirect_url = env('APP_URL')."api/checkPayment?order_id=$orderid";
            //dd($redirect_url);
            $insert_payin = DB::table('payins')->insert([
                'user_id' => $request->user_id,
                'cash' => $request->cash,
                'type' => $request->type,
                'order_id' => $orderid,
                'redirect_url' => $redirect_url,
                'status' => 1, // Assuming initial status is 0
				'typeimage'=>"https://root.king77.games/uploads/fastpay_image.png",
                'created_at'=>$datetime,
                'updated_at'=>$datetime
            ]);
         // dd($redirect_url);
            if (!$insert_payin) {
                return response()->json(['status' => 400, 'message' => 'Failed to store record in payin history!']);
            }
 
            $postParameter = [
                'merchantid' =>$merchantid,
                'orderid' => $orderid,
                'amount' => $request->cash,
                'name' => $check_id->u_id,
                'email' => "abc@gmail.com",
                'mobile' => $check_id->mobile,
                'remark' => 'payIn',
                'type'=>$request->type,
                'redirect_url' => env('APP_URL')."api/checkPayment?order_id=$orderid"
              // 'redirect_url' => config('app.base_url') ."/api/checkPayment?order_id=$orderid"
            ];
             //print_r($postParameter);die;
            //echo json_encode($postParameter);die;


            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => 'https://indianpay.co.in/admin/paynow',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0, 
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS => json_encode($postParameter),
                CURLOPT_HTTPHEADER => array(
                    'Content-Type: application/json',
                    'Cookie: ci_session=1ef91dbbd8079592f9061d5df3107fd55bd7fb83'
                ),
            ));

            $response = curl_exec($curl);
            curl_close($curl);
             
			echo $response;
		//	dd($response);
        } else {
            return response()->json([
                'status' => 400,
                'message' => 'Internal error!'
            ]);
        }
            
        }else{
          return response()->json([
                'status' => 400,
                'message' => 'USDT is Not Supported ....!'
            ]); 
        }
    }


// public function checkPayment(Request $request)
// {
//     $orderid = $request->input('order_id');
//     if (empty($orderid)) {
//         return response()->json(['status' => 400, 'message' => 'Order Id is required']);
//     }

//     // Initialize cURL request to fetch payment status
//     $curl = curl_init();
//     curl_setopt_array($curl, [
//         CURLOPT_URL => "https://indianpay.co.in/admin/payinstatus?order_id=$orderid",
//         CURLOPT_RETURNTRANSFER => true,
//         CURLOPT_ENCODING => '',
//         CURLOPT_MAXREDIRS => 10,
//         CURLOPT_TIMEOUT => 0,
//         CURLOPT_FOLLOWLOCATION => true,
//         CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
//         CURLOPT_CUSTOMREQUEST => 'GET',
//     ]);

//   // echo  
//   $response = curl_exec($curl);
//     curl_close($curl);

//     // Decode response
//     $data = json_decode($response);
//     $status = $data->status ?? NULL;
//     $transaction_id = intval($data->transactionid ?? NULL); // Convert to integer, default to 0 if not set

//     // Find the matching order in the database
//     $match_order = DB::table('payins')->where('order_id', $orderid)->where('status', 1)->first();

//     if (!$match_order) {
//         return response()->json(['status' => 400, 'message' => 'Order id not found or already processed']);
//     }

//     $uid = $match_order->user_id;
//     $cash = $match_order->cash;
//     $type = $match_order->type;
//     $orderid = $match_order->order_id;
//     $datetime = now();

//     // Update payin status to 'processed' (2)
//     $update_payin = DB::table('payins')
//         ->where('order_id', $orderid)
//         ->where('status', 1)
//         ->where('user_id', $uid)
//         ->update([
//             'status' => 2,
//             'response' => $status,
//             'transaction_id' => $transaction_id
//         ]);

//     if (!$update_payin) {
//         return response()->json(['status' => 400, 'message' => 'Failed to update payment status!']);
//     }

//     // Get referral user details if available
//     $referid = DB::select("SELECT referral_user_id, first_recharge FROM `users` WHERE id = ?", [$uid]);
//     if (empty($referid)) {
//         return response()->json(['status' => 400, 'message' => 'User not found']);
//     }

//     $first_recharge = $referid[0]->first_recharge;
//     $referuserid = $referid[0]->referral_user_id;

//     // Check if it's the user's first recharge
//     if ($first_recharge == 0) {
//         $extra = DB::select("SELECT * FROM `extra_first_deposit_bonus` WHERE `first_deposit_ammount` <= 300 AND `max_amount` >= 300");

//         if (empty($extra)) {
//             $extra = DB::select("SELECT * FROM `extra_first_deposit_bonus` WHERE `first_deposit_ammount` = ?", [$cash]);
//         }

//         if (count($extra) > 0) {
//             $id = $extra[0]->id;
//             $first_deposit_ammount = $extra[0]->first_deposit_ammount;
//             $bonus = $extra[0]->bonus;
//             $amount = $bonus + $first_deposit_ammount;

//             // Insert into extra first deposit bonus claim
//             DB::insert("INSERT INTO `extra_first_deposit_bonus_claim` (`userid`, `extra_fdb_id`, `amount`, `bonus`, `status`, `created_at`, `updated_at`) VALUES (?, ?, ?, ?, 0, ?, ?)", [
//                 $uid, $id, $first_deposit_ammount, $bonus, $datetime, $datetime
//             ]);
//         }

//         // Update user balance and first recharge status
//         $updateUser = DB::update("UPDATE users SET 
//             wallet = wallet + ?, 
//             first_recharge = 1, 
//             first_recharge_amount = first_recharge_amount + ?, 
//             recharge = recharge + ?, 
//             total_payin = total_payin + ?, 
//             no_of_payin = no_of_payin + 1, 
//             deposit_balance = deposit_balance + ?
//             WHERE id = ?", [$amount, $first_deposit_ammount, $cash, $amount, $amount, $uid]);
//     } else {
//         // Update user balance for subsequent recharges
//         $updateUser = DB::update("UPDATE users SET 
//             wallet = wallet + ?, 
//             recharge = recharge + ?, 
//             total_payin = total_payin + ?, 
//             no_of_payin = no_of_payin + 1, 
//             deposit_balance = deposit_balance + ?
//             WHERE id = ?", [$cash, $cash, $cash, $cash, $uid]);
//     }

//     // Check if update was successful
//     if ($updateUser) {
//         // Update the referral user's yesterday stats
//         DB::update("UPDATE users SET 
//             yesterday_payin = yesterday_payin + ?, 
//             yesterday_no_of_payin = yesterday_no_of_payin + 1, 
//             yesterday_first_deposit = yesterday_first_deposit + ? 
//             WHERE id = ?", [$cash, $cash, $referuserid]);

//         // Redirect to success page
//         return redirect()->away(env('APP_URL').'uploads/payment_success.php');
//     } else {
//         return response()->json(['status' => 400, 'message' => 'User balance update failed!']);
//     }
// }

public function checkPayment(Request $request)
{
    $orderid = $request->input('order_id');
    if (empty($orderid)) {
        return response()->json(['status' => 400, 'message' => 'Order Id is required']);
    }

    // Fetch payment status
    $curl = curl_init();
    curl_setopt_array($curl, [
        CURLOPT_URL => "https://indianpay.co.in/admin/payinstatus?order_id=$orderid",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'GET',
    ]);
    $response = curl_exec($curl);
    curl_close($curl);

    $data = json_decode($response);
    $status = $data->status ?? NULL;
    $transaction_id = intval($data->transactionid ?? NULL);

    // Match payin order
    $match_order = DB::table('payins')->where('order_id', $orderid)->where('status', 1)->first();
    if (!$match_order) {
        return response()->json(['status' => 400, 'message' => 'Order id not found or already processed']);
    }

    $uid = $match_order->user_id;
    $cash = $match_order->cash;
    $type = $match_order->type;
    $orderid = $match_order->order_id;
    $datetime = now();

    // Update payin status to approved
    DB::table('payins')
        ->where('order_id', $orderid)
        ->where('status', 1)
        ->where('user_id', $uid)
        ->update([
            'status' => 2,
            'response' => $status,
            'transaction_id' => $transaction_id
        ]);

    // Get referral and first recharge status
    $referData = DB::table('users')->select('referral_user_id', 'first_recharge')->where('id', $uid)->first();
    if (!$referData) {
        return response()->json(['status' => 400, 'message' => 'User not found']);
    }
    $first_recharge = $referData->first_recharge;
    $referuserid = $referData->referral_user_id;

    // Default bonus
    $bonus = 0;
    $totalWithBonus = $cash;

    if ($first_recharge == 0) {
        // Check extra first deposit bonus
        $extra = DB::select("SELECT * FROM `extra_first_deposit_bonus` WHERE `first_deposit_ammount` <= 500 AND `max_amount` >= 50000");
        if (empty($extra)) {
            $extra = DB::select("SELECT * FROM `extra_first_deposit_bonus` WHERE `first_deposit_ammount` = ?", [$cash]);
        }

        if (count($extra) > 0) {
            $id = $extra[0]->id;
            $bonus = $extra[0]->bonus;
            $first_deposit_ammount = $extra[0]->first_deposit_ammount;

            // Total with bonus
            $totalWithBonus = $first_deposit_ammount + $bonus;

            // Insert claim
            DB::table('extra_first_deposit_bonus_claim')->insert([
                'userid'        => $uid,
                'extra_fdb_id'  => $id,
                'amount'        => $first_deposit_ammount,
                'bonus'         => $bonus,
                'status'        => 0,
                'created_at'    => $datetime,
                'updated_at'    => $datetime
            ]);
        } else {
            // No extra FDB, fallback to 10% bonus
            $bonus = $cash * 0.10;
            $totalWithBonus = $cash + $bonus;
        }

        // 5x recharge value
        $rechargeToAdd = $totalWithBonus * 5;

        // Update first recharge user
        DB::table('users')->where('id', $uid)->update([
            'wallet'                => DB::raw("wallet + $totalWithBonus"),
            'first_recharge'        => 1,
            'first_recharge_amount' => DB::raw("first_recharge_amount + $totalWithBonus"),
            'recharge'              => DB::raw("recharge + $rechargeToAdd"),
            'total_payin'           => DB::raw("total_payin + $cash"),
            'no_of_payin'           => DB::raw("no_of_payin + 1"),
            'deposit_balance'       => DB::raw("deposit_balance + $cash"),
        ]);

        // Bonus history entry
        DB::table('wallet_history')->insert([
            'userid'     => $uid,
            'amount'     => $bonus,
            'subtypeid'  => 5,
            'description'=> 'Deposit Bonus (10%)',
            'created_at' => $datetime,
            'updated_at' => $datetime,
        ]);

    } else {
        // Subsequent recharge, bonus = 10%
        $bonus = $cash * 0.10;
        $totalWithBonus = $cash + $bonus;
        $rechargeToAdd = $totalWithBonus * 5;

        DB::table('users')->where('id', $uid)->update([
            'wallet'          => DB::raw("wallet + $totalWithBonus"),
            'recharge'        => DB::raw("recharge + $rechargeToAdd"),
            'total_payin'     => DB::raw("total_payin + $cash"),
            'no_of_payin'     => DB::raw("no_of_payin + 1"),
            'deposit_balance' => DB::raw("deposit_balance + $cash"),
        ]);

        DB::table('wallet_history')->insert([
            'userid'     => $uid,
            'amount'     => $bonus,
            'subtypeid'  => 5,
            'description'=> 'Deposit Bonus (10%)',
            'created_at' => $datetime,
            'updated_at' => $datetime,
        ]);
    }

    // Update referrer stats
    if ($referuserid) {
        DB::table('users')->where('id', $referuserid)->update([
            'yesterday_payin'         => DB::raw("yesterday_payin + $cash"),
            'yesterday_no_of_payin'   => DB::raw("yesterday_no_of_payin + 1"),
            'yesterday_first_deposit' => $first_recharge == 0 ? DB::raw("yesterday_first_deposit + $cash") : DB::raw("yesterday_first_deposit"),
        ]);
    }

    return redirect()->away(env('APP_URL') . 'uploads/payment_success.php');
}

    

public function withdraw_request(Request $request)
{
    
    		  $date = date('Ymd');
            $rand = rand(1111111, 9999999);
            $transaction_id = $date . $rand;
    	
    		 $userid=$request->userid;
    		 $amount=$request->amount;
    		   $validator=validator ::make($request->all(),
            [
                'userid'=>'required',
    			'amount'=>'required',
    			
            ]);
            $date=date('Y-m-d h:i:s');
            if($validator ->fails()){
                $response=[
                    'success'=>"400",
                    'message'=>$validator ->errors()
                ];                                                   
                
                return response()->json($response,400);
            }
          
    		 $datetime = date('Y-m-d H:i:s');
    		 
             $user = DB::select("SELECT * FROM `users` where `id` =$userid");
    		 $account_id=$user[0]->accountno_id;
    		 $mobile=$user[0]->mobile;
    		 $wallet=$user[0]->wallet;
    // 		 dd($wallet);
    		 $accountlist=DB::select("SELECT * FROM `bank_details` WHERE `id`=$account_id");
    		 
    		 $insert= DB::table('transaction_history')->insert([
            'userid' => $userid,
            'amount' => $amount,
            'mobile' => $mobile,
    		  'account_id'=>$account_id,
            'status' => 0,
    			 'type'=>1,
            'date' => $datetime,
    		  'transaction_id' => $transaction_id,
        ]);
    		  DB::select("UPDATE `users` SET `wallet`=`wallet`-$amount,`winning_wallet`=`winning_wallet`-$amount  WHERE `id`=$userid");
              if($insert){
              $response =[ 'success'=>"200",'data'=>$insert,'message'=>'Successfully'];return response ()->json ($response,200);
          }
          else{
           $response =[ 'success'=>"400",'data'=>[],'message'=>'Not Found Data'];return response ()->json ($response,400); 
          } 
        }
	

public function redirect_success(){
            return view('success');
        }

public function manual_payin(Request $request)
{
    $validator = Validator::make($request->all(), [
        'user_id' => 'required|exists:users,id',
        'cash' => 'required|numeric',
        'transaction_id' => 'nullable|integer',
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status' => 400,
            'message' => $validator->errors()->first()
        ]);
    }

    $inr = $request->cash;
    $image = $request->screenshot;
    $transaction_id = $request->transaction_id;
    $userid = $request->user_id;
    $datetime = now();
    $orderid = date('YmdHis') . rand(11111, 99999);

    if (empty($image) || $image === '0' || $image === 'null' || $image === null || $image === '' || $image === 0) {
        return response()->json([
            'status' => 400,
            'message' => 'Please Select Image'
        ]);
    }
    
    
    // Clean base64 string if it contains prefix
    $base64Data = preg_replace('#^data:image/\w+;base64,#i', '', $image);

    $imageData = base64_decode($base64Data);

    if ($imageData === false) {
        return response()->json([
            'status' => 400,
            'message' => 'Invalid base64 image'
        ]);
    }
    
     // Create upload directory if not exists
    $uploadDir = public_path('uploads');
    if (!file_exists($uploadDir)) {
        mkdir($uploadDir, 0755, true);
    }

    $fileName = 'screenshot_' . time() . '_' . rand(1000, 9999) . '.png';
    $filePath = $uploadDir . '/' . $fileName;

    if (!file_put_contents($filePath, $imageData)) {
        return response()->json([
            'status' => 400,
            'message' => 'Failed to save image'
        ]);
    }

    // Prepare image URL path for DB
    $path = 'uploads/' . $fileName;

    // Set default path string (for DB)
    // $path = 'screenshot_image/';

    // if (!empty($image)) {
    //     $imageData = base64_decode($image);

    //     if ($imageData === false) {
    //         return response()->json([
    //             'status' => 400,
    //             'message' => 'Invalid base64 encoded image'
    //         ]);
    //     }


    $insert_usdt = DB::table('payins')->insert([
        'user_id' => $userid,
        'cash' => $inr,
        'transaction_id' => $transaction_id,
        'type' => '1',
        'typeimage' => $path,
        'order_id' => $orderid,
        'status' => 1,
        'created_at' => $datetime,
        'updated_at' => $datetime
    ]);

    if ($insert_usdt) {
        return response()->json([
            'status' => 200,
            'message' => 'Manual Payment Request sent successfully. Please wait for admin approval.'
        ]);
    } else {
        return response()->json([
            'status' => 400,
            'message' => 'Failed to process payment'
        ]);
    }

    }
    

public function qr_view() 
{

       $show_qr = DB::select("SELECT* FROM `usdt_qr`");
       //$show_qr = DB::select("SELECT `name`, `qr_code` FROM `usdt_qr`");

        if ($show_qr) {
            $response = [
                'message' => 'Successfully',
                'status' => 200,
                'data' => $show_qr
            ];

            return response()->json($response,200);
        } else {
            return response()->json(['message' => 'No record found','status' => 400,
                'data' => []], 400);
        }
    }
    
public function usdt_payin(Request $request)
{
    $validator = Validator::make($request->all(), [
        'user_id' => 'required|exists:users,id',
        'cash' => 'required|numeric',
        'type' => 'required|integer',
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status' => 400,
            'message' => $validator->errors()->first()
        ]);
    }

    $usdt = $request->cash;
    $image = $request->screenshot;
    $type = $request->type;
    $userid = $request->user_id;
    $inr = $usdt;
    $datetime = now();
    $orderid = date('YmdHis') . rand(11111, 99999);

    // Validate image input
    if (empty($image) || $image === '0' || $image === 'null' || $image === null || $image === '' || $image === 0) {
        return response()->json([
            'status' => 400,
            'message' => 'Please Select Image'
        ]);
    }

    // Handle image saving
    $path = '';
    if (!empty($image)) {
        $imageData = base64_decode($image);
        if ($imageData === false) {
            return response()->json([
                'status' => 400,
                'message' => 'Invalid base64 encoded image'
            ]);
        }

        // Save image to /public/usdt_images directory
        $newName = Str::random(6) . '.png';
        $relativePath = 'usdt_images/' . $newName;

        // Ensure directory exists
        if (!file_exists(public_path('usdt_images'))) {
            mkdir(public_path('usdt_images'), 0775, true);
        }

        // Save the image file
        if (!file_put_contents(public_path($relativePath), $imageData)) {
            return response()->json([
                'status' => 400,
                'message' => 'Failed to save image'
            ]);
        }

        // Generate URL to store in DB
        $path = asset('usdt_images/' . $newName);
    }

    // Handle type == 0 (payin logic)
    if ($type == 1) {
        $insert_usdt = DB::table('payins')->insert([
            'user_id' => $userid,
            'cash' => $usdt * 90,
            'usdt_amount' => $inr,
            'type' => '1',
            'typeimage' => $path,
            'order_id' => $orderid,
            'status' => 1,
            'created_at' => $datetime,
            'updated_at' => $datetime
        ]);

        if ($insert_usdt) {
            return response()->json([
                'status' => 200,
                'message' => 'USDT Payment Request sent successfully. Please wait for admin approval.'
            ]);
        } else {
            return response()->json([
                'status' => 500,
                'message' => 'Failed to insert USDT Payment'
            ]);
        }
    } else {
        return response()->json([
            'status' => 400,
            'message' => 'Invalid Type'
        ]);
    }
}


}
