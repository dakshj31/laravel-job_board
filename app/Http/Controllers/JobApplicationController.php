<?php

namespace App\Http\Controllers;

use App\Models\Job;
use Illuminate\Http\Request;

class JobApplicationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    
    public function create(Job $job)
    {
        return view('job_application.create', ['job' => $job]);
    }

  
    public function store(Request $request)
    {
        //
    }

    public function destroy(string $id)
    {
        //
    }
}
