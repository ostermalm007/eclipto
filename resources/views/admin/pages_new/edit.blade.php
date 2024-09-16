@extends('admin.layouts.app')
@section('title', __('Edit Blog'))

@section('head_style')

@endsection

@section('page_content')

        <form action="{{url(config('adminPrefix').'/settings/page/update')}}" method="post"  enctype="multipart/form-data" class="space-y-5">
          {{ csrf_field() }}

          <input class="form-control f-14" name="id" value="{{ $page->id }}" type="hidden">
         
          <div class="grid grid-cols-1 lg:grid-cols-4 gap-4">
            
            <div class="lg:col-span-2">
              <label for="gridAddress1">{{ __('Name') }}</label>
              <input id="gridAddress1" type="text" name="name" placeholder="" value="{{ $page->name }}" class="form-input" />
              @if ($errors->has('name'))
                <p class="mt-1 text-danger">{{ $errors->first('name') }}</p>
              @endif
            </div>
            <div>
              <p>{{ __('Position') }}:</p>
              <label class="flex items-center mt-1 cursor-pointer" for="checkbox-header">
                  <input type="checkbox" name="header" class="form-checkbox" <?= in_array('header',$page->position)?'checked="true"':'' ?> id="checkbox-header" />
                  <span class="text-white-dark"">header</span>
              </label>
              <label class="flex items-center mt-1 cursor-pointer" for="checkbox-header">
                <input type="checkbox" name="footer" class="form-checkbox" <?= in_array('footer',$page->position)?'checked="true"':'' ?> id="checkbox-header" />
                <span class="text-white-dark"">footer</span>
            </label>
            </div>
            <div>
                <label for="status">Status</label>
                
              <select class="form-select" name="status" id="status">
                <option value="active" {{ $page->status == 'active' ? 'selected' : '' }} > {{ __('Active') }}</option>
                <option value="inactive" {{ $page->status == 'inactive' ? 'selected' : '' }} > {{ __('Inactive') }}</option>
              </select>
              @if ($errors->has('status'))
                <p class="mt-1 text-danger">{{ $errors->first('status') }}</p>
              @endif
            </div>
          </div>
          
          <div>
              <label for="content">Content</label>
              <textarea id="content" class="form-control editor f-14" name="content" placeholder="{{ __('Content') }}" rows="10" style="width: 100%">{{ $page->content }}</textarea>
              @if ($errors->has('content'))
                  <span class="error">
                      <strong>{{ $errors->first('content') }}</strong>
                  </span>
              @endif
          </div>
          


          <button type="submit" class="btn btn-primary !mt-6">Submit</button>
        </form>




      
@endsection

@section('extra_body_scripts')

  @include('components.html_editor')


@endsection