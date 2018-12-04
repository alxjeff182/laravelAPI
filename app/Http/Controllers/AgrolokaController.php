<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Agroloka;
use App\Http\Resources\Agroloka as AgrolokaResource;

class AgrolokaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //get data
        $agrolokas = Agroloka::orderBy('created_at', 'desc')->paginate(2); 
        //return data
        return AgrolokaResource::collection($agrolokas);
    } 
    public function store(Request $request)
    {
        $agroloka=$request->isMethod('put') ? Agroloka::findOrFail 
        ($request->agroloka_id):new Agroloka;

        $agroloka->id=$request->input('agroloka_id');
        $agroloka->name=$request->input('name');
        $agroloka->address=$request->input('address');
        $agroloka->contact=$request->input('contact');
        $agroloka->email=$request->input('email');
        $agroloka->note=$request->input('note');

        if($agroloka->save()){
            return new AgrolokaResource($agroloka);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //get data
        $agroloka = Agroloka::findOrFail($id);

        //return single data
        return new AgrolokaResource($agroloka);
    }
    public function destroy($id)
    {
        //get data
        $agroloka = Agroloka::findOrFail($id);

        //delete & return data
        if($agroloka->delete()){
        return new AgrolokaResource($agroloka);
    }
    }
}
