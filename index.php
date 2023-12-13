<?php    



if(isset($_POST['submit']))
{

    header('process_files.php');
}


?>

<form action="process_files.php" method="POST" enctype="multipart/form-data">
    <label for="csv-file">Выберите CSV файл:</label>
    <input type="file" name="csv-file" id="csv-file"><br>
    <label for="json-file">Выберите JSON файл:</label>
    <input type="file" name="json-file" id="json-file"><br>
    <label for="json-file">Выберите XML файл:</label>
    <input type="file" name="xml-file" id="xml-file"><br>
    <input type="submit" value="Отправить">
</form>