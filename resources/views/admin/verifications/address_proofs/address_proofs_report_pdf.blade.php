@extends('admin.pdf.app')

@section('title', __('Address Proof pdf'))

@section('content')
    <div class="mt-30">
        <table class="table">
            <tr class="table-header">
                <td>{{ __('Date') }}</td>
                <td>{{ __('User') }}</td>
                <td>{{ __('Country') }}</td>
                <td>{{ __('State') }}</td>
                <td>{{ __('City') }}</td>
                <td>{{ __('Zip Code') }}</td>
                <td>{{ __('Address Line 1') }}</td>
                <td>{{ __('Address Line 2') }}</td>
                <td>{{ __('Status') }}</td>
            </tr>

            @foreach ($addressProofs as $addressProof)
                <tr class="table-body">
                    <td>{{ dateFormat($addressProof->created_at) }}</td>
                    <td>{{ getColumnValue($addressProof->user) }}</td>
                    <td>{{ getColumnValue($addressProof->country) }}</td>
                    <td>{{ getColumnValue($addressProof->state) }}</td>
                    <td>{{ getColumnValue($addressProof->city) }}</td>
                    <td>{{ getColumnValue($addressProof->zip_code) }}</td>
                    <td>{{ getColumnValue($addressProof->address_line_1) }}</td>
                    <td>{{ getColumnValue($addressProof->address_line_2) }}</td>
                    <td>{{ getStatus($addressProof->status) }}</td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection
