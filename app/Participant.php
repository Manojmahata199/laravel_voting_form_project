<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;


class Participant extends Model
{
    public const STORAGE_FOLDER_NAME = "files";
    public const STORAGE_DISK = "public";
    protected $appends = ['photo', 'votes'];

    public function getPhotoAttribute()
    {
        $data = json_decode($this->attributes['file_photo']);
        return $data[0]->download_link ?? '';
    }

    public function getVotesAttribute()
    {
        $count = DB::table('user_votes')->where('participant_id', $this->id)->count();
        return $count;
    }

    public function setFilePhotoAttribute($file)
    {
        $field = 'file_photo';
        if(request()->hasFile($field)) {
            $stored = $file->store(Participant::STORAGE_FOLDER_NAME, Participant::STORAGE_DISK);
            $this->attributes[$field] = '[{"download_link":"' . $stored . '","original_name":"' . $file->getClientOriginalName() . '"}]';
        }
    }
    
    public function setFileVideoAttribute($file)
    {
        $field = 'file_video';
        if(request()->hasFile($field)) {
            $stored = $file->store(Participant::STORAGE_FOLDER_NAME, Participant::STORAGE_DISK);
            $this->attributes[$field] = '[{"download_link":"' . $stored . '","original_name":"' . $file->getClientOriginalName() . '"}]';
        }
    }
    
    public function setFileAwardsAttribute($file)
    {
        $field = 'file_awards';
        if(request()->hasFile($field)) {
            $stored = $file->store(Participant::STORAGE_FOLDER_NAME, Participant::STORAGE_DISK);
            $this->attributes[$field] = '[{"download_link":"' . $stored . '","original_name":"' . $file->getClientOriginalName() . '"}]';
        }
    }
    
    public function setFileSocialAttribute($file)
    {
        $field = 'file_social';
        if(request()->hasFile($field)) {
            $stored = $file->store(Participant::STORAGE_FOLDER_NAME, Participant::STORAGE_DISK);
            $this->attributes[$field] = '[{"download_link":"' . $stored . '","original_name":"' . $file->getClientOriginalName() . '"}]';
        }
    }
    
    /*public function setFileExperienceAttribute($file)
    {
        $field = 'file_experience';
        if(request()->hasFile($field)) {
            $stored = $file->store(Participant::STORAGE_FOLDER_NAME, Participant::STORAGE_DISK);
            $this->attributes[$field] = '[{"download_link":"' . $stored . '","original_name":"' . $file->getClientOriginalName() . '"}]';
        }
    }*/
    
    public function setFileSupportAttribute($file)
    {
        $field = 'file_support';
        if(request()->hasFile($field)) {
            $stored = $file->store(Participant::STORAGE_FOLDER_NAME, Participant::STORAGE_DISK);
            $this->attributes[$field] = '[{"download_link":"' . $stored . '","original_name":"' . $file->getClientOriginalName() . '"}]';
        }
    }
}
