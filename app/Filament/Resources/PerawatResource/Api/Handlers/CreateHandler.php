<?php
namespace App\Filament\Resources\PerawatResource\Api\Handlers;

use Illuminate\Http\Request;
use Rupadana\ApiService\Http\Handlers;
use App\Filament\Resources\PerawatResource;
use App\Filament\Resources\PerawatResource\Api\Requests\CreatePerawatRequest;

class CreateHandler extends Handlers {
    public static string | null $uri = '/';
    public static string | null $resource = PerawatResource::class;

    public static function getMethod()
    {
        return Handlers::POST;
    }

    public static function getModel() {
        return static::$resource::getModel();
    }

    /**
     * Create Perawat
     *
     * @param CreatePerawatRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function handler(CreatePerawatRequest $request)
    {
        $model = new (static::getModel());

        $model->fill($request->all());

        $model->save();

        return static::sendSuccessResponse($model, "Successfully Create Resource");
    }
}