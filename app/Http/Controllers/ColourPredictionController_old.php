<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Facades\Storage;
use DB;

class ColourPredictionController extends Controller
{
   public function colour_prediction_create($gameid)
    {
        $bets = DB::select("SELECT betlogs.*,game_settings.winning_percentage AS parsantage ,game_settings.id AS id FROM `betlogs` LEFT JOIN game_settings ON betlogs.game_id=game_settings.id where betlogs.game_id=$gameid Limit 10;");

        return view('colour_prediction.index')->with('bets', $bets)->with('gameid', $gameid);
    }

    public function fetchData($gameid)
    {
        $bets = DB::select("SELECT betlogs.*,game_settings.winning_percentage AS parsantage ,game_settings.id AS id FROM `betlogs` LEFT JOIN game_settings ON betlogs.game_id=game_settings.id where betlogs.game_id=$gameid Limit 10;");

        return response()->json(['bets' => $bets, 'gameid' => $gameid]);
    }
	
	
	public function store(Request $request)
	{
		
// 	$datetime=now();
	  //$gamesno=$request->gamesno+1;
      $gameid=$request->game_id;
		 $gamesno=$request->games_no;
         $number=$request->number;
	
		 
        DB::insert("INSERT INTO `admin_winner_results`( `gamesno`, `gameId`, `number`, `status`) VALUES ('$gamesno','$gameid','$number','1')");
         
        
             return redirect()->back(); 
	}
  

// public function update(Request $request)
//       {
// 	   //dd($request);

// 	   $gamid=$request->id;
	
//         $parsantage=$request->parsantage;
//               $data= DB::select("UPDATE `game_settings` SET `winning_percentage` = '$parsantage' WHERE `id` ='$gamid'");
	         
         
//              return redirect()->back();
          
//       }

public function color_update(Request $request)
      {
	   
	   $gamid=$request->id;
	
        $parsantage=$request->parsantage;
               $data= DB::select("UPDATE `game_settings` SET `winning_percentage` = '$parsantage' WHERE `id` ='$gamid'");
	         
         
             return redirect()->back();
          
      }
   
      
	public function scheduleFutureResult(Request $request)
{
		//dd($request->all());
		
    $request->validate([
        'gameid'      => 'required|integer',
        'period_num'  => 'required',
        'card_number' => 'required'
    ]);

    $check = DB::table('admin_winner_results')
                ->where('gameid', $request->gameid)
                ->where('gamesno', $request->period_num)
                ->first();

    if ($check) {
        return redirect()->back()->with('error', 'Result already scheduled for this period!');
    }

    $insert = DB::table('admin_winner_results')->insert([
        'gameid'   => $request->gameid,
        'gamesno'  => $request->period_num,
        'number'   => $request->card_number,
        'created_at' => now()
    ]);

    if ($insert) {
        return redirect()->back()->with('success', 'Future result scheduled successfully.');
    } else {
        return redirect()->back()->with('error', 'Something went wrong!');
    }
}


}
