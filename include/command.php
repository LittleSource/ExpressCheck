<?php

function SqlgetLink($host,$user,$pwd,$dbname){
    $link=mysqli_connect($host,$user,$pwd,$dbname);
    if (!$link){
        echo '数据库连接失败！<br/>错误信息'.mysqli_connect_error().'<br/>请联系管理员！<br/>源梦科技出品';
        exit();
    }
    else{
        mysqli_set_charset($link,'utf8');
        return $link;
    }
}

function DbSelect($link,$table,$field,$value){
    $query="select * from ".$table." where ".$field."='".$value."'";
    $result = mysqli_fetch_assoc(mysqli_query($link, $query));
    mysqli_close($link);
    return $result;
}

function Strub($str){
    $newstr='("'.$str.'")';
    $newstr=str_replace(',','","',$newstr);
    return str_replace(';','"),("',$newstr);
}