
<?php 
$csvFile = $_FILES['csv-file']['tmp_name'];
$jsonFile = $_FILES['json-file']['tmp_name'];
$xmlfile = $_FILES['xml-file']['tmp_name'];




$host= 'localhost';
 $user = 'root';
 $password = '';
 $db_name = 'test_six';
 $con = mysqli_connect($host, $user, $password, $db_name);

if(mysqli_connect_errno()){
    echo "failed".mysqli_connect_errno();
}





// вывод данных из xml

$nXML= file_get_contents($xmlfile);
$rxml = new XMLReader();                               
    $rxml->xml($nXML);                                    
    while($rxml->read() && $rxml->name !== 'product');//Перемещаемся к первому продукту
   
    $name = "";
    $price = "";
    $discount = "";
    while($rxml->name === 'product'){              
        if($rxml->getAttribute("pid") == "315") //если  pid = 315 то это искомый элемент
        {
            $node = new SimpleXMLElement($rxml->readOuterXML());//читаем значение элементов
            $name = $node->name;
            $price = $node->price;
            $discount = $node->discount;
            break;
        }
        $rxml->next('product');     //перемещаемся к следующему
    }  
    echo "Продукт №315. Наименование: {$name}, цена: {$price} скидка: {$discount}<br>";

    $info="Продукт №315. Наименование: {$name}, цена: {$price} скидка: {$discount}";
    $sql = "INSERT into `xml` (info) VALUES ('$info')";
    $ult = mysqli_query($con, $sql);


// вывод данных из xml


// Проверка на определеный ключ json
$ourData = file_get_contents($jsonFile);
var_dump($ourData);

$data = json_decode($ourData, true);

if (array_key_exists('key', $data)) {
    echo' Ключ key присутствует в файле<br>';

    $info="$ourData";
    $sql = "INSERT into `json` (info) VALUES ('$info')";
    $ult = mysqli_query($con, $sql);

} else {
    echo' Ключ key отсутствует в файле<br>';
   
}




// Проверка на определеный ключ json





// поиск определенного значения csv

function find_value($csvFile, $value) {
    $f = fopen($csvFile, "r");
    $result = 'false';
    while ($row = fgetcsv($f, 0,";")) {
        if ($row[0] == $value) {
            $result = $row[1];
            break;
        }
    }
    
    fclose($f);
    return $result;
}

echo(find_value('csv.csv', 'cucumber'));
$info=find_value('csv.csv', 'cucumber');
$sql = "INSERT into `csv` (info) VALUES ('$info')";
$ult = mysqli_query($con, $sql);
     // поиск определенного значения csv

?>