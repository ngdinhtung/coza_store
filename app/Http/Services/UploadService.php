<?php

namespace App\Http\Services;

class UploadService
{
    public function store($request)
    {
        try {
            if ($request->hasFile('file')) {
                $name = $request->file('file')->getClientOriginalName();

                $pathFull = 'uploads/' . date('Y_m_d');
                $path = $request->file('file')->storeAs(
                    'public/' . $pathFull, $name
                );

                return '/storage/' . $pathFull . '/' . $name;
            }
        } catch (\Exception $e) {
            return false;
        }

    }
}
