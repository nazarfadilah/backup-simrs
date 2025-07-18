<?php
namespace App\Filament\Resources\PendaftaranResource\Api\Handlers;

use Illuminate\Http\Request;
use Rupadana\ApiService\Http\Handlers;
use App\Filament\Resources\PendaftaranResource;
use App\Filament\Resources\PendaftaranResource\Api\Requests\UpdatePendaftaranRequest;

class UpdateHandler extends Handlers {
    public static string | null $uri = '/{id}';
    public static string | null $resource = PendaftaranResource::class;

    public static function getMethod()
    {
        return Handlers::PUT;
    }

    public static function getModel() {
        return static::$resource::getModel();
    }


    /**
     * Update Pendaftaran
     *
     * @param UpdatePendaftaranRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function handler(UpdatePendaftaranRequest $request)
    {
        $id = $request->route('id');

        $model = static::getModel()::find($id);

        if (!$model) return static::sendNotFoundResponse();

        $model->fill($request->all());

        $model->save();

        return static::sendSuccessResponse($model, "Successfully Update Resource");
    }
}