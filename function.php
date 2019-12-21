<?php
namespace NewProject\Func;

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

print("   <" . "Это сообщение вызвано из файла 'function.php' по средствам 'require_once'" . ">   ");


function formatting_number($number) {
    $number = ceil($number);
    $number = number_format($number);
    $number .= '₽';
    return $number;
}