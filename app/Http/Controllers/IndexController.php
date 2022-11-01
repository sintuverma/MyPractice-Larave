<?php

namespace App\Http\Controllers;
use App\Models\Group;   //importing group model
use App\Models\My_member; // importing my_member model
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {
            // return "one to one relationship";
            // return My_member::find(1)->getGroup;// getGroup object is call from my_members model find()finding 1 id data
            return My_member::with('getGroup')->get();//getting all data from this relationship.
    }

    public function manyRelationship()
    {

        echo "one to many relationship";
        return My_member::with('getMany')->get();
    }

    // Route Model Bounding Group is class of Model and simple show the data passing primary key in url. Route Model bounding use for delete data in table and for update data . if you sending primary key id and primary key value not exist then it will show the 404 not found

    public function groupData(Group $group_id)
    {   return $group_id;
        //return Group::with('member')->get();
    }
}
