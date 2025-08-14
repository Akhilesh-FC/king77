<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use App\Models\{AccountDetail,WithdrawHistory,User};
// use App\Models\Project_maintenance;

class IndianPayWidthdrawlController extends Controller
{
    public function indianpay_widthdrawl_index($id)
    {
		
        // Fetch all records from the Project_maintenance model
        $widthdrawls = DB::select("SELECT withdraw_histories.*, users.username AS uname, users.mobile AS mobile, account_details.account_number AS acno, account_details.bank_name AS bname, account_details.ifsc_code AS ifsc FROM withdraw_histories LEFT JOIN users ON withdraw_histories.user_id = users.id LEFT JOIN account_details ON account_details.id = withdraw_histories.account_id WHERE withdraw_histories.`status`=$id
         AND withdraw_histories.type = 3 
         order by withdraw_histories.id desc ;");

        // Pass the data to the view and load the 'project_maintenance.index' Blade file
        return view('indianpay_widthdrawl.index', compact('widthdrawls'))->with($id,'id');
	 
			
    }

// 		salooonniiiii
public function indianpay_success(Request $request, $id)
{
    $value = $request->session()->has('id');
    
    if (!empty($value)) {
        // Get the data for the withdrawal request
        $data = DB::select("SELECT account_details.*, users.email AS email, users.mobile AS mobile, withdraw_histories.amount AS amount, admin_settings.longtext AS mid, 
                            (SELECT admin_settings.longtext FROM admin_settings WHERE id = 13) AS token, 
                            (SELECT admin_settings.longtext FROM admin_settings WHERE id = 14 ) AS orderid 
                            FROM account_details 
                            LEFT JOIN users ON account_details.user_id = users.id 
                            LEFT JOIN withdraw_histories ON withdraw_histories.user_id = users.id AND withdraw_histories.account_id = account_details.id 
                            LEFT JOIN admin_settings ON admin_settings.id = 12 
                            WHERE withdraw_histories.id = ?", [$id]);

        if (empty($data)) {
            // If no data is found, return an error or redirect
            return redirect()->route('indianpay_widthdrawl', '1')->with('error', 'No withdrawal data found for the specified ID.');
        }

        // If data exists, proceed with setting up the payout
        $object = $data[0];  // Get the first item from the array (as there should only be one)
        $name = $object->name;
        $ac_no = $object->account_number;
        $ifsc = $object->ifsc_code;
        $bankname = $object->bank_name;
        $email = $object->email;
        $mobile = $object->mobile;
        $amount = $object->amount;
        $mid = $object->mid;
        $token = $object->token;
        $orderid = $object->orderid;

        $rand = rand(11111111, 99999999);
        $randid = "$rand";

        // Prepare the payout data
        $payoutdata = json_encode([
            "merchant_id" => $mid,
            "merchant_token" => $token,
            "account_no" => $ac_no,
            "ifsccode" => $ifsc,
            "amount" => $amount,
            "bankname" => $bankname,
            "remark" => "payout",
            "orderid" => $randid,
            "name" => $name,
            "contact" => $mobile,
            "email" => $email
        ]);

        // Encode the payout data using base64
        $salt = base64_encode($payoutdata);

        // Prepare the JSON data to send via cURL
        $json = [
            "salt" => $salt
        ];

        // Initialize cURL session
        $curl = curl_init();
        curl_setopt_array($curl, [
            CURLOPT_URL => 'https://indianpay.co.in/admin/single_transaction',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => json_encode($json),
            CURLOPT_HTTPHEADER => ['Content-Type: application/json'],
        ]);

        // Execute cURL request and get the response
        $response = curl_exec($curl);

        // Check for errors
        if (curl_errno($curl)) {
            echo 'Error: ' . curl_error($curl);
        } else {
            // Print the response
            echo $response;
        }

        // Close cURL session
        curl_close($curl);

        // Update the withdraw history status with the response
        DB::select("UPDATE `withdraw_histories` SET `status` = '2', `response` = ? WHERE id = ?", [$response, $id]);

        return redirect()->route('indianpay_widthdrawl', '1')->with('key', 'value');
    } else {
        return redirect()->route('login');
    }
}
	
    public function indianpay_reject(Request $request,$id)
  {
		
		
  $rejectionReason = $request->input('msg');
		
		$data=DB::select("SELECT * FROM `withdraw_histories` WHERE id=$id;");
	
		$amt=$data[0]->amount;
		$useid=$data[0]->user_id;
         $value = $request->session()->has('id');
			
     if(!empty($value))
        {
            // dd("UPDATE `withdraw_histories` SET `status`='3' WHERE id=$id;");
     $ss= DB::select("UPDATE `withdraw_histories` SET `status`='3',`rejectmsg`='$rejectionReason' WHERE id=$id;");
    //dd("UPDATE `users` SET `wallet`=`wallet`+'$amt' WHERE id=$useid;");
	DB::select("UPDATE `users` SET `wallet`=`wallet`+'$amt' WHERE id=$useid;");
	//DB::select("UPDATE `users` SET `wallet`=`wallet`+'$amt',`winning_wallet`=`winning_wallet`+'$amt' WHERE id=$useid;");
		         //return view('widthdrawl.index', compact('widthdrawls'))->with($id,'0');
return redirect()->route('indianpay_widthdrawl', '1')->with('key', 'value');
		  }
		 else
        {
           return redirect()->route('login');  
        }
			

       // return redirect()->route('widthdrawl/0');
  }

    
    public function all_success()    
    {           
		$value = $request->session()->has('id');
		
     if(!empty($value))
        {
      DB::select("UPDATE `withdraw_histories` SET `status`='2' WHERE `status`='1';");
		         return view('widthdrawl.index', compact('widthdrawls'))->with($id,'1');
	 }
else
        {
           return redirect()->route('login');  
        }
			
      //return redirect()->route('widthdrawl/0');
    }
	

    // Encryption and Decryption Functions
    private function encryptData($data, $key, $iv)
    {
        $encrypted = openssl_encrypt($data, 'aes-256-cbc', $key, 0, $iv);
        if ($encrypted === false) {
            abort(500, 'Encryption failed');
        }
        return $encrypted;
    }

    private function decryptData($data, $key, $iv)
    {
        $decrypted = openssl_decrypt($data, 'aes-256-cbc', $key, 0, $iv);
        if ($decrypted === false) {
            abort(500, 'Decryption failed');
        }
        return $decrypted;
    }

    public function sendEncryptedPayoutRequest($id)
    {
        
        $validator = Validator::make(['id' => $id], [
            'id' => 'required|exists:withdraw_histories,id',
        ]);
        
        $withdrawHistory = WithdrawHistory::with('account','user')->where('id',$id)->where('type',1)->where('status',1)->first();
      
       
       
        $transactionId = now()->format('YmdHis') . rand(11111, 99999);
        
        $authId = 'M00006488';
        $authKey = 'tE2Pl4nM4Bj1Ez4lA9kP9fu7Qc5jG4jT';
    
        $amount = $withdrawHistory->amount;

        // Prepare JSON Data
        $jsonData = json_encode([
            "type" => "test",
            "description" => "Salary Payout",
            "AuthID" => $authId,
            "paymentRequests" => [
                [
                    "amount" => "$amount",
                    "ClientTxnId" => $withdrawHistory->order_id,
                    "txnMode" => "IMPS",
                    "account_number" => $withdrawHistory->account->account_number,
                    "account_Ifsc" => $withdrawHistory->account->ifsc_code,
                    "bank_name" => $withdrawHistory->account->bank_name,
                    "account_holder_name" => $withdrawHistory->account->name,
                    "beneficiary_name" => $withdrawHistory->account->name,
                    "vpa" => "NA",
                    "adf1" => $withdrawHistory->user->mobile,
                    "adf2" => $withdrawHistory->user->email,
                    "adf3" => "NA",
                    "adf4" => "NA",
                    "adf5" => "NA"
                ]
            ]
        ]);
        
        
        // dd($jsonData);

        if (!$jsonData) {
             return response()->json(['error' => 'Failed to encode JSON data'], 500);
            
        }

        // Encrypt Data
        $iv = substr($authKey, 0, 16);
        $encryptedData = $this->encryptData($jsonData, $authKey, $iv);

        // Prepare POST Data
        $postData = [
            'EncReq' => $encryptedData,
            'AuthID' => $authId
        ];

        // Send POST Request
        $url = 'https://dashboard.skill-pay.in/crmpre/PayoutBulkRaised';

        try {
            $response = Http::post($url, $postData);
            
            if ($response->failed()) {
                
                 user::where('id',$withdrawHistory->user_id)->where('status',1)
                    ->update(['wallet' => DB::raw("wallet + $withdrawHistory->amount")]);
                    
             WithdrawHistory::where('id',$id)->where('type',3)->where('status',1)->update(['status' => 3]);
             
             return redirect()->back()->with('error','Payout request failed!');
                
               // return response()->json(['error' => 'Failed to send request'], 500);
            }

            // Decode the response
            $responseData = $response->json();
            
           // return response()->json($responseData);
           
           WithdrawHistory::where('id',$id)->where('type',3)->where('status',1)->update(['status' => 2]);
           
           return redirect()->back()->with('success','Payout request was successful!');

        } catch (\Exception $e) {
            return response()->json(['error' => 'Request failed: ' . $e->getMessage()], 500);
        }
    }



public function withdraw_response()
{
    // Get the withdraw responses from the database
    $withdraw_responses = DB::select("SELECT `id`, `user_id`, `response`, `amount`, `status` FROM `withdraw_histories` WHERE `response` IS NOT NULL;");
    
    // Loop through the results
    foreach ($withdraw_responses as $response) {
        $id = $response->id;
        $userid = $response->user_id;
        $amount = $response->amount;
        $response_text = $response->response;
        $response_data = json_decode($response_text);
        $status = $response_data->status;
        
        // Skip if the withdrawal has already been processed (status is either 4 or 5)
        if ($response->status == 4 || $response->status == 5) {
            continue; // Skip to the next record
        }
        
        // Update the status in the database based on the response status
        if ($status == 200) {
            // Mark as successful withdrawal (status = 4)
            DB::update("UPDATE `withdraw_histories` SET `status` = ? WHERE `id` = ?", [4, $id]);
        } else {
            // Mark as failed withdrawal (status = 5), and revert the user's wallet amount
            DB::update("UPDATE `users` SET `wallet` = wallet + ? WHERE `id` = ?", [$amount, $userid]);
            DB::update("UPDATE `withdraw_histories` SET `status` = ? WHERE `id` = ?", [5, $id]);
        }
    }
}


	
	

}
