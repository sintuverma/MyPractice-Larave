<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class My_member extends Model
{
    use HasFactory;
    protected $primaryKey = 'members_id';
    function getGroup()
    {
        return $this->hasOne('App\Models\Group','group_id');// relationship making using pre define function hasOne("importing model"," table primary key id") and define my_members table protected variable equal to primary key id of the my_members table.
    }
    function getMany()
    {
        return $this->hasMany('App\Models\Group','group_id','group_id');// read above then do continue here is three parameter pass first path of model second is primary key that model and third is other table foreign key name. then it will not conflict otherwise it will be conflict.
    }
}
