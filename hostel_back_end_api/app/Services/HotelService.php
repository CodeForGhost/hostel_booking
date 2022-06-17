<?php

namespace App\Services;


use App\Models\Hotel;

class HotelService
{

    public static function store($data)
    {
        $hotel = new Hotel();
        $hotel->name = $data['name'];
        $hotel->desc = $data['desc'];
        $hotel->imageUrl = $data['imageUrl'];
        $hotel->isBook = $data['isBook'];
        $hotel->save();
        return $hotel;
    }

    public static function update($hotel, $data)
    {
        $hotel->name = $data['name'];
        $hotel->desc = $data['desc'];
        $hotel->imageUrl = $data['imageUrl'];
        $hotel->isBook = $data['isBook'];
        $hotel->save();
        return $hotel;
    }
}
