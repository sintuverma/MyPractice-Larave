
@extends('layout.header')
@section('title') {{'Update Registration of Customers|'}} @endsection
@include('layout.header')
<div class="row mt-3">
    <div class="col-md-4"></div>
    <div class="col-md-4">
        <h3 class="text-primary bg-light">{{$title}} </h3>

        <form action="{{$url}}" method="POST" >
            @csrf
            <div class="form-group">
                <label for="exampleInputEmail1">Name*</label>
                <input type="text" class="form-control" name="cname"id="name" aria-describedby="Customername" value="{{$customer->user_name}}"/>

                <span class="text-danger">
                  @error('cname')
                      {{$message}}
                  @enderror
                </span>
              </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Email address*</label>
              <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="Customer Email" value="{{$customer->email}}">
              <span class="text-danger">
                @error('email')
                    {{$message}}
                @enderror
              </span>
            </div>



              <div class="form-group">
                <label for="country">Country *</label>
                <input type="text" class="form-control" name="country"id="country" aria-describedby="country" value="{{$customer->country}}">
                <span class="text-danger">
                  @error('country')
                      {{$message}}
                  @enderror
                </span>
              </div>
              <div class="form-group">
                <label for="state">State *</label>
                <input type="text" class="form-control" name="state"id="state" aria-describedby="state" value="{{$customer->state}}">
                <span class="text-danger">
                  @error('state')
                      {{$message}}
                  @enderror
                </span>
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Address *</label>
                <input type="text" class="form-control" name="address"id="address" aria-describedby="Enter City Or Address " value="{{$customer->address}}">
                <span class="text-danger">
                  @error('address')
                      {{$message}}
                  @enderror
                </span>
              </div>
@include('layout.footer')


<label class="form-check-label" for="exampleCheck1">Gender *</label>
<div class="form-check form-check-inline">
<input class="form-check-input" type="radio" name="gender" id="Male" value="M" {{$customer->gender=="M"? "checked" : ""}} />
<label class="form-check-label" for="Male">Male</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="F" {{$customer->gender=="F"? "checked" : ""}} />
<label class="form-check-label" for="Female">Female</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="O" {{$customer->gender=="O"? "checked" : ""}} />
<label class="form-check-label" for="Other">Other</label>
</div>
              <div class="form-group">
                <label for="exampleInputEmail1">DOB *</label>
                <input type="date" class="form-control" name="dob"id="address" aria-describedby="Enter Date Of Birth" value="{{$customer->dob}}"/>
                <span class="text-danger">
                  @error('dob')
                      {{$message}}
                  @enderror
                </span>
              </div>

          <input type="submit" class="btn btn-success btn-block mb-5">
      </form>
    </div>
    <div class="col-md-4"></div>
</div>
</div>
</div>


