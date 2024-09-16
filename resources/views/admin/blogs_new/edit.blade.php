@extends('admin.layouts.app')
@section('title', __('Edit Blog'))

@section('head_style')

@endsection

@section('page_content')

        <form action="{{url(config('adminPrefix').'/blog/update')}}" method="post"  enctype="multipart/form-data" class="space-y-5">
          {{ csrf_field() }}

          <input class="form-control f-14" name="id" value="{{ $blog->id }}" type="hidden">
         
          <div>
              <label for="gridAddress1">Title</label>
              <input id="gridAddress1" type="text" name="title" placeholder="" value="{{ $blog->title }}" class="form-input" />
              @if ($errors->has('title'))
                <p class="mt-1 text-danger">{{ $errors->first('title') }}</p>
              @endif
          </div>
          <div>
              <label for="gridAddress1">Sub Title</label>
              <input id="gridAddress1" type="text" name="sub_title" placeholder="" value="{{ $blog->sub_title }}" class="form-input" />
              @if ($errors->has('sub_title'))
                <p class="mt-1 text-danger">{{ $errors->first('sub_title') }}</p>
              @endif
          </div>
          {{-- <div>
              <label for="gridAddress2">Address2</label>
              <input id="gridAddress2" type="text" placeholder="Enter Address2" value="Apartment, studio, or floor" class="form-input" />
          </div> --}}
          <div>
              <label for="content">Content</label>
              <textarea id="content" class="form-control editor f-14" name="content" placeholder="{{ __('Content') }}" rows="10" style="width: 100%">{{ $blog->content }}</textarea>
              @if ($errors->has('content'))
                  <span class="error">
                      <strong>{{ $errors->first('content') }}</strong>
                  </span>
              @endif
          </div>
          <div class="grid grid-cols-1 lg:grid-cols-3 gap-4">
              <div>
                  <label for="gridAddress1">Image @if(!empty($blog->image)) <a href="{{ url('public/storage/'.$blog->image) }}" class="text-primary hover:underline" target="_blank">(View Uploaded Image)</a> @endif </label>
                  <input id="gridAddress1" type="file" accept="image/*" name="image" placeholder="" class="form-input" />
                  @if ($errors->has('image'))
                    <p class="mt-1 text-danger">{{ $errors->first('image') }}</p>
                  @endif
              </div>
              <div>
                <label for="gridAddress1">Video @if(!empty($blog->video)) <a href="{{ url('public/storage/'.$blog->video) }}" class="text-primary hover:underline" target="_blank">(View Uploaded Video)</a> @endif </label>
                <input id="gridAddress1" type="file" accept="video/*" name="video" placeholder="" class="form-input" />
                @if ($errors->has('video'))
                  <p class="mt-1 text-danger">{{ $errors->first('video') }}</p>
                @endif
              </div>
              <div>
                  <label for="status">Status</label>
                 
                <select class="form-select" name="status" id="status">
                  <option value="active" <?= ( $blog->status == 'active' ) ? 'selected' : '' ?>>{{ __('Active') }}</option>
                  <option value="inactive" <?= ( $blog->status == 'inactive' ) ? 'selected' : '' ?>>{{ __('Inactive') }}</option>
                </select>
                @if ($errors->has('status'))
                  <p class="mt-1 text-danger">{{ $errors->first('status') }}</p>
                @endif
              </div>
          </div>
          {{-- <div>
              <label class="flex items-center mt-1 cursor-pointer">
                  <input type="checkbox" class="form-checkbox" />
                  <span class="text-white-dark"">Check me out</span>
              </label>
          </div> --}}


          <button type="submit" class="btn btn-primary !mt-6">Submit</button>
        </form>




      
@endsection

@section('extra_body_scripts')

  @include('components.html_editor')


@endsection