@php
$breadcrumb = [
	[
		'icon' => 'fa fa-home',
		'href' => url(config('adminPrefix').'/home'),
		'name' => __('Dashboard')
	]
];
@endphp

@extends('admin.layouts.master', $breadcrumb)

@section('title', __('Dashboard'))

@section('page_content')
<section class="content">

	<div class="row">

		<div class="col-md-3">
			<!-- small box -->
			<div class="small-box bg-danger">
				<div class="inner">
					<h3>{{$totalPendingTransactions}}</h3>
					<p>Pending Transactions</p>
				</div>
				<div class="icon">
					<i class="fa fa-envelope-o"></i>
				</div>
				<a href="{{url(config('adminPrefix').'/transactions?status=Pending')}}" class="small-box-footer">{{ __('More info') }} <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
		<div class="col-md-3">
			<!-- small box -->
			<div class="small-box bg-warning">
				<div class="inner">
					<h3>{{$totalPendingVerifications}}</h3>
					<p>Pending Verifications</p>
				</div>
				<div class="icon">
					<i class="fa fa-envelope-o"></i>
				</div>
				<a href="{{url(config('adminPrefix').'/identity-proofs')}}" class="small-box-footer">{{ __('More info') }} <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
		<div class="col-md-3">
			<!-- small box -->
			<div class="small-box bg-info">
				<div class="inner">
				<h3>{{$totalUser}}</h3>

				<p>{{ __('Total Users') }}</p>
				</div>
				<div class="icon">
				<i class="ion ion-person-add"></i>
				</div>
				<a href="{{url(config('adminPrefix').'/users')}}" class="small-box-footer">{{ __('More info') }} <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>

		{{-- <div class="col-md-4">
			<!-- small box -->
			<div class="small-box bg-aqua">
				<div class="inner">
				<h3>{{$totalTicket}}</h3>
				<p>{{ __('Total Tickets') }}</p>
				</div>
				<div class="icon">
				<i class="fa fa-envelope-o"></i>
				</div>
				<a href="{{url(config('adminPrefix').'/tickets/list')}}" class="small-box-footer">{{ __('More info') }} <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>

		<div class="col-md-3">
			<!-- small box -->
			<div class="small-box bg-green">
				<div class="inner">
					<h3>{{$totalDispute}}</h3>

					<p>{{ __('Total Dispute') }}</p>
				</div>
				<div class="icon">
					<i class="ion ion-stats-bars"></i>
				</div>
				<a href="{{url(config('adminPrefix').'/disputes')}}" class="small-box-footer">{{ __('More info') }} <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div> --}}
		
		<div class="col-md-3">
			<!-- small box -->
			<div class="small-box bg-blue">
				<div class="inner">
				<h3>{{$totalBlogs}}</h3>

				<p>{{ __('Total Blogs') }}</p>
				</div>
				<div class="icon">
				<i class="ion ion-person-add"></i>
				</div>
				<a href="{{url(config('adminPrefix').'/blogs')}}" class="small-box-footer">{{ __('More info') }}<i class="fa fa-arrow-circle-right ms-1"></i></a>
			</div>
		</div>

	</div>

	<div class="card">
		<div class="card-body"><h3>Last 12 months Succeeded & Cancled Transactions and New Registerd users</h3></div>
		<div class="card-body">
			<canvas id="chart"></canvas>
		</div>
	</div>

</section>
@endsection

@push('extra_body_scripts')


<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
	// Sample data for the last 12 months
	const data = {
	  labels: @json($chartLables),
	  usersData: @json($chartUsers),
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
			label: 'New Users',
			data: data.usersData,
			borderColor: 'blue',
			fill: false
		  },
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
