@extends('admin.main')

@section('content')
    <form action="" method="post">
        <div class="card-body">
            <div class="form-group">
                <label for="menu">Tên Danh Mục</label>
                <input type="text" name="name" value="{{ $menu->name }}" class="form-control" id="menu" placeholder="Nhập tên danh mục">
            </div>

            <div class="form-group">
                <label>Danh Mục</label>
                <select name="parent_id" class="form-control">
                    <option value="0" {{ $menu->parent_id == 0 ? 'selected' : '' }}>Danh Mục Cha</option>
                    @foreach($menus as $menuParent)
                        <option value="{{ $menuParent->id }}"
                            {{ $menu->parent_id == $menuParent->id ? 'selected' : '' }}>
                            {{ $menuParent->name }}
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="form-group">
                <label>Mô Tả</label>
                <textarea name="description" class="form-control">{{ $menu->description }}</textarea>
            </div>

            <div class="form-group">
                <label>Mô Tả Chi Tiết</label>
                <textarea name="content" class="form-control">{{ $menu->content }}</textarea>
            </div>
            @include('admin.footer')

            <div class="form-group">
                <label for="menu">Ảnh Danh Mục</label>
                <input type="file" class="form-control" id="upload">
                <div id="image_show">
                    <a href="" target="_blank">
                        <img src="{{ $menu->thumb }}" width="100px">
                    </a>
                </div>
                <input type="hidden" name="thumb" id="thumb" value="{{ $menu->thumb }}">
            </div>

            <div class="form-group">
                <label>Kích Hoạt</label>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="1" type="radio" id="active" name="active"
                            {{ $menu->active == 1 ? 'checked=""' : ''}}>
                    <label for="active" class="custom-control-label">Có</label>
                </div>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="0" type="radio" id="no_active" name="active"
                            {{ $menu->active == 0 ? 'checked=""' : ''}}>
                    <label for="no_active" class="custom-control-label">Không</label>
                </div>
            </div>

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Cập Nhật Danh Mục</button>
            </div>
        @csrf
    </form>

    <script>
        CKEDITOR.replace('content')
    </script>
@endsection
