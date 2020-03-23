@extends('layouts.adminLayout')
<?php $title = "แก้ไขข้อมูลพนักงาน";?>
@section('header')
    <?php echo $title;?>
@endsection

@section('titles')
    <?php echo $title;?>
@endsection
@section('emp_link')
  active
@endsection
@section('content')
<div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">ข้อมูลพนักงานขับรถ</h3>
        </div><!-- /.card-header -->
            @foreach($data as $datas) 
            <form action="{{route('update')}}" method="POST">
                {{ csrf_field()}}
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                    <input type="hidden" name="id" value="{{$datas->id}}">
                        <div class="form-group">
                            <label>รหัสพนักงาน</label>
                        <input type="text" class="form-control" placeholder="รหัสพนักงาน" name="emp_id" value="{{$datas->emp_id}}"> 
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label>ชื่อ</label>
                            <input type="text" class="form-control" placeholder="ชื่อ-สกุล" name="emp_fname"  value="{{$datas->emp_fname}}">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label>สกุล</label>
                            <input type="text" class="form-control" placeholder="ชื่อ-สกุล" name="emp_lname" value="{{$datas->emp_lname}}">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>ที่อยู่</label>
                            <input type="text" class="form-control" placeholder="ที่อยู่" name="emp_add" value="{{$datas->emp_address}}">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>เบอร์โทร</label>
                            <input type="text" class="form-control" placeholder="เบอร์โทร" name="emp_phone" value="{{$datas->emp_phone}}">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Token Line</label>
                            <input type="text" class="form-control" placeholder="Token Line" name="emp_token" value="{{$datas->emp_token_line}}">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>ตำแหน่ง</label>
                            <input type="text" class="form-control" placeholder="ตำแหน่ง" name="emp_position" value="{{$datas->emp_position}}">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>ทะเบียนรถ</label>
                            {{-- <input type="text" class="form-control" placeholder="ทะเบียนรถ" name="car_id" value="{{$datas->car_id}}"> --}}
                            <select class="form-control" name="car_id">
                                <option selected="selected" >สายรถ</option>
                                    @foreach ($data2 as $item)
                                        <option value="{{$item->id}}">{{'เลขรถ : '.$item->car_num.' ทะเบียนรถ : '.$item->car_vehicle_reg_num}}</option>
                                    @endforeach
                                  </select>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>วันที่</label>
                            <input type="date" class="form-control" placeholder="วันที่" name="emp_date" value="{{$datas->day_off}}">
                        </div>
                    </div>  
                </div>
            </div><!-- /.card-body -->
           
            <div class="card-footer">
                <button type="submit" class="btn btn-success float-right" name="submit">เสร็จสิ้น</button>
            </div></form>
         @endforeach
    </div>
</div>



@endsection