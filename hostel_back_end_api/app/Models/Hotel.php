<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    use HasFactory;

    protected $table = 'hotels';

    protected $fillable = ['name', 'desc', 'imageUrl', 'isBook'];

    // In future we add nearby location
    public static function list()
    {
        $list = self::orderBy('name')
            ->paginate();

        return $list;
    }
}
