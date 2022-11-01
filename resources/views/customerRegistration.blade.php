
@extends('layout.header')
@section('title') {{'Customer Registration|'}} @endsection
{{-- @include('layout.header') --}}
    <div class="row mt-3">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <h3 class="text-primary bg-light">{{$title}} </h3>

            <form action="{{$url}}" method="POST" >
                @csrf
                <div class="form-group">
                    <label for="exampleInputEmail1">Name*</label>
                    <input type="text" class="form-control" name="user_name"id="name" aria-describedby="Customername" value=""/>
                    <span class="text-danger">

                    </span>
                  </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Email address*</label>
                  <input type="text" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="Customer Email" value="">
                  <span class="text-danger">

                  </span>
                </div>


                <div class="form-group">
                  <label for="exampleInputPassword1">Password*</label>
                  <input type="password"  name="password"class="form-control " id="exampleInputPassword1">
                  <span class="text-danger">

                  </span>
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1">Confirm Password*</label>
                    <input type="password"  name="password_confirmation"class="form-control " id="exampleInputPassword1">
                    <span class="text-danger">

                    </span>
                  </div>
                  <div class="form-group">
                    <label for="country">Country *</label>
                    <input type="text" class="form-control" name="country"id="country" aria-describedby="country" value="">
                    <span class="text-danger">

                    </span>
                  </div>
                  <div class="form-group">
                    <label for="state">State *</label>
                    <input type="text" class="form-control" name="state"id="state" aria-describedby="state" value="">
                    <span class="text-danger">

                    </span>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Address *</label>
                    <input type="text" class="form-control" name="address"id="address" aria-describedby="Enter City Or Address " value="">
                    <span class="text-danger">

                    </span>
                  </div>


<label class="form-check-label" for="exampleCheck1">Gender *</label>
  <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="gender" id="Male" value="M" / >
  <label class="form-check-label" for="Male">Male</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="F" />
  <label class="form-check-label" for="Female">Female</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="O" />
  <label class="form-check-label" for="Other">Other</label>
</div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">DOB *</label>
                    <input type="date" class="form-control" name="dob"id="address" aria-describedby="Enter Date Of Birth" value=""/>
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



@include('layout.footer')
