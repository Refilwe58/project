<?php

$dbHost="localhost";
$dbUser="root";
$dbPass="";
$dbName="bus";

//IF IT DOESNT CONNECT
if(!$conn=mysqli_connect($dbHost,$dbUser,$dbPass,$dbName))
{
    die("failed to connect");
}