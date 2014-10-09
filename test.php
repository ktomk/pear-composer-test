<?php

require __DIR__ . '/vendor/autoload.php';

$request = new HTTP_Request2();
var_dump($request);

$url = new Net_URL2('');
var_dump($url);
