<?php
namespace app\models;

use yii\db\ActiveRecord;

class User_info extends ActiveRecord
{
    public static function tableName()
    {
        return 'User_info';
    }
}