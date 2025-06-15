<?php

namespace App\Filament\Resources\PerawatResource\Api\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdatePerawatRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
			'nama_perawat' => 'required|string',
			'no_hp_perawat' => 'required|string',
			'id_user' => 'required|integer'
		];
    }
}
