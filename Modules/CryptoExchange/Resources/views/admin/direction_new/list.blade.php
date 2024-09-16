@extends('admin.layouts.app')
@section('title', __('Exchange Directions'))

@section('head_style')
    <link rel="stylesheet" type="text/css" href="{{ asset('public/dist/plugins/DataTables/DataTables-1.10.18/css/jquery.dataTables.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/dist/plugins/DataTables/Responsive-2.2.2/css/responsive.dataTables.min.css') }}">
@endsection

@section('buttons')
    @if(Common::has_permission(auth('admin')->user()->id, 'add_crypto_direction'))
      <a class="btn btn-primary rounded-full float-right me-4" href="{{ route('admin.crypto_direction.create') }}">{{ __('Add Direction') }}</a>
    @endif
@endsection

@section('breadcrumbs')
  <li class="before:content-['/'] ltr:before:mr-1 rtl:before:ml-1">
    <span>Exchange Directions</span>
  </li>
@endsection

@section('page_content')
  <div class="row">
    <div class="col-md-12">
        <div class="panel panel-info">
            <div class="panel-body">
                <div class="table-responsive f-14">
                  {!! $dataTable->table(['class' => 'table table-striped table-hover dt-responsive', 'width' => '100%', 'cellspacing' => '0']) !!}
                </div>
            </div>
        </div>
    </div>
  </div>
@endsection

@section('extra_body_scripts')
  <script src="{{ asset('public/dist/plugins/DataTables/DataTables-1.10.18/js/jquery.dataTables.min.js') }}" type="text/javascript"></script>
  <script src="{{ asset('public/dist/plugins/DataTables/Responsive-2.2.2/js/dataTables.responsive.min.js') }}" type="text/javascript"></script>
  {!! $dataTable->scripts() !!}
@endsection
