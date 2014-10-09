<?php

require __DIR__ . '/vendor/autoload.php';

// list include path paths
$paths = explode(PATH_SEPARATOR, $path = get_include_path());
var_dump($path);
printf("include_path has %d path(s):\n", count($paths));
foreach ($paths as $i => $path) {
    printf(" # %02d '%s'\n", $i, $path);
}
echo "\n";

// do something with the required libraries
$request = new HTTP_Request2();
var_dump(get_class($request));
$url     = new Net_URL2('');
var_dump(get_class($url));
