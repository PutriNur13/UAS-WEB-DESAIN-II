<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Gadget;
use App\Http\Resources\Gadgets as GadgetResourceCollection;
use App\Http\Resources\Gadget as GadgetResource;
use Illuminate\Support\Facades\DB;

class GadgetController extends Controller
{
	public function index()
    {
        $criteria = Gadget::paginate(4);
        return new GadgetResourceCollection($criteria);
    }

    public function slug($slug)
    {
        $criteria = Gadget::where('slug', $slug)->first();
        return new GadgetResource($criteria);
    }

    public function top($count)
    {
        $criteria = Gadget::select('*')
        ->orderBy('views', 'DESC')
        ->limit($count)
        ->get();
        return new GadgetResourceCollection($criteria);
    }
    
}
