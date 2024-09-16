@extends('admin.layouts.app')

@section('title', __('Address Verification'))

@section('head_style')
   

@endsection
@section('breadcrumbs')
    <li class="before:content-['/'] ltr:before:mr-1 rtl:before:ml-1">
        <span>{{ __('Address Verification') }}</span>
    </li>
@endsection
@section('page_content')

<div class="row">
    <div class="col-md-12">
    <div class="card">
        <div class="card-body table-responsive f-14">
            <table class="table table-striped table-hover dt-responsive" id="dataTableBuilder" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th title="Date">Date</th>
                    <th title="User">User</th>
                    <th title="Country">Country</th>
                    <th title="State">State</th>
                    <th title="City">City</th>
                    <th title="Zip Code">Zip Code</th>
                    <th title="Address Line 1">Address Line 1</th>
                    <th title="Address Line 2">Address Line 2</th>
                    <th title="Number">Uploaded Document</th>
                    <th title="Status">Status</th>
                    <th title="Action">Action</th>
                </tr>
                </thead>
                <tbody>
                @forelse($rows as $row)

                    {{-- 
                    $sender = getColumnValue($row['user);
                    if ($sender <> '-' && Common::has_permission(auth('admin')->user()->id, 'edit_user')) {
                        return '<a href="' . url(config('adminPrefix') . '/users/edit/' . $row['user->id) . '">' . $sender . '</a>';
                    }
                    return (Common::has_permission(auth('admin')->user()->id, 'edit_address_verfication'))  --}}


                    <tr>
                        <td>{{ dateFormat($row['created_at']) }}</td>
                        
                        <td>
                            <a target="_blank" class="text-primary hover:underline" href="{{ url(config('adminPrefix') . '/users/edit/' . $row->user->id) }}">
                            {{ $row->user->first_name }} {{ $row->user->last_name }}
                            </a>
                        </td>
                        <td>
                            {{ $row['country'] }}
                        </td>
                        <td>
                            {{ $row['state'] }}
                        </td>
                        <td>
                            {{ $row['city'] }}
                        </td>
                        <td>
                            {{ $row['zip_code'] }}
                        </td>
                        <td>
                            {{ $row['address_line_1'] }}
                        </td>
                        <td>
                            {{ $row['address_line_2'] }}
                        </td>
                        <td>
                            <a class="text-primary hover:underline" href="{{ url('public/uploads/user-documents/identity-proof-files').'/'.$row['file']->filename }}" target="_blank">
                                <i class="fa fa-download text-black"></i>
                                {{ $row['file']->filename }}
                            </a>
                        </td>
                        <td id="status-{{ $row['id'] }}">
                            <span class="badge @if($row['status']=='approved') bg-success @elseif($row['status']=='pending') bg-warning @else bg-danger @endif">{{ $row['status'] }}</span>
                        </td>
                        <td>
                            {{-- <a href="{{ url(config('adminPrefix') . '/identity-proofs/edit/' . $row['id']) }}" class="btn btn-xs btn-primary">
                                <i class="fa fa-edit"></i> Edit
                            </a> --}}

                            <form action="{{ url(config('adminPrefix').'/identity-proofs/update') }}" class="row form-horizontal" id="status-change-form" method="POST">
                                {{ csrf_field() }}
                                <input type="hidden" value="{{ $row['id'] }}" name="id" id="id">
                                <input type="hidden" value="{{ $row['user_id'] }}" name="user_id" id="user_id">
                                <input type="hidden" value="{{ $row['verification_type'] }}" name="verification_type" id="verification_type">
                                
                                <div class="form-group row align-items-center">
                                    {{-- <label class="control-label f-14 fw-bold text-sm-end col-sm-3" for="status">{{ __('Change Status') }}</label> --}}
                                    <div class="col-sm-6">
                                        <select class="form-select select2 w-60" name="status" id="status">
                                            <option value="approved" {{ $row['status'] ==  'approved'? 'selected':"" }}>{{ __('Approved') }}</option>
                                            <option value="pending"  {{ $row['status'] == 'pending' ? 'selected':"" }}>{{ __('Pending') }}</option>
                                            <option value="rejected"  {{ $row['status'] == 'rejected' ? 'selected':"" }}>{{ __('Rejected') }}</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </td>
                    </tr>
                @empty 

                @endforelse
                </tbody>
            </table>
        </div>
        <div class="card-foorter">{{ $rows->links() }}</div>
    </div>
    </div>
</div>
@endsection

@section('extra_body_scripts')


    <script>

            $(".form-select").on("change", function(event) {
                var form = $(this).closest("form"); // Find the closest form
                var formData = form.serialize(); // Serialize the form data

                $.ajax({
                    url: "{{ url(config('adminPrefix').'/address-proofs/update') }}", // Replace with your server endpoint
                    type: "POST",
                    data: formData,
                    success: function(response) {
                        
                        const toast = window.Swal.mixin({
                            toast: true,
                            position: 'top-end',
                            showConfirmButton: false,
                            timer: 3000,
                            padding: '2em',
                        });
                        
                        if(response.status=='success'){
                            $("#status-"+response.id).html(response.badge);

                            toast.fire({
                                icon: 'success',
                                title: 'status is updated successfully',
                                padding: '2em',
                            });
                        }else{
                            toast.fire({
                                icon: 'error',
                                title: 'something went wrong',
                                padding: '2em',
                            });
                        }

                    },
                    error: function(xhr, status, error) {
                        alert("An error occurred: " + xhr.responseText);
                    }
                });
            });
        
        
    </script>
  


@endsection
