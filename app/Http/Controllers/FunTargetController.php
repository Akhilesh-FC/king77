<?php

namespace App\Http\Controllers;

use App\Models\{Spin,Jackpot,JackpotMultiplier};
use Illuminate\Http\Request;
use Carbon\Carbon;

use Illuminate\Support\Facades\DB; // ✅ Sahi import


class FunTargetController extends Controller
{
      
    
//   public function getProfitSummary()
// {
//     $today = Carbon::today();

//     // 🔹 Total (all-time)
//     $total = DB::table('fun_bets')
//         ->selectRaw('SUM(amount) as total_amount, SUM(win_amount) as total_win_amount')
//         ->first();
//         dd($total);

//     $totalAdminProfit = $total->total_amount - $total->total_win_amount;
//     $totalUserProfit = $total->total_win_amount - $total->total_amount;

//     // 🔹 Today only
//     $todayData = DB::table('fun_bets')
//         ->whereDate('created_at', $today)
//         ->selectRaw('SUM(amount) as today_amount, SUM(win_amount) as today_win_amount')
//         ->first();

//     $todayAdminProfit = $todayData->today_amount - $todayData->today_win_amount;
//     $todayUserProfit = $todayData->today_win_amount - $todayData->today_amount;

//     return response()->json([
//         'total_admin_profit' => round($totalAdminProfit, 2),
//         'total_user_profit' => round($totalUserProfit, 2),
//         'today_admin_profit' => round($todayAdminProfit, 2),
//         'today_user_profit' => round($todayUserProfit, 2),
//     ]);
// }

//  public function futurePredictions()
//     {
//         $data = DB::table('fun_admin_result as fpr')
//             ->select(
//                 'fpr.id',
//                 'fpr.period_no',
//                 'fpr.number as predicted_number',
//                 DB::raw('IFNULL(fr.number, "pending") as result_number'),
//                 'fpr.created_at',
//                 'fpr.updated_at'
//             )
//             ->leftJoin('fun_results as fr', 'fr.game_no', '=', 'fpr.period_no')
//             ->orderByDesc('fpr.id')
//             ->get();

//         return response()->json($data);
//     }

//     public function getUserBets()
//     {
//         $data = DB::table('fun_bets')
//             ->orderBy('id', 'desc')
//             ->get();

//         return response()->json($data);
//     }

    
    public function fun_adminresults(){
        $records = DB::table('fun_admin_result')->paginate(10);
        return view('funtarget.adminresults', compact('records'));
    }
    
    public function fun_bets(){
        $records = DB::table('fun_bets')->paginate(10);
        return view('funtarget.bets', compact('records'));
    }
    
    
    public function fun_results(){
        $records = DB::table('fun_results')->paginate(10);
        return view('funtarget.results', compact('records'));
    }
	

// public function fun_index()
// {
//     // Direct DB facade use karte hue jackpot_multipliers table se data fetch
//     $jackpot_multiplier = DB::table('jackpot_multipliers')->get();
	
// 	//$period_no = DB::table('fun_bet_logs')->get();
// 	$period_no = DB::table('fun_bet_logs')->orderBy('id', 'desc')->value('games_no');


//     // Jackpot table se id = 1 wala record fetch
//     $jackpot = DB::table('jackpots')->where('id', 1)->first();

//     // spingame_settings table se id = 1 wala record fetch
//     $game_settings = DB::table('fun_game_settings')->where('id', 1)->first();

//     // View ko data pass karna
//     return view('funtarget.index', [
//         'fun_game_settings' => $game_settings,
//         'jackpot' => $jackpot,
//         'jackpot_multiplier' => $jackpot_multiplier,
// 		'period_no' => $period_no
//     ]);
// }

public function fun_index()
{
    // 🔹 Get jackpot multipliers
    $jackpot_multiplier = DB::table('jackpot_multipliers')->get();

    // 🔹 Get latest period number
    $period_no = DB::table('fun_bet_logs')->orderBy('id', 'desc')->value('games_no');

    // 🔹 Get jackpot settings
    $jackpot = DB::table('jackpots')->where('id', 1)->first();

    // 🔹 Get game settings
    $game_settings = DB::table('fun_game_settings')->where('id', 1)->first();

    // 🔽🔽🔽 Start: Profit Summary Logic 🔽🔽🔽
    $today = \Carbon\Carbon::today();

    // Total profit (all time)
    $total = DB::table('fun_bets')
        ->selectRaw('SUM(amount) as total_amount, SUM(win_amount) as total_win_amount')
        ->first();

    $totalAdminProfit = $total->total_amount - $total->total_win_amount;
    $totalUserProfit = $total->total_win_amount;  // Just sum of win_amount

    // Today's profit
    $todayData = DB::table('fun_bets')
        ->whereDate('created_at', $today)
        ->selectRaw('SUM(amount) as today_amount, SUM(win_amount) as today_win_amount')
        ->first();

    $todayAdminProfit = $todayData->today_amount - $todayData->today_win_amount;
    $todayUserProfit = $todayData->today_win_amount;  // Just sum of today's win_amount

    // ✅ Total Users Playing in current period
    $totalUsersPlaying = DB::table('fun_bets')
        ->where('games_no', $period_no)
        ->distinct('user_id')
        ->count('user_id');
    // 🔼🔼🔼 End: Profit Summary Logic 🔼🔼🔼
    
    $futurePredictions = DB::table('fun_admin_result as fpr')
        ->select(
            'fpr.id',
            'fpr.games_no',
            'fpr.number as predicted_number',
            DB::raw('IFNULL(fr.number, "pending") as result_number'),
            'fpr.created_at',
            'fpr.updated_at'
        )
        ->leftJoin('fun_results as fr', 'fr.games_no', '=', 'fpr.games_no')
        ->orderByDesc('fpr.id')
        ->paginate(10);  // Pagination here
        

    $userBets = DB::table('fun_bets')
        ->orderBy('id', 'desc')
        ->paginate(10); // Pagination here
        // dd($futurePredictions);

    return view('funtarget.index', [
        'fun_game_settings' => $game_settings,
        'jackpot' => $jackpot,
        'jackpot_multiplier' => $jackpot_multiplier,
        'period_no' => $period_no,
        'total_admin_profit' => round($totalAdminProfit, 2),
        'total_user_profit' => round($totalUserProfit, 2),  // updated
        'today_admin_profit' => round($todayAdminProfit, 2),
        'today_user_profit' => round($todayUserProfit, 2),  // updated
        'total_users_playing' => $totalUsersPlaying,
        'futurePredictions'=> $futurePredictions,
        'userBets' => $userBets
    ]);
}
//future result store//
 public function store(Request $request)
    {
        $request->validate([
            
            'game_no' => 'required|string|max:255',
            'number'  => 'required|numeric|between:0,9',
        ]);

        DB::table('fun_admin_result')->insert([
            'games_no' => $request->game_no,
            'number'   => $request->number,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return redirect()->back()->with('success', 'Future result scheduled successfully.');
    }

    
     public function fun_update(Request $request)
{
    // Fetch the game number (period_no) from the ab_bet_logs table
    $gamesno = DB::select("SELECT games_no FROM fun_bet_logs ORDER BY games_no ASC LIMIT 1");
    $game_no = $gamesno[0]->games_no;

   //dd($gamesno);
        // Get the jackpot value from the request
        $jackpot = $request->jackpot;

        // Update the jackpot in the ab_admin_winner_result table for the corresponding period_no
        DB::update("UPDATE fun_admin_result SET jackpot = ? WHERE games_no = ?", [$jackpot, $game_no]);
        
        // Redirect back to the previous page
        return redirect()->back();
   
}

    
}

