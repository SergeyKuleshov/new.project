<?php
//namespace Topbier\Function;

//$imagine = new Imagine();
//
//$pic = $imagine->open('../img/background_2.png');
//$watermark = $imagine->open('../chimay-blue.jpg');
//
//$size = $pic->getSize();
//$wSize = $watermark->getSize();
//$bottomRight = new Imagine\Image\Point($size->getWidth() - $wSize->getWidth(), $size->getHeight() - $wSize->getHeight());
//
//$pic->paste($watermark, $bottomRight);
//$pic->save('../img/background_2.png');

function sum($a, $b) {
	$result = $a + $b;
	return $result;
}

//print("   <" . "Это сообщение вызвано из файла 'function.php' по средствам 'require_once'" . ">   ");


function formatting_number($number) {
    $number = ceil($number);
    $number = number_format($number);
    $number .= '₽';
    return $number;
}


function include_template($name, array $data = []) {
$name = 'templates/' . $name;
$result = '';

if (!is_readable($name)) {
return $result;
}

ob_start();
extract($data);
require $name;

$result = ob_get_clean();

return $result;
}



function get_dt_range($dt_finish) {

  $hours_and_minutes = [];

  $dt_finish = date_create($dt_finish);
  $dt_now = date_create("now");

  $dt_diff = date_diff($dt_finish, $dt_now);


  $day = date_interval_format($dt_diff, "%a");
  $hours = date_interval_format($dt_diff, "%h") + $day * 24;
  $hours_and_minutes[] = $hours;

  $minutes = date_interval_format($dt_diff, "%i");
  $hours_and_minutes[] = $minutes;

  if ($dt_finish < $dt_now) {
    return "время истекло";
  }

  return $hours_and_minutes;
}
