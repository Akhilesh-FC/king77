<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PlinkoBetController extends Controller
{
    public function Plinko_Bet_History()
    {
        $bets = DB::table('plinko_bets')->orderByDesc('id')->get();
      return view('plinko.plinkohistory', compact('bets'));
    }
	
	
	public function Mines_Bet_History()
{
    $bets = DB::table('minegame_bet')->orderByDesc('id')
     ->paginate(10); // Har page me 10 records
     //->get();

    return view('plinko.miens', compact('bets')); 
}

	

}
