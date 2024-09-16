@extends('user.layouts.app')

@section('content')
    @include('user.common.alert')
    <div class="d-flex justify-content-between dash-left-profile dash-profile-flex-wrap">
        <div class="dash-left-profile d-flex gap-14">
            <div class="dash-left-img">
                <img src="{{ image(auth()->user()->picture, 'profile') }}" alt="{{ __('Profile') }}" class="img-fluid">
            </div>
            <div class="qr-icon">
                <p class="mb-0 f-32 gilroy-Semibold text-dark"><span>{{ getColumnValue(auth()->user()) }}</span>
                    <a href="{{ route('user.profiles.index') }}" class="px-1">
                        <svg class="cursor-pointer" width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M11.8448 2.09484C12.759 1.18063 14.2412 1.18063 15.1554 2.09484C16.0696 3.00905 16.0696 4.49129 15.1554 5.4055L5.73337 14.8276C5.71852 14.8424 5.70381 14.8571 5.68921 14.8718C5.47363 15.0878 5.28355 15.2782 5.0544 15.4186C4.85309 15.542 4.63361 15.6329 4.40403 15.688C4.1427 15.7507 3.87364 15.7505 3.56847 15.7502C3.54781 15.7502 3.52698 15.7502 3.50598 15.7502H2.25008C1.83586 15.7502 1.50008 15.4144 1.50008 15.0002V13.7443C1.50008 13.7233 1.50006 13.7025 1.50004 13.6818C1.49975 13.3766 1.4995 13.1076 1.56224 12.8462C1.61736 12.6167 1.70827 12.3972 1.83164 12.1959C1.97206 11.9667 2.16249 11.7766 2.37848 11.5611C2.3931 11.5465 2.40784 11.5317 2.42269 11.5169L11.8448 2.09484ZM14.0948 3.1555C13.7663 2.82707 13.2339 2.82707 12.9054 3.1555L3.48335 12.5776C3.19868 12.8622 3.14619 12.9215 3.1106 12.9796C3.06948 13.0467 3.03917 13.1199 3.0208 13.1964C3.0049 13.2626 3.00008 13.3417 3.00008 13.7443V14.2502H3.50598C3.90857 14.2502 3.98762 14.2453 4.05386 14.2294C4.13039 14.2111 4.20354 14.1808 4.27065 14.1396C4.32873 14.1041 4.38804 14.0516 4.67271 13.7669L14.0948 4.34484C14.4232 4.01641 14.4232 3.48393 14.0948 3.1555ZM8.25006 15.0002C8.25006 14.586 8.58584 14.2502 9.00006 14.2502H15.7501C16.1643 14.2502 16.5001 14.586 16.5001 15.0002C16.5001 15.4144 16.1643 15.7502 15.7501 15.7502H9.00006C8.58584 15.7502 8.25006 15.4144 8.25006 15.0002Z" fill="currentColor" />
                        </svg>
                    </a>
                </p>
                <p class="mb-0 f-16 leading-18 gilroy-medium text-gray-100 mt-1 dash-w-262">{{ __('Welcome, here is a brief summary of your account.') }}</p>
            </div>
        </div>
        <div>
            <div class="card">
                <div class="card-header bg-danger ">
                   <a href="{{ url('/crypto-exchange/buy-sell-list?status=Pending') }}" class="text-white"> Pending Transactions: <b>{{ $totalPendingTransactions }}</b></a>
                </div>
            </div>
            
        </div>

    </div>

    
	<div class="card">
		<div class="card-body"><h3>Last 12 months Succeeded & Cancled Transactions</h3></div>
		<div class="card-body">
			<canvas id="chart"></canvas>
		</div>
	</div>


@endsection

@push('js')

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
	// Sample data for the last 12 months
	const data = {
	  labels: @json($chartLables),
	  chartSucceededTransactions: @json($chartSucceededTransactions),
	  chartCancledTransactions: @json($chartCancledTransactions)
	};


	// Create the chart
	const ctx = document.getElementById('chart').getContext('2d');
	new Chart(ctx, {
	  type: 'line',
	  data: {
		labels: data.labels,
		datasets: [
		 
		  {
			label: 'Succeeded Transactions',
			data: data.chartSucceededTransactions,
			borderColor: 'green',
			fill: false
		  },
		  {
			label: 'Cancled Transactions',
			data: data.chartCancledTransactions,
			borderColor: 'red',
			fill: false
		  }
		]
	  },
	  options: {
		responsive: true,
		scales: {
		  x: {
			display: true,
			title: {
			  display: true,
			  text: 'Months'
			}
		  },
		  y: {
			display: true,
			title: {
			  display: true,
			  text: 'New Users and Transactions'
			}
		  }
		}
	  }
	});
</script>
@endpush
