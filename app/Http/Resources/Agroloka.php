<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Agroloka extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {   return[
        'id'=>$this->id,
        'name'=>$this->name,
        'address'=>$this->address,
        'contact'=>$this->contact,
        'email'=>$this->email,
        'note'=>$this->note
    ];
}
   /*  public function with($request){
        return[
            'Version'=>'0.0.1',
            'Author'=>url('http://jeffryalexsander.com')
        ];
    } */
}
