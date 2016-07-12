<?php

namespace App;

use App\Post;
use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    public function fullName()
    {
        return $this->first_name . ' ' . $this->last_name;
    }

    public function avatar()
    {
        return 'http://icons.iconarchive.com/icons/jonathan-rey/simpsons/256/Homer-Simpson-02-Donut-icon.png/' . md5($this->email) . '?s=60&d=mm';
    }

    public function posts()
    {
        return $this->hasMany(Post::class);
    }
}
