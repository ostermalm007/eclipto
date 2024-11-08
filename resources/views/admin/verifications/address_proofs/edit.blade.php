@extends('admin.layouts.master')
@section('title', __('Edit Address Verification'))

@section('page_content')
	<div class="box box-default">
		<div class="box-body">
			<div class="d-flex justify-content-between">
				<div>
					<div class="top-bar-title padding-bottom pull-left">{{ __('Address Verification Details') }}</div>
				</div>

				<div>
					@if ($documentVerification->status)
						<p class="text-left mb-0 f-18">{{ __('Status') }} : @if ($documentVerification->status == 'approved')<span class="text-green">{{ __('Approved') }}</span>@endif
						@if ($documentVerification->status == 'pending')<span class="text-blue">{{ __('Pending') }}</span>@endif
						@if ($documentVerification->status == 'rejected')<span class="text-red">{{ __('Rejected') }}</span>@endif</p>
					@endif
				</div>
			</div>
		</div>
	</div>

    <section class="min-vh-100">
        <div class="my-30">
            <div class="row">
                <form action="{{ url(config('adminPrefix').'/address-proofs/update') }}" class="row form-horizontal" id="deposit_form" method="POST">
                    {{ csrf_field() }}
                    <!-- Page title start -->
                    <div class="col-md-8">
                        <div class="box">
                            <div class="box-body">
                                <div class="panel">
                                    <div>
                                        <div class="p-4">
                                            <input type="hidden" value="{{ $documentVerification->id }}" name="id" id="id">
                                            <input type="hidden" value="{{ $documentVerification->user_id }}" name="user_id" id="user_id">
                                            <input type="hidden" value="{{ $documentVerification->verification_type }}" name="verification_type" id="verification_type">

                                            <div class="panel panel-default">
                                                <div class="panel-body">

                                                    @if ($documentVerification->user_id)
                                                        <div class="form-group row">
                                                            <label class="control-label f-14 fw-bold text-sm-end col-sm-3" for="user">{{ __('User') }}</label>
                                                            <input type="hidden" class="form-control" name="user" id="user" value="{{ getColumnValue($documentVerification->user) }}">
                                                            <div class="col-sm-9">
                                                            <p class="form-control-static f-14">{{ getColumnValue($documentVerification->user) }}</p>
                                                            </div>
                                                        </div>
                                                    @endif


                                                    @if ($documentVerification->created_at)
                                                        <div class="form-group row">
                                                            <label class="control-label f-14 fw-bold text-sm-end col-sm-3" for="created_at">{{ __('Date') }}</label>
                                                            <input type="hidden" class="form-control" name="created_at" id="created_at" value="{{ $documentVerification->created_at }}">
                                                            <div class="col-sm-9">
                                                            <p class="form-control-static f-14">{{ dateFormat($documentVerification->created_at) }}</p>
                                                            </div>
                                                        </div>
                                                    @endif
                                                    
                                                    <div class="form-group row">
                                                        <label class="control-label f-14 fw-bold text-sm-end col-sm-3" for="country">{{ __('Country') }}</label>
                                                        <input type="hidden" class="form-control" name="country" id="country" value="{{ $documentVerification->country }}">
                                                        <div class="col-sm-9">
                                                            <p class="form-control-static f-14">{{ $documentVerification->country }}</p>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group row">
                                                        <label class="control-label f-14 fw-bold text-sm-end col-sm-3" for="state">{{ __('State') }}</label>
                                                        <input type="hidden" class="form-control" name="state" id="state" value="{{ $documentVerification->state }}">
                                                        <div class="col-sm-9">
                                                        <p class="form-control-static f-14">{{ $documentVerification->state }}</p>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group row">
                                                        <label class="control-label f-14 fw-bold text-sm-end col-sm-3" for="city">{{ __('City') }}</label>
                                                        <input type="hidden" class="form-control" name="city" id="city" value="{{ $documentVerification->city }}">
                                                        <div class="col-sm-9">
                                                        <p class="form-control-static f-14">{{ $documentVerification->city }}</p>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group row">
                                                        <label class="control-label f-14 fw-bold text-sm-end col-sm-3" for="zip_code">{{ __('Zip Code') }}</label>
                                                        <input type="hidden" class="form-control" name="zip_code" id="zip_code" value="{{ $documentVerification->zip_code }}">
                                                        <div class="col-sm-9">
                                                        <p class="form-control-static f-14">{{ $documentVerification->zip_code }}</p>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group row">
                                                        <label class="control-label f-14 fw-bold text-sm-end col-sm-3" for="address_line_1">{{ __('Address Line 1') }}</label>
                                                        <input type="hidden" class="form-control" name="address_line_1" id="address_line_1" value="{{ $documentVerification->address_line_1 }}">
                                                        <div class="col-sm-9">
                                                        <p class="form-control-static f-14">{{ $documentVerification->address_line_1 }}</p>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group row">
                                                        <label class="control-label f-14 fw-bold text-sm-end col-sm-3" for="address_line_2">{{ __('Address Line 2') }}</label>
                                                        <input type="hidden" class="form-control" name="address_line_2" id="address_line_2" value="{{ $documentVerification->address_line_2 }}">
                                                        <div class="col-sm-9">
                                                        <p class="form-control-static f-14">{{ $documentVerification->address_line_2 }}</p>
                                                        </div>
                                                    </div>
                                                        

                                                    @if ($documentVerification->status)
                                                        <div class="form-group row align-items-center">
                                                            <label class="control-label f-14 fw-bold text-sm-end col-sm-3" for="status">{{ __('Change Status') }}</label>
                                                            <div class="col-sm-6">
                                                                <select class="form-control select2 w-60" name="status" id="status">
                                                                    <option value="approved" {{ $documentVerification->status ==  'approved'? 'selected':"" }}>{{ __('Approved') }}</option>
                                                                    <option value="pending"  {{ $documentVerification->status == 'pending' ? 'selected':"" }}>{{ __('Pending') }}</option>
                                                                    <option value="rejected"  {{ $documentVerification->status == 'rejected' ? 'selected':"" }}>{{ __('Rejected') }}</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    @endif

                                                    <div class="row">
                                                        <div class="col-md-6 offset-md-3">
                                                            <a id="cancel_anchor" class="btn btn-theme-danger f-14 me-1" href="{{ url(config('adminPrefix').'/address-proofs') }}">{{ __('Cancel') }}</a>
                                                            <button type="submit" class="btn btn-theme f-14" id="deposits_edit">
                                                                <i class="fa fa-spinner fa-spin d-none"></i> <span id="deposits_edit_text">{{ __('Update') }}</span>
                                                            </button>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box">
                            <div class="box-body">
                                <div class="panel">
                                    <div>
                                        <div class="mt-4 p-4">
                                            @if ($documentVerification->file)
	                                            <div class="row">
	                                            	<input type="hidden" class="form-control" name="address_file" value="{{ $documentVerification->file->filename }}">
	                                                <ul class="list-unstyled">
	                                                	<p class="mb-0 f-18 text-decoration-underline">{{ __('Address Proof') }}</p>
													    <li> {{ $documentVerification->file->filename }}
															<a class="text-info pull-right" href="{{ url('public/uploads/user-documents/address-proof-files').'/'.$documentVerification->file->filename }}">
																<i class="fa fa-download text-black"></i>
			                                                </a>
													    </li>
													</ul>
												</div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
@endsection

@push('extra_body_scripts')
<script type="text/javascript">

	$(".select2").select2({});

	// disabling submit and cancel button after form submit
	$(document).ready(function()
	{
	  $('form').submit(function()
	  {
	     	$("#deposits_edit").attr("disabled", true);

	     	$('#cancel_anchor').attr("disabled","disabled");

             $(".fa-spin").removeClass("d-none");

            $("#deposits_edit_text").text('Updating...');

            // Click False
			$('#deposits_edit').click(false);
			$('#cancel_anchor').click(false);
	  });
	});
</script>
@endpush
