<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\Admin\BlogsDataTable;
use Intervention\Image\Facades\Image;
use App\Http\Controllers\Controller;
use Validator, Config, Common;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use DOMDocument;
use App\Models\{Blog, Meta,
    Pages
};

class BlogController extends Controller
{
    protected $helper;
    public function __construct()
    {
        $this->helper = new Common();
    }
    protected $data = [];

    public function index(BlogsDataTable $dataTable)
    {
        $data['menu'] = 'blogs';
        return $dataTable->render('admin.blogs.list', $data);
        // $rows=Blog::orderByDesc('id')->paginate(12);
        // return view('admin.blogs.list', compact('rows'));

    }

    public function add()
    {
        $data['menu'] = 'blogs';
        return view('admin.blogs.add');
    }

    public function store(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'title'    => 'required|unique:blogs,title',
            'image' => 'required|image',
            'content' => 'required',
        ]);

        if ($validation->fails())
        {
            return redirect()->back()->withErrors($validation->errors());
        }

        $blog           = new Blog();
        $blog->title     = trim($request->title);
        $blog->image   = $request->file('image')->store('blogs/images','public');
        $blog->sub_title     = trim($request->sub_title);
        $blog->url      = Str::slug(trim($request->title), '-');
        $blog->status   = $request->status;

        $content = $request->content;

        if($request->hasFile('video')){
            $blog->video   = $request->file('video')->store('blogs/videos','public');
        }


        $dom = new DomDocument();
        libxml_use_internal_errors(true);

        // $dom->loadHtml($content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        // $dom->loadHtml($content);
        $dom->loadHTML(mb_convert_encoding($content, 'HTML-ENTITIES', 'UTF-8')); //to UTF-8

        libxml_use_internal_errors(false);
        $images = $dom->getElementsByTagName('img');

        foreach ($images as $img)
        {
            $src = $img->getAttribute('src');
            // if the img source is 'data-url'
            if (preg_match('/data:image/', $src))
            {
                // get the mimetype
                preg_match('/data:image\/(?<mime>.*?)\;/', $src, $groups);
                $mimetype = $groups['mime'];
                // Generating a random filename
                $filename = uniqid();
                $filepath = "/uploads/page-images/$filename.$mimetype";
                $image    = Image::make($src)
                    ->encode($mimetype, 100)
                    ->save(public_path($filepath));
                $new_src = url("public/uploads/page-images/$filename.$mimetype");
                $img->removeAttribute('src');
                $img->setAttribute('src', $new_src);
            }
        }
        $blog->content = $dom->saveHTML();
        $blog->save();

        $meta              = new Meta();
        $meta->url         = $blog->url;
        $meta->title       = $blog->name;
        $meta->description = $blog->name;
        $meta->keywords    = '';
        $meta->save();

        $this->helper->one_time_message('success', __('The :x has been successfully saved.', ['x' => __('blog')]));
        return redirect()->intended(config('adminPrefix')."/blogs");
    }

    public function edit($blog_id)
    {
        $data['menu'] = 'blogs';
        
        $data['blog'] = $blog = Blog::find($blog_id);

        return view('admin.blogs.edit', $data);
    }

    public function update(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'title'    => 'required|unique:blogs,title,' . $request['id'],
            'content' => 'required',
        ]);

        if ($validation->fails())
        {
            return redirect()->back()->withErrors($validation->errors());
        }

        $blog           = Blog::find($request['id']);
        $blog->title     = trim($request->title);
        $blog->sub_title     = trim($request->sub_title);
        $blog->url      = Str::slug(trim($request->title), '-'); //fixed - pm v2.3
        $blog->status   = $request->status;
        $content = $request->content;

        if($request->hasFile('image')){
            $blog->image   = $request->file('image')->store('blogs/images','public');
        }
        if($request->hasFile('video')){
            $blog->video   = $request->file('video')->store('blogs/videos','public');
        }

        $dom = new DomDocument();
        libxml_use_internal_errors(true);

        // $dom->loadHtml($content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        // $dom->loadHtml($content);
        $dom->loadHTML(mb_convert_encoding($content, 'HTML-ENTITIES', 'UTF-8')); //to UTF-8

        libxml_use_internal_errors(false);
        $images = $dom->getElementsByTagName('img');
        foreach ($images as $img)
        {
            $src = $img->getAttribute('src');
            if (preg_match('/data:image/', $src))
            {
                preg_match('/data:image\/(?<mime>.*?)\;/', $src, $groups);
                $mimetype = $groups['mime'];
                // Generating a random filename
                $filename = uniqid();
                $filepath = public_path("uploads/page-images/$filename.$mimetype");
                $image    = Image::make($src)
                    ->encode($mimetype, 100)
                    ->save($filepath);
                $new_src = url("public/uploads/page-images/$filename.$mimetype");
                $img->removeAttribute('src');
                $img->setAttribute('src', $new_src);
            }
        }
        $blog->content = $dom->saveHTML();
        $blog->save();

        $this->helper->one_time_message('success', __('The :x has been successfully saved.', ['x' => __('blog')]));
        return redirect()->intended(config('adminPrefix')."/blogs");
    }

    public function delete($blog_id)
    {
        $blog = Blog::find($blog_id);
        $meta = Meta::where('url', $blog->url)->first();
        if ($meta)
        {
            $meta->delete();
        }
        $blog->delete();
        $this->helper->one_time_message('success', __('The :x has been successfully deleted.', ['x' => __('blog')]));
        return redirect()->intended(config('adminPrefix')."/blogs");
    }
}
