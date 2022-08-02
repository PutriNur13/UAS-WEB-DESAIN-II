<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Gadget extends Model
{
    protected $fillable = ['name', 'slug', 'description', 'image', 'price', 'weight', 'stock', 'status'];
    
    public function categories() {
        return $this->belongsToMany('App\Models\Category', 'category', 'name','slug','image');;
    }
}
