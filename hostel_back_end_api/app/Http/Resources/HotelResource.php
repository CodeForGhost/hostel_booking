<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class HotelResource extends JsonResource
{

    /**
     * Indicates if the resource's collection keys should be preserved.
     *
     * @var bool
     */
    public $preserveKeys = true;



    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        if (isset($this->id))
            $data = [
                'id' => $this->id,
                'name' => $this->name,
                'desc' => $this->desc,
                'imageUrl' => $this->imageUrl,
                'isBook' => $this->isBook,
            ];

        return $data;
    }
}
