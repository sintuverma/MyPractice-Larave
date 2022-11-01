<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Customer extends Model
{
    use HasFactory;
    use SoftDeletes; // this is not a class this is a trait. if you will not fire this command then it will be generated error

    protected $table= 'customers';
    protected $primaryKey ='cid';
    public function setUserNameAttribute($value){

        $this->attributes['user_name'] = ucwords($value);

    }
    public function setStateAttribute($value){

        $this->attributes['state'] = ucwords($value);

    }
    public function setCountryAttribute($value){

        $this->attributes['country'] = ucwords($value);

    }
    public function setAddressAttribute($value){

        $this->attributes['address'] = ucwords($value);

    }
    //this attribute will be change the date format getDobAttribute function and we can change formate in camel case  like we entered and save state = uttar pradesh  and result show in clint side Uttar Pradesh

    public function getDobAttribute($value){
         return date("d-M-Y", strtotime($value));
    }
    public function getStateAttribute($value){
        return ucwords($value);
   }
   public function getAddressAttribute($value){
    return ucwords($value);
}
    public function getCountryAttribute($value){
    return ucwords($value);
}

}
