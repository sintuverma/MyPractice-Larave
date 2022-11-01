<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
class CustomerController extends Controller
{
    public function customerHome()
    {
        return view('home');
    }
    public function createRegistration()
    {
        $title = "Customer Registration Form ";
        $url = url('/customer/register_submit');
        $data = compact('url','title');
        return view('customerRegistration')->with($data);
    }
    public function storeFormData(Request $request)
    {
        $customer = new Customer;//creating customers model class object

            // // Customer Table ki column wali field($customer->cname) may  form ki field wala name(name="cname") wali field ka data jo $request['cname'] se aya ho table me  insert karo

        $customer->user_name= $request['user_name'];// we can echo the cname field data

             echo $customer->email= $request['email'];
             echo $customer->gender= $request['gender'];
             echo $customer->address= $request['address'];
             echo $customer->state= $request['state'];
             echo $customer->country= $request['country'];

             echo $customer->dob= $request['dob'];
             echo $customer->password=md5( $request['password']);

             echo $customer->save();// insert data in table by save method
             return redirect('/customer/customersData');

    }
    // public function viewCustomerData()
    // {
    //     $customer_fdata= Customer:: all();
    //     $data = compact('customer_fdata');
    //     // echo "<pre>";
    //     // print_r($customer_fdata->toArray());
    //     // echo "<pre>";
    //     // die();
    //     return view('customerShow')->with($data);
    // }
    public function view(Request $request){
        $search = $request['search'] ?? "";

        //searching
        if($search !="")
        {
            // echo $search;
            // die();
            //$customer_fdata= Customers:: where('user_name','=', $search)->get(); it show exact shame name data when you will type exact correct data

            // it willbe show data as like we use like and %char%

            // $customer_fdata= Customers:: where('user_name','LIKE', "%$search%")->get();
            // if you want search by name or email then use this it will search both type user name and email you can add city or other fields with using orWhere().
            $customer_fdata= Customer:: where('user_name','LIKE', "%$search%")->orWhere('email','LIKE', "%$search%")->get();
            $data = compact('customer_fdata','search');
            return view('customerShow')->with($data);
        }
        else
        {
            //$customer_fdata= Customers:: all();it will fetch all records
            //we are using paginate(10) is showing only 10 record in one page. you can give according yourself ex 5,10,15,12,... jitne record tum ek page me dekhna chahte ho.

            $customer_fdata=  Customer::simplePaginate(6);
            //$customer_fdata=  Customer::all();

        }
        $data = compact('customer_fdata','search');
        return view('customerShow')->with($data);
    }
        // customer edit method

        public function edit($id)
        {
            //echo $id;
            $customer = Customer::find($id);
            if(is_null($customer))
            {
                //if not found data
                return redirect('/customer/customersData');

            }
            else{
                $title = "Update Customer Registration Form";
                $url = url('/customer/update')."/".$id;
                $data = compact('customer','url','title');
                return view('updateCustomer')->with($data);
            }
        }

        //update customer data
        public function update($cid, Request $request){
            //echo $cid;
            $customer = Customer::find($cid);
             $customer->user_name= $request['cname'];// we can echo the cname field data
             $customer->email= $request['email'];
             $customer->gender= $request['gender'];
             $customer->address= $request['address'];
             $customer->state= $request['state'];
             $customer->country= $request['country'];
             $customer->dob= $request['dob'];
             $customer->save();//update me koi naya object nahi banate hai jo insert table ka object hota hai use hi use karte hai
             return redirect('/customer/customersData');

         }
         public function restore($cid){
            // echo $cid;
            $customer = Customer:: withTrashed()->find($cid);//without this withTrashed function we cant get trashed data
            if(!is_null($customer))
            {
             $customer->restore();//for restore data
            }


         return redirect('/customer/customersData');//back customer show page
        }

    // Trash function show only trash record
    public function trash()
     {
        $customer_fdata =Customer::onlyTrashed()->get();//only trashed data dikhaye
        $data = compact('customer_fdata');
        return view('customerTrash')->with($data);
     }


     // Deleting  Customer record from database not permanent it going on customer trash page.
     public function delete_customers($cid)
     {
        // echo $cid;
        $customer = Customer:: find($cid);
        if(!is_null($customer))
        {
         $customer->delete();
         return redirect('/customer/customersData');
        }
     }
        // this is deleting permanent record from database
     public function permanentDelete($cid){
        // echo $cid;
        $customer = Customer:: withTrashed()->find($cid);//without this withTrashed function we cant get trashed data
        if(!is_null($customer))
        {
         $customer->forceDelete();//for restore data
        }
         return redirect('/customer/customersData');//back customer show page
      }

    }
