<?php
//namespace NewProject\Index;

//"require_once" - подключает файлы. Если в подключаемом файле есть вывод 
//функции, например какой-нибудь текст print'ом, то он выведится, но чтобы 
//вызвать функцию в этот файл эту функцию нужно указать в "use", через "namespace"
//того файла в котором эта функция находится.

//require_once 'vendor/autoload.php';
require_once 'function.php';
//require_once 'test_funct.php';



//use function NewProject\Func\sum;
//use function funct;
//use function NewProject\Func\formatting_number;

//print(" <  " . sum(7, 2) . "функция 'sum' вызванная из файла 'func' в файл 'index.php'" . "  >" . PHP_EOL);

$is_auth = rand(0, 1);
$user_name = 'Сергей Кулешов'; // укажите здесь ваше имя

$style = ["Dubbel", "Tripel", "Belgian Ale", "Quadrupel", "Brown Ale", "IPA"];

$beer = [
	[
	"title" => "Chimay Red",
	"style" => "Dubbel",
	"price" => 180,
	"url_picture" => "img/chimay-red.jpeg"
	],
	[
	"title" => "Westmalle",
        "style" => "Dubbel",
        "price" => 180,
        "url_picture" => "img/westmal-dubbel.jpeg"
	],
	[
        "title" => "Chimay Red",
        "style" => "Dubbel",
        "price" => 250,
        "url_picture" => "img/chimay-red.jpeg"
        ],
	[
        "title" => "Chimay Red",
        "style" => "Dubbel",
        "price" => 220,
        "url_picture" => "img/chimay-red.jpeg"
        ],
	[
        "title" => "Chimay Red",
        "style" => "Dubbel",
        "price" => 190,
        "url_picture" => "img/chimay-red.jpeg"
        ],
	[
        "title" => "Chimay Red",
        "style" => "Dubbel",
        "price" => 175,
        "url_picture" => "img/chimay-red.jpeg"
        ]
];


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


//function formatting_number($number) {
//    $number = ceil($number);
//    $number = number_format($number);
//    $number .= '₽';
//    return $number;
//}


$page_content = include_template('main.php',[

    'style' => $style,
    'beer' => $beer
]);

$layout_content = include_template('layout.php', [

    'main' => $page_content,
    'page_title' => 'Главная',
    'style' => $style,
    'is_auth' => $is_auth,
    'user_name' => $user_name
]);

print($layout_content);

