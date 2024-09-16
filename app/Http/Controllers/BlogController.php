<?php

namespace App\Http\Controllers;

use App\Models\Blog;

class BlogController extends Controller
{
    protected $helper;
    protected $service;

    public function index()
    {
        $query=Blog::orderByDesc('id');

        if(isset($_GET['search'])){
            $query->where('title','LIKE','%'.$_GET['search'].'%');
        }
        
        $data=$query->paginate(12);

        return view('frontend.blogs.index',$data);
    }
    public function details($slug)
    {
        $row=Blog::where('url',$slug)->firstOrFail();

        return view('frontend.blogs.details',compact('row'));
    }

}
