@extends("layouts.global")

@section("title")
    Edit User
@endsection

@section("content")
    <div class="col-md-8">
        @if (session('status'))
            <div class="aler alert-success">
                {{session('status')}}
            </div>
        @endif
        <br>
        <br>
        <form enctype="multipart/form-data" class="bg-white shadow-sm p-3" action="{{route('users.update', [$user->id])}}" method="POST">

        @csrf

        <input type="hidden" value="PUT" name="_method">

        <label for="name">Name</label>
        <input type="text" name="name" id="name" value="{{$user->name}}" placeholder="full name" class="form-control">
        <br>

        <label for="username">Username</label>
        <input type="text" name="username" id="username" value="{{$user->username}}" placeholder="username" class="form-control" disabled>
        <br>

        <label for="">Status</label>
        <br>
        <input {{$user->status == "ACTIVE" ? "checked" : ""}}
        value="ACTIVE"
        type="radio" 
        name="status" 
        id="active"
        class="form-control">
        <label for="active">Active</label>

        <input {{$user->status == "INACTIVE" ? "checked" : ""}}
        value="INACTIVE"
        type="radio" 
        name="status" 
        id="inactive"
        class="form-control">
        <label for="inactive">Inactive</label>
        <br>
        <br>

        <label for="">Roles</label>
        <br>
        <input 
        type="checkbox" {{in_array("ADMIN", json_decode($user->roles)) ? "checked" : ""}}
        name="roles[]" 
        id="ADMIN"
        value="ADMIN">
        <label for="ADMIN">Administrator</label>

        <input 
        type="checkbox" {{in_array("STAFF", json_decode($user->roles)) ? "checked" : ""}} 
        name="roles[]" 
        id="STAFF"
        value="STAFF">
        <label for="STAFF">Staff</label>

        <input {{in_array("CUSTOMER", json_decode($user->roles)) ? "checked" : ""}}
        type="checkbox" 
        name="roles[]" 
        id="CUSTOMER"
        value="CUSTOMER">
        <label for="CUSTOMER">Customer</label>
        <br>
        <br>

        <label for="phone">Phone Number</label>
        <br>
        <input type="text" name="phone" id="phone" value="{{$user->phone}}" class="form-control">
        <br>

        <label for="address">Address</label>
        <textarea name="address" id="address" class="form-control">{{$user->address}}</textarea>
        <br>

        <label for="avatar">Avatar Image</label>
        <br>
        Current Avatar: <br>
        @if ($user->avatar)
            <img src="{{asset('storage/'.$user->avatar)}}" width="120px">
            <br>
        @else
            No Avatar
        @endif
        <br>
        <input type="file" name="avatar" id="avatar" class="form-control"><small class="text-muted">Kosongkan jika tidak ingin mengubah avatar</small>

        <hr
        class="my-3">

        <label for="email">Email</label>
        <input type="text" name="email" id="email" value="{{$user->email}}" placeholder="user@mail.com" class="form-control" disabled>
        <br>

        <input class="btn btn-primary" type="submit" class="form-control" value="Save">
        </form>
    </div>
@endsection