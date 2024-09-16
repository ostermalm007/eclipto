<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\Admin\FeedbacksDataTable;
use Intervention\Image\Facades\Image;
use App\Http\Controllers\Controller;
use Validator, Config, Common;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use DOMDocument;
use App\Models\{Feedback, Meta,
    Pages
};

class FeedbackController extends Controller
{
    protected $helper;
    public function __construct()
    {
        $this->helper = new Common();
    }
    protected $data = [];

    public function index(FeedbacksDataTable $dataTable)
    {
        $data['menu'] = 'feedbacks';
        return $dataTable->render('admin.feedbacks.list', $data);
        // $rows=Feedback::orderByDesc('id')->paginate(12);
        // return view('admin.feedbacks.list', compact('rows'));

    }

    public function add()
    {
        $data['menu'] = 'feedbacks';
        return view('admin.feedbacks.add');
    }

    public function store(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'user'    => 'required|unique:feedbacks,user',
            'designation'    => 'required',
            'content' => 'required',
            'rating' => 'required',
            'image' => 'required|image',
        ]);

        if ($validation->fails())
        {
            return redirect()->back()->withErrors($validation->errors());
        }

        $feedback           = new Feedback();
        $feedback->user     = trim($request->user);
        $feedback->designation     = trim($request->designation);
        $feedback->image   = $request->file('image')->store('feedbacks/images','public');
        $feedback->rating   = $request->rating;

        $feedback->content = $request->content;


        
        $feedback->save();

        $meta              = new Meta();
        $meta->url         = url('/feedback').$feedback->id;
        $meta->title       = $feedback->user.','.$feedback->designation;
        $meta->description = $feedback->content;
        $meta->keywords    = '';
        $meta->save();

        $this->helper->one_time_message('success', __('The :x has been successfully saved.', ['x' => __('feedback')]));
        return redirect()->intended(config('adminPrefix')."/feedbacks");
    }

    public function edit($feedback_id)
    {
        $data['menu'] = 'feedbacks';
        
        $data['feedback'] = $feedback = Feedback::find($feedback_id);

        return view('admin.feedbacks.edit', $data);
    }

    public function update(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'user'    => 'required|unique:feedbacks,user,' . $request['id'],
            'designation'    => 'required',
            'content' => 'required',
            'rating' => 'required',
        ]);

        if ($validation->fails())
        {
            return redirect()->back()->withErrors($validation->errors());
        }

        $feedback           = Feedback::find($request['id']);
        $feedback->user     = trim($request->user);
        $feedback->designation     = trim($request->designation);
        $feedback->content = $request->content;

        if($request->hasFile('image')){
            $feedback->image   = $request->file('image')->store('feedbacks/images','public');
        }

        $feedback->save();

        $this->helper->one_time_message('success', __('The :x has been successfully saved.', ['x' => __('blog')]));
        return redirect()->intended(config('adminPrefix')."/settings/feedbacks");
    }

    public function delete($feedback_id)
    {
        $feedback = Feedback::find($feedback_id);
        $meta = Meta::where('url', url('/feedback').$feedback->id)->first();
        if ($meta)
        {
            $meta->delete();
        }
        $feedback->delete();
        $this->helper->one_time_message('success', __('The :x has been successfully deleted.', ['x' => __('blog')]));
        return redirect()->intended(config('adminPrefix')."/feedbacks");
    }
}
