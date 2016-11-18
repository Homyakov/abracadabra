<?php

namespace app\controllers;

use app\models\User_info;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\Simple;

class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $html = new Simple();
        $html->load_file('www.html');
        $nikname = $html->find('#fb-timeline-cover-name',0)->plaintext;
        $html->load_file('www2.html');
        $work = $html->find('div._4qm1',0)->plaintext;
        $education = $html->find('div._4qm1',1)->plaintext;
        $user_info = new User_info();
        $user_info->nikname = $nikname;
        $user_info->work = $work;
        $user_info->education = $education;
        $user_info->save();
        unlink("www.html");
        unlink("www2.html");

        return $this->render('index');
    }

  
}
