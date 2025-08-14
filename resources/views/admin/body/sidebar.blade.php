<div class="full_container">
         <div class="inner_container">
            <!-- Sidebar  -->
            <nav id="sidebar">
               <div class="sidebar_blog_1">
                  <div class="sidebar-header">
                     <div class="logo_section">
                        <a href="index.html"><img class="logo_icon img-responsive" src="images/logo/logo_icon.png" alt="#" /></a>
                     </div>
                  </div>
                  <div class="sidebar_user_info">
                     <div class="icon_setting"></div>
                     <div class="user_profle_side">
                        <div class="user_img"><img class="img-responsive" src="https://root.king77.games/public/images/layout_img/user_img.jpg" alt="#" /></div>
                        <div class="user_info">
                           <h6>Admin</h6>
                           <p><span class="online_animation"></span> Online</p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="sidebar_blog_2">
                  <h4>General</h4>
                  <ul class="list-unstyled components">
                     
                     <li><a href="{{route('dashboard')}}"><i class="fas fa-chart-line yellow_color"></i> <span>Dashboard</span></a></li>
<li>
    <a href="{{ route('gameList')}}" class="nav-item-custom">
        <i class="fas fa-gamepad"></i> 
        <span>Game List</span>
    </a>
</li>
                     <li><a href="{{route('attendance.index')}}"><i class="fa fa-clock-o purple_color2"></i> <span>Attendance</span></a></li>
                     <li><a href="{{route('users')}}"><i class="fa fa-user orange_color"></i> <span>Players</span></a></li>
                     {{-- <li><a href="{{route('category')}}"><i class="fa fa-list purple_color"></i> <span>Colour_prediction</span></a></li> --}}
                     {{-- <li><a href="{{route('colour_prediction')}}"><i class="fa fa-list purple_color"></i> <span>Colour_prediction</span></a></li> --}}
                     <li><a href="{{route('mlmlevel')}}"><i class="fa fa-list red_color"></i> <span>MlM Levels</span></a></li>
                     
                     
                     
                 @php
    $firstPart = DB::select("SELECT * FROM `game_settings` LIMIT 4");
    // id = 1 waale record ko find karo
    $recordWithId1 = collect($firstPart)->firstWhere('id', 1);
@endphp

@if($recordWithId1)
    <li>
        <a href="{{ route('colour_prediction', $recordWithId1->id) }}">
            <i class="fa fa-list red_color"></i>
            <span>Colour Prediction</span>
        </a>
    </li>
@endif

					  <li><a href="{{route('result' , 5)}}"><i class="fa fa-object-group blue2_color"></i><span>Aviator Game</span></a></li>
                      
     <!--@includeIf('admin.body.aviator_sidebar')-->
      <!--@includeIf('admin.body.dragon_sidebar')-->
      <!--<li><a href="{{route('andar_bahar',13)}}"><i class="fa fa-clone"></i> <span>Andar Bahar</span></a></li>-->
       
       <!--@includeIf('admin.body.Headtail_sidebar')-->
					 
                     {{-- <li>
                        <a href="#apps" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-shopping-cart blue2_color"></i> <span>Colour_prediction</span></a>
                        <ul class="collapse list-unstyled" id="apps">
                           <select class="form-control"  style="background-color:#14273A; color:#fff;">
                              
                              @foreach($colourpredictions as $item)
                              <option style="color:#fff;"><a href="{{route('colour_prediction',$item->id)}}">{{$item->name}}</a></option>
                              @endforeach
                            </select>
                        </ul>
                     </li> --}}
				<!--<li><a href="{{route('plinko_bet_history')}}"><i class="fa fa-gamepad purple_color2"></i> <span>Plinko</span></a></li>-->
					  
	<li>
    <a href="{{ route('mines_bet_history') }}">
        <i class="fa fa-bomb purple_color2"></i> <span>Mines</span>
    </a>
</li>

					  
					   @php
                         $game_id = DB::select("SELECT * FROM `game_settings` where status=0 LIMIT 14;");
                       @endphp
					  
					  <li>
                        <a href="#apps-xy" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-object-group blue2_color"></i> <span>Bet History</span></a>
                        <ul class="collapse list-unstyled" id="apps-xy">
							 @foreach($game_id as $itemm)
                <li><a href="{{route('all_bet_history',$itemm->id)}}"> <span>{{$itemm->name}}</span></a></li>
							 @endforeach
                        </ul>
                     </li>
					  
<!--					   <li>-->
<!--    <a href="#7updown" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--    <i class="fa fa-sort-numeric-asc blue2_color"></i>-->
<!--    <span>7 UP Down</span>-->
<!--</a>-->

<!--    <ul class="collapse list-unstyled" id="7updown">-->
<!--        <li><a href="{{ route('7updown.bets') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('7updown.results') }}">> <span>Bets Results</span></a></li>-->
<!--        <li><a href="{{ route('7updown.admin.result') }}">> <span>Admin Result</span></a></li>-->
<!--    </ul>-->
<!--</li>-->
					  
<!--<li>-->
	
	
<!--	<li>-->
<!--    <a href="#redblack" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--     		<i class="fa fa-adjust blue2_color"></i>-->
<!--        <span>Red Black</span>-->
<!--    </a>-->
<!--</li>-->

<!--    <ul class="collapse list-unstyled" id="redblack">-->
<!--        <li><a href="{{ route('redblack.bets') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('redblack.results') }}">> <span>Bets Results</span></a></li>-->
<!--        <li><a href="{{ route('redblack.admin.result') }}">> <span>Admin Result</span></a></li>-->
<!--    </ul>-->
<!--</li>-->
				   
<!--<li>-->
	
<!--	<li>-->
<!--    <a href="#dice" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--     		<i class="fa fa-cubes dark_color"></i>-->
<!--        <span>Dice</span>-->
<!--    </a>-->
<!--</li>-->

<!--    <ul class="collapse list-unstyled" id="dice">-->
<!--        <li><a href="{{ route('Dice.bets') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('Dice.results') }}">> <span>Bets Results</span></a></li>-->
<!--        <li><a href="{{ route('Dice.admin.result') }}">> <span>Admin Result</span></a></li>-->
<!--    </ul>-->
<!--</li>-->
				
<!--<li>-->
	
	
<!--	<li>-->
<!--    <a href="#kino" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--        <i class="fas fa-ticket-alt blue2_color"></i>-->
<!--        <span>Kino</span>-->
<!--    </a>-->
<!--</li>-->

<!--    <ul class="collapse list-unstyled" id="kino">-->
<!--        <li><a href="{{ route('kino.bets') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('kino.results') }}">> <span>Bets Results</span></a></li>-->
<!--        <li><a href="{{ route('kino.admin.result') }}">> <span>Admin Result</span></a></li>-->
<!--    </ul>-->
<!--</li>-->

	
<!--	<li>-->
        
<!--    <a href="#spin2win" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--        <i class="fa fa-circle-o-notch blue2_color"></i>-->
<!--        <span>Spin2Win</span>-->
<!--    </a>-->
<!--    <ul class="collapse list-unstyled" id="spin2win">-->
<!--        <li><a href="{{ route('spin.adminresults') }}">> <span>Results</span></a></li>-->
<!--        <li><a href="{{ route('spin.bets') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('spin.results') }}">> <span>Bets Results</span></a></li>-->
<!--		<li><a href="{{ route('spin.index') }}">> <span>Admin Result</span></a></li>-->
<!--    </ul>-->
<!--</li>-->
			 
			 
<!--			 <li>-->
        
<!--    <a href="#jhandimunda" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--        <i class="fa fa-flag" style="color: green;"></i>-->
<!--        <span>Jhandi Munda</span>-->
<!--    </a>-->
<!--    <ul class="collapse list-unstyled" id="jhandimunda">-->
<!--        <li><a href="{{ route('jm.jmbethistory') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('jm.jmresult') }}">> <span>Bets Results</span></a></li>-->
<!--		<li><a href="{{ route('jm_jmadminresult') }}">> <span>Admin Result</span></a></li>-->
<!--    </ul>-->
<!--</li>-->
			 
<!--			  <li>-->
        
<!--    <a href="#highlow" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--        <i class="fa fa-flag" style="color: green;"></i>-->
<!--        <span> High Low</span>-->
<!--    </a>-->
<!--    <ul class="collapse list-unstyled" id="highlow">-->
<!--        <li><a href="{{ route('hilo.hilobethistory') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('hilo.hiloresult') }}">> <span>Bets Results</span></a></li>-->
<!--		<li><a href="{{ route('hilo.hiloadminresult') }}">> <span>Admin Result</span></a></li>-->
<!--    </ul>-->
<!--</li>-->
			 
<!--			 <li>-->
        
<!--    <a href="#jackpot" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--       <i class="fas fa-trophy" style="color: gold;"></i>-->
<!--<span> Jackpot</span>-->
<!--    </a>-->
<!--    <ul class="collapse list-unstyled" id="jackpot">-->
<!--        <li><a href="{{ route('jackpot.jackpotbethistory') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('jackpot.jackpotbetresult') }}">> <span>Bets Results</span></a></li>-->
<!--		<li><a href="{{ route('jackpot.jackpotadminresults') }}">> <span>Admin Result</span></a></li>-->
<!--    </ul>-->
<!--</li>-->
			 
<!--			 <li>-->
<!--				<a href="#hotair1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--				   <i class="fas fa-helicopter" style="color: gold;"></i>-->
<!--					<span> Hot Air Baloon</span>-->
<!--				</a>-->
<!--				<ul class="collapse list-unstyled" id="hotair1">-->
<!--					<li><a href="{{ route('hotairballoon.hotairbethistory') }}">> <span>Bets History</span></a></li>-->
<!--					<li><a href="{{ route('hotairballoon.hotairbetresult') }}">> <span>Bets Results</span></a></li>-->
<!--					<li><a href="{{ route('hotairresult', ['game_id' => 23]) }}">> <span>Admin Winner</span></a></li>-->
					
<!--				</ul>-->
<!--			</li>-->
			 
<!--			 <li>-->
<!--				<a href="#titli" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--				   <i class="fas fa-dove" style="color: gold;"></i>-->
<!--					<span> Titli Kabootar</span>-->
<!--				</a>-->
<!--				<ul class="collapse list-unstyled" id="titli">-->
<!--					<li><a href="{{route('titli.index')}}">> <span>Titli Game Management</span></a></li>-->
<!--					<li><a href="{{route('titli.index2')}}">> <span>Titli Admin Result</span></a></li>-->
<!--					<li><a href="{{route('titli.result')}}">> <span>Titli Result</span></a></li>-->
<!--				</ul>-->
<!--			</li>-->
			 
			  <li>
				<a href="#teen" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
				   <i class="fas fa-dice-three" style="color: gold;"></i>
					<span> Teen Patti</span>
				</a>
				<ul class="collapse list-unstyled" id="teen">
					<!--<li><a href="{{route('teen.adminwinresult')}}">> <span>Teenpatti Adminwin</span></a></li>-->
					<li><a href="{{route('teen_bethistory')}}">> <span>Teenpatti Bet History</span></a></li>
					<li><a href="{{route('teen_betresult')}}">> <span>Teenpatti Result</span></a></li>
					
				</ul>
			</li>
			
			
			 <!-- Chicken Road Game -->
          <li>
            <!--<a href="#apps1" data-bs-toggle="collapse" data-bs-target="#apps1" aria-expanded="false" class="dropdown-toggle">-->
            <!--  <i class="fa fa-gamepad dark_color"></i><span>Chicken Road Game</span>-->
            <a href="#apps1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
				   <i class="fa fa-gamepad dark_color" style="color: gold;"></i>
					<span> Chicken Road Game</span>
            </a>
            <ul class="collapse list-unstyled" id="apps1">
             <li class="{{ Request::is('multiplier') ? 'active' : '' }}">
              <a href="{{ url('multiplier') }}">
                <i class="fas fa-percentage"></i> <span>Multiplier</span>
              </a>
            </li>
             <li class="{{ Request::is('bet') ? 'active' : '' }}">
                  <a href="{{ url('bet') }}">
                    <i class="fas fa-dice"></i> <span>Bet History</span>
                  </a>
                </li>
               <li class="{{ Request::is('betValues') ? 'active' : '' }}">
                  <a href="{{ route('betValues') }}">
                    <i class="fas fa-star"></i> <span>Bet Values</span>
                  </a>
                </li>
             <!--<li class="{{ Request::routeIs('amountSetup') ? 'active' : '' }}">-->
             <!--     <a href="{{ route('amountSetup') }}">-->
             <!--       <i class="fas fa-rupee-sign"></i> <span>Amount Setup</span>-->
             <!--     </a>-->
             <!--   </li>-->
            </ul>
          </li>
			
			
			<!-- <li>-->
			<!--	<a href="#mini" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
			<!--	   <i class="fas fa-circle-notch" style="color: gold;"></i>-->
			<!--		<span> Mini Roullete</span>-->
			<!--	</a>-->
			<!--	<ul class="collapse list-unstyled" id="mini">-->
			<!--		<li><a href="{{route('MiniRoulete.adminwinresult')}}">> <span>MiniRoulete Adminwin</span></a></li>-->
			<!--		<li><a href="{{route('MiniRoulete_bethistory')}}">> <span>MiniRoulete Bet History</span></a></li>-->
			<!--		<li><a href="{{route('MiniRoulete_betresult')}}">> <span>MiniRoulete Result</span></a></li>-->
					
			<!--	</ul>-->
			<!--</li>-->
			 
			 
			 	<!--<li><a href="{{ route('fun.index') }}"> <i class="fa fa-cogs blue2_color"></i><span>Fun Target</span></a></li>-->
<!--			 <li>-->
        
<!--    <a href="#funtarget" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--        <i class="fa fa-cogs blue2_color"></i>-->
<!--        <span>Fun Target</span>-->
<!--    </a>-->
<!--    <ul class="collapse list-unstyled" id="funtarget">-->
<!--        <li><a href="{{ route('fun.adminresults') }}">> <span>Results</span></a></li>-->
<!--        <li><a href="{{ route('fun.bets') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('fun.results') }}">> <span>Bets Results</span></a></li>-->
<!--		<li><a href="{{ route('fun.index') }}">> <span>Admin Result</span></a></li>-->
<!--    </ul>-->
<!--</li>-->
			 
<!--			  <li>-->
<!--    <a href="#lucky12" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--        <i class="fa-regular fa-square"></i>-->
<!--        <span>Lucky12</span>-->
<!--    </a>-->
<!--    <ul class="collapse list-unstyled" id="lucky12">-->
<!--        <li><a href="{{ route('lucky12.bets') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('lucky12.results') }}">> <span>Bets Results</span></a></li>-->
<!--        <li><a href="{{ route('lucky12.index') }}">> <span>Admin Result</span></a></li>-->
<!--    </ul>-->
<!--</li>-->
<!--<li>-->
<!--    <a href="#lucky16" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--        <i class="fa fa-clone blue2_color"></i>-->
<!--        <span>Lucky16</span>-->
<!--    </a>-->
<!--    <ul class="collapse list-unstyled" id="lucky16">-->
<!--        <li><a href="{{ route('lucky16.bets') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('lucky16.results') }}">> <span>Bets Results</span></a></li>-->
<!--        <li><a href="{{ route('lucky16.index') }}">> <span>Admin Result</span></a></li>-->
<!--    </ul>-->
<!--</li>-->
			 
			 	  
<!--					  <li>-->
<!--    <a href="#triplechance" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--        <i class="fa fa-cogs blue2_color"></i>-->
<!--        <span>Triple Chance</span>-->
<!--    </a>-->
<!--    <ul class="collapse list-unstyled" id="triplechance">-->
<!--        <li><a href="{{ route('triplechance.bets') }}">> <span>Bets History</span></a></li>-->
<!--        <li><a href="{{ route('triplechance.results') }}">> <span>Bets Results</span></a></li>-->
<!--    </ul>-->
<!--</li>-->
			 

					  
			<li><a href="{{route('offer')}}"><i class="fa fa-bullhorn dark_color"></i>

</i> <span>Offer</span></a></li>
                     <li><a href="{{route('gift')}}"><i class="fa fa-gift dark_color"></i>
</i> <span>Gift</span></a></li>
					  <li><a href="{{route('giftredeemed')}}"><i class="fa fa-credit-card dark_color"></i>
 <span>Gift Redeemed History</span></a></li>
                    <li><a href="{{route('banner')}}"><i class="fa fa-picture-o" aria-hidden="true"></i> <span> Activity & Banner</span></a></li> 
                     <li><a href="{{route('feedback')}}"><i class="fa fa-file blue1_color"></i> <span>FeedBack</span></a></li>
                     
                     
                     
					   <li>
     <a href="#app13" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-tasks  green_color"></i>            <span>Deposit</span></a>
     <ul class="collapse list-unstyled" id="app13">
   <li><a href="{{ route('deposit', 1) }}">Pending</a></li>
<li><a href="{{ route('deposit', 2) }}">Success</a></li>
<li><a href="{{ route('deposit',3) }}">Reject</a></li>


     </ul>
  </li>
					  
					   <li>
     <a href="#app11" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-wrench purple_color2"></i>            <span>Withdrawal</span></a>
     <ul class="collapse list-unstyled" id="app11">
   <li><a href="{{ route('widthdrawl', 1) }}">Pending</a></li>
<li><a href="{{ route('widthdrawl', 2) }}">Approved</a></li>
<li><a href="{{ route('widthdrawl',3) }}">Reject</a></li>
<!--<li><a href="{{ route('widthdrawl', 4) }}">Successfull</a></li>
<li><a href="{{ route('widthdrawl',5) }}">Failed</a></li>-->


     </ul>
  </li>
  
  
    <li>
        <a href="#app14" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-tasks  green_color"></i><span>India Pay Deposit</span></a>
        <ul class="collapse list-unstyled" id="app14">
            <li><a href="{{ route('indianpay_deposit', 1) }}">Pending</a></li>
            <li><a href="{{ route('indianpay_deposit', 2) }}">Success</a></li>
            <li><a href="{{ route('indianpay_deposit',3) }}">Reject</a></li>
        </ul>
    </li>
    
    
	<li>
        <a href="#app15" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-wrench purple_color2"></i><span>India Pay Withdrawal</span></a>
        <ul class="collapse list-unstyled" id="app15">
            <li><a href="{{ route('indianpay_widthdrawl', 1) }}">Pending</a></li>
            <li><a href="{{ route('indianpay_widthdrawl', 2) }}">Approved</a></li>
            <li><a href="{{ route('indianpay_widthdrawl',3) }}">Reject</a></li>
        </ul>
  </li>
  
    
			  
	

<li><a href="{{route('usdtqr')}}"><i class="fa fa-table purple_color2"></i> 
<span> QR Code</span></a></li>
<!--                                          <li>-->
<!--     <a href="#app20" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--<i class="fa fa-tasks  green_color"></i><span>USDT Deposit</span></a>-->
<!--     <ul class="collapse list-unstyled" id="app20">-->
<!--   <li><a href="{{ route('usdt_deposit', 1) }}">Pending</a></li>-->
<!--<li><a href="{{ route('usdt_deposit', 2) }}">Success</a></li>-->
<!--<li><a href="{{ route('usdt_deposit',3) }}">Reject</a></li>-->


<!--     </ul>-->
<!--  </li>-->

<!--                                           <li>-->
<!--     <a href="#app21" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">-->
<!--<i class="fa fa-wrench purple_color2"></i>            <span>USDT Withdrawal</span></a>-->
<!--     <ul class="collapse list-unstyled" id="app21">-->
<!--   <li><a href="{{ route('usdt_widthdrawl', 1) }}">Pending</a></li>-->
<!--<li><a href="{{ route('usdt_widthdrawl', 2) }}">Success</a></li>-->
<!--<li><a href="{{ route('usdt_widthdrawl',3) }}">Reject</a></li>-->


<!--     </ul>-->
<!--  </li>-->
  
					  <li><a href="{{route('notification')}}"><i class="fa fa-bell  yellow_color"></i> <span>Notice</span></a></li>
                     <li><a href="{{route('setting')}}"><i class="fa fa-cogs dark_color"></i>
 <span>Setting</span></a></li>
					  <li><a href="{{route('support_setting')}}"><i class="fa fa-info-circle  yellow_color"></i> <span>Support Setting </span></a></li> 
                      <li><a href="{{route('change_password')}}"><i class="fa fa-warning red_color"></i> <span>Change Password</span></a></li>
                     <li><a href="{{route('auth.logout')}}"><i class="fa fa-line-chart yellow_color"></i> <span>Logout</span></a></li>
                    
                     {{-- <li>
                        <a href="contact.html">
                        <i class="fa fa-paper-plane red_color"></i> <span>Contact</span></a>
                     </li>
                     <li class="active">
                        <a href="#additional_page" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-clone yellow_color"></i> <span>Additional Pages</span></a>
                        <ul class="collapse list-unstyled" id="additional_page">
                           <li>
                              <a href="profile.html">> <span>Profile</span></a>
                           </li>
                           <li>
                              <a href="project.html">> <span>Projects</span></a>
                           </li>
                           <li>
                              <a href="login.html">> <span>Login</span></a>
                           </li>
                           <li>
                              <a href="404_error.html">> <span>404 Error</span></a>
                           </li>
                        </ul>
                     </li>
                     <li><a href="map.html"><i class="fa fa-map purple_color2"></i> <span>Map</span></a></li>
                     <li><a href="charts.html"><i class="fa fa-bar-chart-o green_color"></i> <span>Charts</span></a></li>
                     <li><a href="settings.html"><i class="fa fa-cog yellow_color"></i> <span>Settings</span></a></li> --}}
                  </ul>
               </div>
            </nav>
            <!-- end sidebar -->