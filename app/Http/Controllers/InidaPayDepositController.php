<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class InidaPayDepositController extends Controller
{
    public function indianpay_deposit_index($id)
    {
        //  $deposits= DB::select("SELECT payins.*,users.username AS uname,users.id As userid, users.mobile As mobile FROM `payins` LEFT JOIN users ON payins.user_id=users.id WHERE payins.status = '$id'");
        $deposits=DB::select("SELECT payins.*, users.username AS uname, users.id AS userid, users.mobile AS mobile FROM payins LEFT JOIN users ON payins.user_id = users.id WHERE payins.status = $id AND users.id IS NOT NULL");
         //dd($deposits);
        return view('deposit.deposit')->with('deposits',$deposits)->with('id',$id);
        
    }
    
    public function indianpay_payin_reject(string $id){

                DB::table('payins')->where('id', $id)->update([
                        'status' => 3
                ]);

                return redirect()->back()->with('success', 'Successfully Updated.');
        }

// 	public function payin_success(Request $request, $id)
// {
//     $pin = 2020;
//     $inputPin = $request->input('pin');

//     if ($inputPin != $pin) {
//         return redirect()->back()->with('error', 'Invalid pin. Please try again.');
//     }

//     if (!$request->session()->has('id')) {
//         return redirect()->back()->with('error', 'Session expired!');
//     }

//     $payin = DB::table('payins')->where('id', $id)->first();

//     if (!$payin) {
//         return redirect()->back()->with('error', 'Payin details not found!');
//     }

//     if ($payin->status != 1) {
//         return redirect()->back()->with('error', 'Payin already approved!');
//     }

//     $amount = $payin->cash;
//     $userId = $payin->user_id;
//     $hashId = $payin->transaction_id;
//     $now = now();

//     // Payin status update
//     DB::table('payins')->where('id', $id)->update(['status' => 2]);

//     // First Recharge Bonus Logic
//     $user = DB::table('users')->where('id', $userId)->first();
//     $referId = $user->referral_user_id;
//     $firstRecharge = $user->first_recharge;

//     if ($firstRecharge == 0) {
//         $extra = DB::table('extra_first_deposit_bonus')->where('first_deposit_ammount', $amount)->first();

//         if ($extra) {
//             $bonus = $extra->bonus;
//             $totalAdd = $amount + $bonus;

//             DB::table('extra_first_deposit_bonus_claim')->insert([
//                 'userid'        => $userId,
//                 'extra_fdb_id'  => $extra->id,
//                 'amount'        => $amount,
//                 'bonus'         => $bonus,
//                 'status'        => 0,
//                 'created_at'    => $now,
//                 'updated_at'    => $now,
//             ]);
//         } else {
//             $bonus = 0;
//             $totalAdd = $amount;
//         }

//         DB::table('users')->where('id', $userId)->update([
//             'wallet'                => DB::raw("wallet + $totalAdd"),
//             'first_recharge'        => 1,
//             'first_recharge_amount' => DB::raw("first_recharge_amount + $totalAdd"),
//             'recharge'              => DB::raw("recharge + $totalAdd"),
//             'total_payin'           => DB::raw("total_payin + $totalAdd"),
//             'no_of_payin'           => DB::raw("no_of_payin + 1"),
//             'deposit_balance'       => DB::raw("deposit_balance + $totalAdd"),
//         ]);

//         if ($referId) {
//             DB::table('users')->where('id', $referId)->update([
//                 'yesterday_payin'          => DB::raw("yesterday_payin + $amount"),
//                 'yesterday_no_of_payin'    => DB::raw("yesterday_no_of_payin + 1"),
//                 'yesterday_first_deposit'  => DB::raw("yesterday_first_deposit + $amount"),
//                 'created_at'               => $now,
//             ]);
//         }

//     } else {
//         // Normal recharge
//         DB::table('users')->where('id', $userId)->update([
//             'wallet'          => DB::raw("wallet + $amount"),
//             'recharge'        => DB::raw("recharge + $amount"),
//             'total_payin'     => DB::raw("total_payin + $amount"),
//             'no_of_payin'     => DB::raw("no_of_payin + 1"),
//             'deposit_balance' => DB::raw("deposit_balance + $amount"),
//         ]);

//         if ($referId) {
//             DB::table('users')->where('id', $referId)->update([
//                 'yesterday_payin'       => DB::raw("yesterday_payin + $amount"),
//                 'yesterday_no_of_payin' => DB::raw("yesterday_no_of_payin + 1"),
//             ]);
//         }
//     }

//     // Bonus for deposit (10% optional)
//     //$bonus = $amount * 0.10;
//     $bonus = 0;

//     DB::table('wallet_history')->insert([
//         'userid'     => $userId,
//         'amount'     => $bonus,
//         'subtypeid'  => 5,
//         'description'=> 'Deposit Bonus',
//         'created_at' => $now,
//         'updated_at' => $now,
//     ]);

//     DB::table('users')->where('id', $userId)->update([
//         'wallet' => DB::raw("wallet + $bonus"),
//     ]);

//     return redirect()->back()->with('success', 'Payin approved!');
// }

public function indianpay_payin_success(Request $request, $id)
{
    $pin = 2020;
    $inputPin = $request->input('pin');

    if ($inputPin != $pin) {
        return redirect()->back()->with('error', 'Invalid pin. Please try again.');
    }

    if (!$request->session()->has('id')) {
        return redirect()->back()->with('error', 'Session expired!');
    }

    $payin = DB::table('payins')->where('id', $id)->first();

    if (!$payin) {
        return redirect()->back()->with('error', 'Payin details not found!');
    }

    if ($payin->status != 1) {
        return redirect()->back()->with('error', 'Payin already approved!');
    }

    $amount = $payin->cash;
    $userId = $payin->user_id;
    $hashId = $payin->transaction_id;
    $extraFdbId = $payin->extra_fdb_id;
    $extra_fd_bonus = $payin->bonus; // 🔥 bonus taken from payins table
    $now = now();

    // Update payin status to approved
    DB::table('payins')->where('id', $id)->update(['status' => 2]);

    $user = DB::table('users')->where('id', $userId)->first();
    $referId = $user->referral_user_id;
    $firstRecharge = $user->first_recharge;

    // 10% bonus
    // $bonus = $amount * 0.10;
    // $totalWithBonus = $amount + $bonus;
    // $rechargeToAdd = $totalWithBonus * 5;
    
        if ($extraFdbId == 1) {
        // ✅ Bonus already exists in payins table
        $bonus = $extra_fd_bonus;
        $totalWithBonus = $amount + $bonus;
        $rechargeToAdd = $totalWithBonus * 5;

        // 🛑 No need to add bonus again (skip wallet_history insert later)
        $skipBonusInsert = true;
    } else {
        // ✅ Regular 10% bonus flow
        $bonus = $amount * 0.10;
        $totalWithBonus = $amount + $bonus;
        $rechargeToAdd = $totalWithBonus * 5;

        $skipBonusInsert = false;
    }


    // First recharge bonus entry (if first time)
    if ($firstRecharge == 0) {
        DB::table('users')->where('id', $userId)->update([
            'first_recharge'        => 1,
            'first_recharge_amount' => DB::raw("first_recharge_amount + $totalWithBonus"),
        ]);
    }

    // Update user wallet, recharge, and other fields
    DB::table('users')->where('id', $userId)->update([
        'wallet'          => DB::raw("wallet + $totalWithBonus"),
        'recharge'        => DB::raw("recharge + $rechargeToAdd"),
        'total_payin'     => DB::raw("total_payin + $amount"),
        'no_of_payin'     => DB::raw("no_of_payin + 1"),
        'deposit_balance' => DB::raw("deposit_balance + $amount"),
    ]);

    // Insert wallet history entry for bonus
    DB::table('wallet_history')->insert([
        'userid'     => $userId,
        'amount'     => $bonus,
        'subtypeid'  => 5,
        'description'=> 'Deposit Bonus (10%)',
        'created_at' => $now,
        'updated_at' => $now,
    ]);
    
    // ✅ IF extra_fdb_id is between 1 to 10 (inclusive), insert claim record
    if (!empty($extraFdbId) && $extraFdbId >= 1 && $extraFdbId <= 10) {
        DB::table('extra_first_deposit_bonus_claim')->insert([
            'userid'        => $userId,
            'amount'         => $amount,
            'bonus'          => $extra_fd_bonus,
            'status'         => 1,
            'extra_fdb_id'   => $extraFdbId,
            'created_at'     => $now,
            'updated_at'     => $now,
        ]);
    }

    // Update referrer stats if exists
    if ($referId) {
        DB::table('users')->where('id', $referId)->update([
            'yesterday_payin'          => DB::raw("yesterday_payin + $amount"),
            'yesterday_no_of_payin'    => DB::raw("yesterday_no_of_payin + 1"),
            'yesterday_first_deposit'  => $firstRecharge == 0 ? DB::raw("yesterday_first_deposit + $amount") : DB::raw("yesterday_first_deposit"),
            'created_at'               => $now,
        ]);
    }

    return redirect()->back()->with('success', 'Payin approved with 10% bonus and recharge bonus updated!');
}

	


    public function indianpay_deposit_delete(Request $request,$id)
    {
    
		$value = $request->session()->has('id');
	
        if(!empty($value))
        {
        $data=DB::delete("DELETE FROM `payins` WHERE id=$id");
       
       return redirect()->back()->with('success', 'Deleted successfully!');
			  }
        else
        {
           return redirect()->route('login');  
        }
    }
    
    
    public function indianpay_deposit_delete_all(Request $request)
    {
        
		$value = $request->session()->has('id');
        if(!empty($value))
        {
        $data=DB::delete("DELETE FROM `payins` WHERE status=1");
       
       return redirect()->back()->with('success', 'All Deleted successfully!');
			  }
        else
        {
           return redirect()->route('login');  
        }
    }
    

}
