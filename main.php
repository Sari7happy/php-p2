<?php 
    $num01 =123;
    $num02 =1.23;

    echo gettype($num01)."\n";
    echo gettype($num02)."\n";
    var_dump($num02)."\n";

//phpの数値型には整数型のinteger型、小数点のfloat型、double型（小数点以下の桁数を多く使える。）
//小数点型を調べるのはvar_dumpを使う