@extends('admin.body.adminmaster')

@section('admin')

<div class="row">
    <div class="col-md-12">

        {{-- ✅ Success Message --}}
        @if(session('success'))
            <div class="alert alert-success mt-3">
                {{ session('success') }}
            </div>
        @endif

        <style>
        
          .custom-pagination-nav {
        margin-bottom: 5px !important;
    }
    .custom-pagination-nav .page-link {
        padding: 4px 10px;
        font-size: 0.85rem;
        margin: 0 2px;
    }
    .custom-pagination-nav .page-item.active .page-link {
        background-color: #007bff;
        border-color: #007bff;
        color: #fff;
    }
            .btn-submit {
                background-color: #28a745;
                color: #fff;
                border-radius: 50px;
                padding: 10px 28px;
                font-weight: 600;
                border: none;
                display: inline-flex;
                align-items: center;
                transition: background 0.3s ease, box-shadow 0.3s ease;
            }
            .btn-submit:hover {
                background-color: #218838;
                box-shadow: 0 6px 18px rgba(40,167,69,0.4);
            }
            .btn-submit i {
                margin-left: 8px;
            }
            .result-card:hover {
                background-color: #007bff;
                color: white;
                box-shadow: 0 0 10px rgba(0,123,255,0.6);
            }
            .bet-amount-card {
                background-color: #f8f9fa;
            }
            .bet-amount-card:hover {
                background-color: #e2e6ea;
                cursor: default;
            }
            
            
            
        </style>

        <div class="card">
            <div class="card-body">

                {{-- 🔹 Period No and Users Playing --}}
                <div class="row" style="background-color: #fff; border-radius: 5px; margin-bottom: 10px;">
                    <div class="col-md-12 d-flex justify-content-between align-items-center flex-wrap">
                        <b style="font-weight: bold; font-size: 18px;">
                            Period No - <span id="period_no">{{ $period_no }}</span>
                        </b>
                        <b style="font-weight: bold; font-size: 22px; margin-left:100px;">
                            Total Users Playing - <span id="users_playing_count">{{ $total_users_playing }}</span>
                        </b>
                    </div>
                </div>

                {{-- 🔹 Profit Summary Boxes --}}
                <div class="row mb-4">
                    <div class="col-md-3">
                        <div class="card text-white bg-success shadow">
                            <div class="card-body">
                                <h5>Total Admin Profit</h5>
                                <h3>₹{{ $total_admin_profit ?? 0 }}</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card text-white bg-danger shadow">
                            <div class="card-body">
                                <h5>Total User Profit</h5>
                                <h3>₹{{ $total_user_profit ?? 0 }}</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card text-white bg-info shadow">
                            <div class="card-body">
                                <h5>Today Admin Profit</h5>
                                <h3>₹{{ $today_admin_profit ?? 0 }}</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card text-white bg-warning shadow">
                            <div class="card-body">
                                <h5>Today User Profit</h5>
                                <h3>₹{{ $today_user_profit ?? 0 }}</h3>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- 🔹 Result Insert Buttons --}}
                <div class="row w-100 m-0">
                    @for($i = 1; $i <= 9; $i++)
                        <div class="card border col-6 col-sm-4 col-md-2 col-lg-1 my-2 mx-auto d-flex justify-content-center align-items-center result-card" style="height: 100px; cursor: pointer;" onclick="result_insert({{ $i }})">
                            <img style="height: 70px; width: 70px;" src="{{ asset('/assets/spin/' . $i . '.png') }}">
                        </div>
                    @endfor
                    <div class="card border col-6 col-sm-4 col-md-2 col-lg-1 my-2 mx-auto d-flex justify-content-center align-items-center result-card" style="height: 100px; cursor: pointer;" onclick="result_insert(10)">
                        <img style="height: 70px; width: 70px;" src="{{ asset('/assets/spin/0.png') }}">
                    </div>
                </div>

                {{-- 🔹 Bet Amounts --}}
                <div class="row mt-4 w-100 m-0">
                    @for($i = 1; $i <= 9; $i++)
                        <div class="card border col-4 col-sm-3 col-md-2 col-lg-1 mb-3 mx-auto text-center bet-amount-card" style="padding: 15px 0;">
                            <h2 class="mb-2">{{ $i }}</h2>
                            <p id="amount-{{ $i }}" class="mb-0" style="font-weight: bold; font-size: 1.25rem;">0</p>
                        </div>
                    @endfor
                    <div class="card border col-4 col-sm-3 col-md-2 col-lg-1 mb-3 mx-auto text-center bet-amount-card" style="padding: 15px 0;">
                        <h2 class="mb-2">0</h2>
                        <p id="amount-0" class="mb-0" style="font-weight: bold; font-size: 1.25rem;">0</p>
                    </div>
                </div>

                {{-- 🔹 Future Result --}}
                <div class="card-modern shadow-sm mt-4">
                    <!--<div class="card-header text-white" style="background: linear-gradient(60deg,#20c997,#0dcaf0);">-->
                    <!--    <h5><i class="fas fa-hourglass-half me-2"></i>Schedule Future Result</h5>-->
                    <!--</div>-->
                     <div class="card-header  d-flex justify-content-between align-items-center" style="background: linear-gradient(60deg,#20c997,#0dcaf0);">
            <h5 class="mb-0"><i class="fas fa-hourglass-half me-2"></i>Schedule Future Result</h5>
            <button class="btn btn-light btn-sm rounded-pill" onclick="copyPeriodNo()" title="Copy Period No">
                <i class="fas fa-copy me-1" style="color:black;"></i> Copy Period: <span id="copy-period">{{ $period_no }}</span>
            </button>
        </div>
                    <div class="section-bg p-3">
                        <form method="post" action="{{ route('future_result.store') }}" class="row g-3 needs-validation" novalidate>
                            @csrf
                            <div class="col-sm-5">
                                <label><i class="fas fa-calendar-alt me-1"></i>Future Period</label>
                                <input type="text" name="game_no" class="form-control rounded-pill" required>
                            </div>
                            <div class="col-sm-5">
                                <label><i class="fas fa-sort-numeric-up-alt me-1"></i>Result</label>
                                <select name="number" class="form-select rounded-pill" required>
                                    <option value="">Select</option>
                                    @for($i=0;$i<=9;$i++)
                                        <option value="{{ $i }}">{{ $i }}</option>
                                    @endfor
                                </select>
                            </div>
                            <div class="col-auto d-flex align-items-end">
                                <button type="submit" class="btn-submit">Submit <i class="fas fa-check"></i></button>
                            </div>
                        </form>
                    </div>
                </div>

                {{-- 🔹 Toggle Buttons --}}
                <div class="d-flex justify-content-start gap-3 mb-3 mt-4">
                    <button class="btn btn-primary toggle-btn" data-target="future">Future Predictions</button>
                    <button class="btn btn-secondary toggle-btn" data-target="user">User Bets</button>
                </div>

                {{-- 🔹 Tables --}}
                <div id="table-future" class="toggle-table">
                    <div class="card shadow">
                        <div class="card-header bg-info text-white"><strong>Future Prediction List</strong></div>
                        <div class="card-body table-responsive">
                            <table class="table table-bordered">
                                <thead class="table-dark">
                                    <tr><th>ID</th><th>Period No</th><th>Predicted Number</th><th>Result</th><th>Created</th><th>Updated</th></tr>
                                </thead>
                                <tbody>
                                    @forelse($futurePredictions as $prediction)
                                        <tr>
                                            <td>{{ $prediction->id }}</td>
                                            <td>{{ $prediction->games_no }}</td>
                                            <td>{{ $prediction->predicted_number }}</td>
                                            <td>{!! $prediction->result_number === 'pending' ? '<span class="badge bg-warning text-dark">Pending</span>' : '<span class="badge bg-success">'.$prediction->result_number.'</span>' !!}</td>
                                            <td>{{ $prediction->created_at }}</td>
                                            <td>{{ $prediction->updated_at }}</td>
                                        </tr>
                                    @empty
                                        <tr><td colspan="6" class="text-center">No predictions found.</td></tr>
                                    @endforelse
                                </tbody>
                            </table>
                            {{-- If you want pagination on futurePredictions, add here --}}
                            {{-- {{ $futurePredictions->links() }} --}}
                        </div>
                    </div>
                </div>

                {{-- 🔹 User Bet Table --}}
                <div id="table-user" class="toggle-table d-none">
                    <div class="card shadow">
                        <div class="card-header bg-warning text-dark">
                            <strong>User Bet List</strong>
                        </div>
                        <div class="card-body table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead class="table-dark">
                                    <tr>
                                        <th>ID</th>
                                        <th>User ID</th>
                                        <th>Period Number</th>
                                        <th>Game ID</th>
                                        <th>Amount</th>
                                        <th>Win Number</th>
                                        <th>Win Amount</th>
                                        <th>Status</th>
                                        <th>Created At</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($userBets as $bet)
                                        <tr>
                                            <td>{{ $bet->id }}</td>
                                            <td>{{ $bet->user_id }}</td>
                                            <td>{{ $bet->games_no }}</td>
                                            <td>{{ $bet->game_id }}</td>
                                            <td>{{ $bet->amount }}</td>
                                            <td>{{ $bet->win_number }}</td>
                                            <td>{{ $bet->win_amount }}</td>
                                            <td>{{ $bet->status }}</td>
                                            <td>{{ $bet->created_at }}</td>
                                        </tr>
                                    @empty
                                        <tr><td colspan="9" class="text-center">No user bets found.</td></tr>
                                    @endforelse
                                </tbody>
                            </table>
                           @if ($userBets->hasPages())
    <nav class="custom-pagination-nav">
        <ul class="pagination pagination-sm justify-content-center mb-1">

            {{-- Previous Page Link --}}
            @if ($userBets->onFirstPage())
                <li class="page-item disabled"><span class="page-link">&laquo;</span></li>
            @else
                <li class="page-item"><a class="page-link" href="{{ $userBets->previousPageUrl() }}" rel="prev">&laquo;</a></li>
            @endif

            {{-- Pagination Elements --}}
            @foreach ($userBets->getUrlRange(1, $userBets->lastPage()) as $page => $url)
                @if ($page == $userBets->currentPage())
                    <li class="page-item active"><span class="page-link">{{ $page }}</span></li>
                @elseif ($page === 1 || $page === $userBets->lastPage() || abs($page - $userBets->currentPage()) <= 1)
                    <li class="page-item"><a class="page-link" href="{{ $url }}">{{ $page }}</a></li>
                @elseif ($page === $userBets->currentPage() - 2 || $page === $userBets->currentPage() + 2)
                    <li class="page-item disabled"><span class="page-link">...</span></li>
                @endif
            @endforeach

            {{-- Next Page Link --}}
            @if ($userBets->hasMorePages())
                <li class="page-item"><a class="page-link" href="{{ $userBets->nextPageUrl() }}" rel="next">&raquo;</a></li>
            @else
                <li class="page-item disabled"><span class="page-link">&raquo;</span></li>
            @endif

        </ul>
    </nav>
@endif

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

{{-- Scripts --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    
    function copyPeriodNo() {
        const period = $('#copy-period').text().trim();
        navigator.clipboard.writeText(period)
            .then(() => alert('Period No copied: ' + period))
            .catch(() => alert('Copy failed'));
    }
    function fetchPeriodInfo() {
        $.get('/api/fun-betlogs', function (response) {
            $('#period_no').text(response.period_no);
            $('#users_playing_count').text(response.total_users_playing);
        });
    }

    function fetchBetAmounts() {
        $.get('/api/fun-betlogs-amount', function (response) {
            response.forEach(function (betLog) {
                $('#amount-' + betLog.number).text(betLog.amount);
            });
        });
    }

    function result_insert(card_number) {
        let period_num = document.getElementById('period_no').textContent;
        fetch('/api/auto_fun_ad_result_insert', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': '{{ csrf_token() }}'
            },
            body: JSON.stringify({ card_number, period_num }),
        })
        .then(response => response.json())
        .then(data => alert(data.message))
        .catch(error => console.error('Error:', error));
    }

    // Load active tab from localStorage or default 'future'
    function setActiveTab(tab) {
        $('.toggle-btn').removeClass('btn-primary').addClass('btn-secondary');
        $('.toggle-btn[data-target="' + tab + '"]').removeClass('btn-secondary').addClass('btn-primary');
        $('.toggle-table').addClass('d-none');
        $('#table-' + tab).removeClass('d-none');
        localStorage.setItem('activeTab', tab);
    }

    $(document).ready(function () {
        fetchPeriodInfo();
        fetchBetAmounts();

        // Restore active tab on page load
        let activeTab = localStorage.getItem('activeTab') || 'future';
        setActiveTab(activeTab);

        setInterval(fetchPeriodInfo, 5000);
        setInterval(fetchBetAmounts, 5000);

        $('.toggle-btn').click(function () {
            let target = $(this).data('target');
            setActiveTab(target);
        });

        // Intercept pagination clicks
        $(document).on('click', '.pagination a', function(e) {
            e.preventDefault();
            let url = $(this).attr('href');

            let activeTab = localStorage.getItem('activeTab') || 'future';

            if (activeTab === 'user') {
                fetchUserBets(url);
            } 
            // If you add pagination on futurePredictions in future, handle here similarly:
            // else if (activeTab === 'future') {
            //     fetchFuturePredictions(url);
            // }
        });

        // AJAX fetch for user bets pagination
        function fetchUserBets(url) {
            $.ajax({
                url: url,
                type: 'GET',
                dataType: 'html',
                success: function(data) {
                    // Extract #table-user's inner html and replace
                    let newTableHtml = $(data).find('#table-user').html();
                    $('#table-user').html(newTableHtml);
                },
                error: function() {
                    alert('Could not load data. Please try again.');
                }
            });
        }
    });
    
    setInterval(() => location.reload(), 10000);
</script>

@endsection
