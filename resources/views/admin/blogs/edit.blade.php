@extends('admin.layouts.master')
@section('title', __('Edit Blog'))

@section('head_style')
  <!-- summernote -->
  <link rel="stylesheet" type="text/css" href="{{ asset('public/dist/libraries/summernote-0.8.18-dist/summernote-lite.min.css')}}">
@endsection

@section('page_content')


<div class="col-md-12">
  <div class="box box-default">
    <div class="box-body">
      <div class="row">
        <div class="col-md-10">
         <div class="top-bar-title padding-bottom">{{ __('Edit Blog') }}</div>
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


        <!-- /.box-header -->
        <form action="{{url(config('adminPrefix').'/blog/update')}}" method="post" id="page" class="form-horizontal" enctype="multipart/form-data">
           {{ csrf_field() }}

           <input class="form-control f-14" name="id" value="{{ $blog->id }}" type="hidden">

          <div class="box-body">
            <div class="form-group row">
              <label class="col-sm-2 control-label mt-11 f-14 fw-bold text-sm-end require" for="title">{{ __('Title') }}</label>
              <div class="col-sm-8">
                <input class="form-control f-14" name="title" placeholder="{{ __('Title') }}" value="{{ $blog->title }}" type="text" id="title">
                  @if ($errors->has('title'))
                      <span class="error">
                          <strong>{{ $errors->first('title') }}</strong>
                      </span>
                  @endif
              </div>
            </div>


            <div class="form-group row">
              <label class="col-sm-2 control-label f-14 fw-bold text-sm-end" for="sub_title">{{ __('Sub Title') }}</label>
              <div class="col-sm-8">
                <textarea class="form-control f-14" name="sub_title" placeholder="{{ __('Sub Title') }}" rows="5" cols="80" id="sub_title">{{ $blog->sub_title }}</textarea>
                  @if ($errors->has('sub_title'))
                      <span class="error">
                          <strong>{{ $errors->first('sub_title') }}</strong>
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
              <label class="col-sm-2 control-label mt-11 f-14 fw-bold text-sm-end" for="video">{{ __('Video') }}</label>
              <div class="col-sm-8">
                <input class="form-control f-14" name="video" placeholder="{{ __('Vide') }}" type="file" accept="video/*" id="image">
                  @if ($errors->has('video'))
                      <span class="error">
                          <strong>{{ $errors->first('video') }}</strong>
                      </span>
                  @endif
              </div>
            </div>


            <div class="form-group row">
              <label class="col-sm-2 control-label f-14 fw-bold text-sm-end required" for="content">{{ __('Content') }}</label>
              <div class="col-sm-8">
                <textarea id="content" class="form-control f-14" name="content" placeholder="{{ __('Content') }}" rows="10" cols="80" >{{ $blog->content }}</textarea>
                  @if ($errors->has('content'))
                      <span class="error">
                          <strong>{{ $errors->first('content') }}</strong>
                      </span>
                  @endif
              </div>
            </div>


            <div class="form-group row align-items-center">
              <label class="col-sm-2 control-label f-14 fw-bold text-sm-end required" for="status">{{ __('Status') }}</label>
              <div class="col-sm-8">
                <select class="select2" name="status" id="status">
                    <option value="active" <?= ( $blog->status == 'active' ) ? 'selected' : '' ?>>{{ __('Active') }}</option>
                    <option value="inactive" <?= ( $blog->status == 'inactive' ) ? 'selected' : '' ?>>{{ __('Inactive') }}</option>
                  </select>
                    @if ($errors->has('status'))
                      <span class="error">
                          <strong>{{ $errors->first('status') }}</strong>
                      </span>
                    @endif
              </div>
            </div>

          </div>
          <!-- /.box-body -->

          <div class="box-footer">
            <a href="{{  url(config('adminPrefix')."/blogs") }}" class="btn btn-theme-danger f-14">{{ __('Cancel') }}</a>
            <button class="btn btn-theme pull-right f-14" type="submit">{{ __('Update') }}</button>
          </div>
          <!-- /.box-footer -->
        </form>
        </div>
        <!-- /.box-body -->
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
        $('#content').summernote({
            placeholder: 'Hello stand alone ui',
            tabsize: 2,
            height: 400,
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'italic', 'underline']],
                ['fontname', ['fontname']],
                ['fontsize', ['fontsize']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['table', ['table']],
                ['insert', ['link', 'hr','picture']],
                ['view', ['fullscreen', 'codeview']]
            ],
        });
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