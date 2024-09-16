<?php

namespace App\DataTables\Admin;

use Yajra\DataTables\Services\DataTable;
use Common, Config, Auth;
use App\Models\Blog;

use Illuminate\Http\JsonResponse;


class BlogsDataTable extends DataTable
{
    public function ajax(): JsonResponse
    {
        $blog = $this->query();

        return datatables()
            ->of($blog)
            ->addColumn('action', function ($blog) {
                $edit = $delete = '';
                $edit = (Common::has_permission(auth('admin')->user()->id, 'edit_page')) ? '<a href="' . url(config('adminPrefix') . '/blog/edit/' . $blog->id) . '"  class="btn btn-xs btn-primary"><i class="fa fa-edit"></i></a>&nbsp;' : '';
                $delete = (Common::has_permission(auth('admin')->user()->id, 'delete_page')) ? '<a href="' . url(config('adminPrefix') . '/blog/delete/' . $blog->id) . '" class="btn btn-xs btn-danger delete-warning"><i class="fa fa-trash"></i></a>' : '';
                return $edit . $delete;
            })
            ->addColumn('image', function ($blog) {
                return  "<a href='".url('/blog/'.$blog->url)."' target='_blank'>
                            <img  style='height:30px' src='".asset('/public/storage/'.$blog->image)."'>
                        </a>";
            })
            ->addColumn('video', function ($blog) {
                if(!empty($blog->video)){
                    return  "<a href='".url('/blog/'.$blog->url)."' target='_blank'>
                        <video  style='height:30px' controls src='".asset('/public/storage/'.$blog->video)."'></video>
                    </a>";
                }else{
                    return '';
                }
                
            })
            ->addColumn('url', function ($blog) {
                return '<a target="_blank" href="' . url('/blog/'.$blog->url) . '">' . $blog->url . '</a>';
            })
            ->editColumn('status', function ($blog) {
                return ucfirst($blog->status);
            })
            ->rawColumns(['url', 'image','video', 'action'])
            ->make(true);
    }

    public function query()
    {
        $blog = Blog::select();
        return $this->applyScopes($blog);
    }

    public function html()
    {
        return $this->builder()
            ->addColumn(['data' => 'id', 'name' => 'blogs.id', 'title' => __('ID'), 'searchable' => false, 'visible' => false])
            ->addColumn(['data' => 'title', 'title' => 'blogs.title', 'title' => __('Title')])
            ->addColumn(['data' => 'image', 'name' => 'image', 'title' => __('Image'), 'orderable' => false, 'searchable' => false])
            ->addColumn(['data' => 'video', 'name' => 'video', 'title' => __('Video'), 'orderable' => false, 'searchable' => false])
            ->addColumn(['data' => 'url', 'name' => 'blogs.url', 'title' => __('Url')])
            ->addColumn(['data' => 'status', 'name' => 'blogs.status', 'title' => __('Status')])
            ->addColumn(['data' => 'action', 'name' => 'action', 'title' => __('Action'), 'orderable' => false, 'searchable' => false])
            ->parameters(dataTableOptions());
    }
}
