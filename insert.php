<?php
/**
 * Created by PhpStorm.
 * User: yuange
 * Date: 2018/7/24
 * Time: 23:19
 */
require_once 'config.php';
require_once './include/command.php';
$psw = isset($_POST['psw'])?$_POST['psw']:null;//获取前端提交的管理密码
if($Inspsw!=$psw)
{
    echo "<script language=javascript>layer.alert('管理密码错误！', {icon: 4})</script>";
    exit();
}

$text = isset($_POST['text'])?$_POST['text']:null;//获取前端提交的名字

$link=mysqli_connect($dbconfig['host'],$dbconfig['user'],$dbconfig['pwd'],$dbconfig['dbname']);

if (!$link){
    echo '数据库连接失败！<br/>错误信息'.mysqli_connect_error().'<br/>请联系管理员！<br/>源梦科技出品';
    exit();
}
else{
    mysqli_set_charset($link,'utf8');
}

$text=Strub($text);
$sql='insert into `'.$dbconfig['dbname'].'`.`'.$dbconfig['table'].'`(`name`, `com`, `num`)values'.$text;

if($result=mysqli_query($link,$sql))
{
    echo "<script language=javascript>layer.msg('成功插入了".mysqli_affected_rows($link)."行数据！')</script>";
    mysqli_close($link);
}
else{
    echo "<script language=javascript>layer.alert('插入失败！', {icon: 2})</script>";
    mysqli_close($link);
}