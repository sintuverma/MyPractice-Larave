
@extends('layout.header')
{{-- @include('layout.header') --}}
@section('title') {{'Customer Trash Data Page|'}} @endsection



         <a class="btn btn-primary d-inline-block mt-2 float-right mr-2" href="{{route('customer.registrationForm')}}">Add</a>
         {{-- <a class="btn btn-dark d-inline-block mt-2 float-right mr-2" href="{{url('/customer/customersData')}}">Customer View</a>--}}
          <table class="table table-dark mt-5">
                <thead>
                  <tr>
                    <th scope="col">SR NO.</th>
                    <th scope="col">NAME</th>
                    <th scope="col">EMAIL</th>
                    <th scope="col">GENDER</th>
                    <th scope="col">ADDRESS</th>
                    <th scope="col">STATE</th>
                    <th scope="col">COUNTRY</th>
                    <th scope="col">DATE OF BIRTH</th>
                    <th scope="col">STATUS</th>
                    <th scope="col">ACTION</th>

                  </tr>
                </thead>
                <tbody>
                  @php
                     $j=1;
                  @endphp
                  @foreach($customer_fdata as  $customer_fdata)
                  <tr>
                    <th scope="row">{{ $j++ }}</th>
                    <td>{{ $customer_fdata->user_name}}</td>
                    <td>{{ $customer_fdata->email}}</td>
                    <td>
                      @if($customer_fdata->gender=='M')
                      MALE
                      @elseif($customer_fdata->gender=='F')
                      FEMALE
                      @else
                      OTHER
                      @endif
                    </td>
                    <td>{{ $customer_fdata->address}}</td>
                    <td>{{ $customer_fdata->state}}</td>
                    <td>{{ $customer_fdata->country}}</td>
                    {{-- we are using the helper file where we define get_ formatted_date() it return a formatted value <td>{{ get_formatted_date($customer_fdata->dob,'d-M-Y')}}</td> --}}
                    <td>{{ $customer_fdata->dob }}</td>

                    <td>
                      @if($customer_fdata->status===1)
                      <span class="badge badge-success">Active</span>
                      @else
                      <span class="badge badge-danger">Inactive</span>
                      @endif
                    </td>
                    <td>
                      {{-- href="{{url('/customer/delete/')}}/{{$customer_fdata->cid}}"  this is first way route and url based and below is second way by route with name --}}


                      {{-- href="{{route('customer.delete',['cid'=> $customer_fdata->cid])}}" cid paas as pass on web routes cid if you changed then it will show the error so keep it same  and we can send more data by array in customer.delete route --}}

                      <a class="btn btn-danger" href="{{route('customer.permanentDelete',['cid'=> $customer_fdata->cid])}}"> Force Delete</a> &nbsp;

                      <a class="btn btn-primary" href="{{route('customer.restore',['cid'=> $customer_fdata->cid])}}" >Restore</a>
                    </td>
                  </tr>
                 @endforeach
                </tbody>
              </table>


    </div>


    @include('layout.footer')
