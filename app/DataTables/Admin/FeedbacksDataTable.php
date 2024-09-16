<?php

namespace App\DataTables\Admin;

use Yajra\DataTables\Services\DataTable;
use Common, Config, Auth;
use App\Models\Feedback;

use Illuminate\Http\JsonResponse;
class FeedbacksDataTable extends DataTable 
{
    public function ajax(): JsonResponse
    {
        $feedback = $this->query();

        return datatables()
            ->of($feedback)
            ->addColumn('action', function ($feedback) {
                $edit = $delete = '';
                $edit = (Common::has_permission(auth('admin')->user()->id, 'edit_page')) ? '<a href="' . url(config('adminPrefix') . '/settings/feedback/edit/' . $feedback->id) . '"  class="btn btn-xs btn-primary"><i class="fa fa-edit"></i></a>&nbsp;' : '';
                $delete = (Common::has_permission(auth('admin')->user()->id, 'delete_page')) ? '<a href="' . url(config('adminPrefix') . '/settings/feedback/delete/' . $feedback->id) . '" class="btn btn-xs btn-danger delete-warning"><i class="fa fa-trash"></i></a>' : '';
                return $edit . $delete;
            })
            ->addColumn('user', function ($feedback) {
                return "<img  style='height:30px' src='".asset('/public/storage/'.$feedback->image)."'>".$feedback->user.'<br>'.$feedback->designation;
            })
            ->editColumn('content', function ($feedback) {
                return ucfirst($feedback->content);
            })
            ->editColumn('rating', function ($feedback) {
                return ucfirst($feedback->rating);
            })
            ->rawColumns(['user', 'content', 'action'])
            ->make(true);
    }

    public function query()
    {
        $feedback = Feedback::select();
        return $this->applyScopes($feedback);
    }

    public function html()
    {
        return $this->builder()
            ->addColumn(['data' => 'id', 'name' => 'feedbacks.id', 'title' => __('ID'), 'searchable' => false, 'visible' => false])
            ->addColumn(['data' => 'user', 'name' => 'feedbacks.user', 'title' => __('user')])
            ->addColumn(['data' => 'content', 'name' => 'feedbacks.content', 'title' => __('content')])
            ->addColumn(['data' => 'rating', 'name' => 'feedbacks.rating', 'title' => __('rating')])
            ->addColumn(['data' => 'action', 'name' => 'action', 'title' => __('Action'), 'orderable' => false, 'searchable' => false])
            ->parameters(dataTableOptions());
    }
}
