<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

use App\Http\Requests;

class PostController extends Controller
{
    public function show(Post $post)
    {
        return view('post.post')->with([
            'post' => $post,
        ]);
    }
}