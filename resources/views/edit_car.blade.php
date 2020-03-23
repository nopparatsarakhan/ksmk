@extends('layouts.adminLayout')
<?php $title = "เพิ่มรถ";?>
@section('header')
    <?php echo $title;?>
@endsection
@section('titles')
    <?php echo $title;?>
@endsection
@section('car_link')
  active
@endsection
@section('content')
@if(Session::has('message'))
<div class="alert alert-info">{{Session::get('message')}}</div>
@endif
<div class="col-md-12">
    <form action="{{route('create_car')}}" method="post" >
    {{ csrf_field()}}
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">เพิ่มรถ</h3>
            </div><!-- /.card-header -->
            <div class="card-body">
                <div class="row">
                    @foreach($data as $datas)
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>เลขรถ</label>
                        <input type="text" class="form-control" placeholder="กรอกเลขรถ" name="car_num" value="{{$datas->car_num}}">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>ทะเบียนรถ</label>
                        <input type="text" class="form-control" placeholder="กรอกทะเบียนรถ" name="car_vehicle_reg_num" value="{{$datas->car_vehicle_reg_num}}">
                        </div>
                    </div>
                    @endforeach
                </div>
            </div><!-- /.card-body -->
            <div class="card-footer">
                <button type="submit" class="btn btn-success float-right">เสร็จสิ้น</button>
            </div><!-- /.card-footer -->
        </div>
    </form>
</div>



@endsection