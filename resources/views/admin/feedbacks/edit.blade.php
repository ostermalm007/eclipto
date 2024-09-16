@extends('admin.layouts.master')
@section('title', __('Edit Feedback'))

@section('head_style')
  <!-- summernote -->
  <link rel="stylesheet" type="text/css" href="{{ asset('public/dist/libraries/summernote-0.8.18-dist/summernote-lite.min.css')}}">
@endsection

@section('page_content')
  <div class="row">
    {{-- <div class="col-md-3">
       @include('admin.common.settings_bar')
    </div> --}}
    <div class="col-md-12">
      <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-10">
             <div class="top-bar-title padding-bottom">{{ __('Edit Feedback') }}</div>
            </div>
            <div class="col-md-2">
              @if(Common::has_permission(auth('admin')->user()->id, 'manage_page'))
                <div class="top-bar-title padding-bottom">
                <a href="{{  url(config('adminPrefix')."/settings/feedbacks") }}" class="btn btn-block btn-default btn-flat btn-border-orange">{{ __('Feedbacks') }}</a>
                </div>
              @endif
            </div>
          </div>
        </div>
      </div>
      <div class="box">
      <div class="box-body">
        <!-- /.box-header -->
        <form action="{{url(config('adminPrefix').'/settings/feedback/update')}}" method="post" id="page" class="form-horizontal" enctype="multipart/form-data">
           {{ csrf_field() }}

           <input class="form-control f-14" name="id" value="{{ $feedback->id }}" type="hidden">

          <div class="box-body">
            <div class="box-body">
            <div class="form-group row">
              <label class="col-sm-2 control-label mt-11 f-14 fw-bold text-sm-end require" for="user">{{ __('User Name') }}</label>
              <div class="col-sm-8">
                <input class="form-control f-14" name="user" placeholder="{{ __('User Name') }}" value="{{ $feedback->user }}" type="text" id="user" required>
                  @if ($errors->has('user'))
                      <span class="error">
                        <strong>{{ $errors->first('user') }}</strong>
                      </span>
                  @endif
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 control-label mt-11 f-14 fw-bold text-sm-end require" for="name">{{ __('Designation') }}</label>
              <div class="col-sm-8">
                <input class="form-control f-14" name="designation" placeholder="{{ __('Designation') }}" value="{{ $feedback->designation }}" type="text" id="designation" required>
                  @if($errors->has('designation'))
                      <span class="error">
                          <strong>{{ $errors->first('designation') }}</strong>
                      </span>
                  @endif
              </div>
            </div>
            
            <div class="form-group row">
              <label class="col-sm-2 control-label mt-11 f-14 fw-bold text-sm-end" for="image">{{ __('Image') }}</label>
              <div class="col-sm-8">
                <input class="form-control f-14" name="image" placeholder="{{ __('Image') }}" type="file" accept="image/*" id="image">
                  @if ($errors->has('image'))
                      <span class="error">
                          <strong>{{ $errors->first('image') }}</strong>
                      </span>
                  @endif
              </div>
            </div>

            <div class="form-group row">
              <label class="col-sm-2 control-label f-14 fw-bold text-sm-end required" for="content">{{ __('Content') }}</label>
              <div class="col-sm-8">
                <textarea id="content" class="form-control f-14" name="content" placeholder="{{ __('Content') }}" rows="10" cols="80" >{{ $feedback->content }}</textarea>
                  @if ($errors->has('content'))
                      <span class="error">
                          <strong>{{ $errors->first('content') }}</strong>
                      </span>
                  @endif
              </div>
            </div>

            <div class="form-group row align-items-center">
              <label class="col-sm-2 control-label f-14 fw-bold text-sm-end require" for="rating">{{ __('Rating') }}</label>
              <div class="col-sm-8">
                <select class="select2" name="rating" id="rating">
                    <option value="5" {{ $feedback->rating==5?'selected':'' }}>5 Star</option>
                    <option value="4" {{ $feedback->rating==4?'selected':'' }}>4 Star</option>
                    <option value="3" {{ $feedback->rating==3?'selected':'' }}>3 Star</option>
                    <option value="2" {{ $feedback->rating==2?'selected':'' }}>2 Star</option>
                    <option value="1" {{ $feedback->rating==1?'selected':'' }}>1 Star</option>
                  </select>
                  @if ($errors->has('rating'))
                    <span class="error">
                        <strong>{{ $errors->first('rating') }}</strong>
                    </span>
                  @endif
              </div>
            </div>

          </div>
          <!-- /.box-body -->

          <div class="box-footer">
            <a href="{{  url(config('adminPrefix')."/settings/pages") }}" class="btn btn-theme-danger f-14">{{ __('Cancel') }}</a>
            <button class="btn btn-theme pull-right f-14" type="submit">{{ __('Update') }}</button>
          </div>
          <!-- /.box-footer -->
        </form>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.nav-tabs-custom -->
    </div>
    <!-- /.col -->
  </div>
@endsection

@push('extra_body_scripts')

<!-- jquery.validate -->
<script src="{{ asset('public/dist/plugins/jquery-validation-1.17.0/dist/jquery.validate.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/dist/libraries/summernote-0.8.18-dist/summernote-lite.min.js')}}" type="text/javascript"></script>


<script type="text/javascript">
    //summernote.js note script
    // $(function()
    $(window).on('load',function()
    {
        $(".note-group-select-from-files").hide();
     
    });

    $(".select2").select2();

    $.validator.setDefaults({
        highlight: function(element) {
            $(element).parent('div').addClass('has-error');
        },
        unhighlight: function(element) {
            $(element).parent('div').removeClass('has-error');
        },
        errorPlacement: function (error, element) {
            error.insertAfter(element);
        }
    });

    $('#page').validate({
        rules: {
            name: {
                required: true,
            },
            content:{
               required: true,
            },
        }
    });

    // Multiple Checkboxes Validation (on submit)
    $(document).ready(function()
    {
      $('form').submit(function()
      {
        checkPosition();
      });
    });

    // Multiple Checkboxes Validation (on change)
    $(document).on('change','.position',function()
    {
        checkPosition();
    });

    function checkPosition()
    {
        var checkedLength = $('input[type=checkbox]:checked').length;
        if(checkedLength > 1)
        {
          $('#error-message').html('');
          return true;
        }
        else
        {
          $('#error-message').addClass('error').html('Please check at least one box.').css("font-weight", "bold");
          return false;
        }
    }
</script>
@endpush