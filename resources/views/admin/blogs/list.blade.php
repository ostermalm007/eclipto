@extends('admin.layouts.master')
@section('title', __('Blogs'))

@section('head_style')
    <!-- dataTables -->
    <link rel="stylesheet" type="text/css" href="{{ asset('public/dist/plugins/DataTables/DataTables-1.10.18/css/jquery.dataTables.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/dist/plugins/DataTables/Responsive-2.2.2/css/responsive.dataTables.min.css') }}">
@endsection



@section('page_content')
<div class="col-md-12">
  <div class="box box-default">
    <div class="box-body">
      <div class="row">
        <div class="col-md-10">
         <div class="top-bar-title padding-bottom">{{ __('Blogs') }}
          @if(Common::has_permission(auth('admin')->user()->id, 'add_page'))
            <a class="btn btn-primary rounded-full float-right" href="{{  url(config('adminPrefix')."/blog/add") }}">{{ __('Add Blog') }}</a>
          @endif
         </div>
        </div>
        <div class="col-md-2">
          <div class="top-bar-title padding-bottom">
          <a href="{{  url(config('adminPrefix')."/blogs") }}" class="btn btn-block btn-default btn-flat btn-border-orange f-14">{{ __('Blogs') }}</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="box">
  <div class="box-body">
  <!-- Main content -->
  <div class="row">
    {{-- <div class="col-md-3 settings_bar_gap">
        @include('admin.common.settings_bar')
    </div> --}}
    <div class="col-md-12">
      
      <div class="card">
        <div class="card-body table-responsive f-14">
          {!! $dataTable->table(['class' => 'table table-striped table-hover dt-responsive', 'width' => '100%', 'cellspacing' => '0']) !!}
          {{-- <table class="table table-striped table-hover dt-responsive" id="dataTableBuilder" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th title="Title">Title</th>
                <th title="Image">Image</th>
                <th title="Video">Video</th>
                <th title="Url">Url</th>
                <th title="Status">Status</th>
                <th title="Action">Action</th>
              </tr>
            </thead>
            <tbody>
              @forelse($rows as $row)
                <tr>
                  <td>{{ $row['title'] }}</td>
                  <td>
                    <a href="{{ url('/blog/'.$row['url']) }}" target="_blank">
                      <img style="height:30px" src="{{ asset('public/storage/'.$row['image']) }}">
                    </a>
                  </td>
                  <td>
                    <a href="{{ url('/blog/'.$row['url']) }}" target="_blank">
                      <video style="height:30px" controls src="{{ asset('public/storage/'.$row['video']) }}"></video>
                    </a>
                  </td>
                  <td>
                    
                  </td>
                  <td>
                    <a target="_blank" href="{{ url('/blog/'.$row['url']) }}">
                      {{ $row['url'] }}
                    </a>
                  </td>
                  <td>test</td>
                  <td>
                    <a href="{{ url(config('adminPrefix') . '/blog/edit/' . $row['id']) }}" class="btn btn-xs btn-primary">
                      <i class="fa fa-edit"></i> Edit
                    </a>
                    <a href="{{ url(config('adminPrefix') . '/blog/delete/' . $row['id']) }}" class="btn btn-xs btn-danger delete-warning">
                      <i class="fa fa-trash"></i> Delete
                    </a>
                  </td>
                </tr>
              @empty 

              @endforelse
            </tbody>
          </table> --}}
        </div>
      </div>
    </div>
  </div>
  </div>
  </div>






@endsection

@push('extra_body_scripts')

  <!-- jquery.dataTables js -->
  <script src="{{ asset('public/dist/plugins/DataTables/DataTables-1.10.18/js/jquery.dataTables.min.js') }}" type="text/javascript"></script>
  <script src="{{ asset('public/dist/plugins/DataTables/Responsive-2.2.2/js/dataTables.responsive.min.js') }}" type="text/javascript"></script>

  {!! $dataTable->scripts() !!}
 
@endpush
