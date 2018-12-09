<?php
header("Content-type:text/html;charset=utf-8");
/**
 * Created by PhpStorm.
 * User: yuange
 * Date: 2018/7/24
 * Time: 16:32
 */
require_once 'config.php';
require_once './include/command.php';
require_once './include/ConvertPinyin.php';
$name = isset($_POST['name'])?$_POST['name']:null;//获取前端提交的名字

$link=SqlgetLink($dbconfig['host'],$dbconfig['user'],$dbconfig['pwd'],$dbconfig['dbname']);

$res=DbSelect($link,$dbconfig['table'],'name',$name);
if($res==null){
    echo "<script language=javascript>layer.alert('还未发货，请稍后查询！', {icon: 4}); </script>";
    exit();
}
//将字符串转换成拼音字符串
$p=new Pinyin();
$typeCom = $p->output($res["com"]);//汉字转换拼音 and 获得快递公司

$typeNu = $res["num"];//获得快递单号

if(isset($typeCom)&&isset($typeNu)){
	$url = 'http://api.kuaidi100.com/api?id='.$AppKey.'&com='.$typeCom.'&nu='.$typeNu.'&valicode=[]&show=0&muti=1&order=desc';//JSON 生成完整的请求URL

	$get_content=file_get_contents($url);

	$resarr=json_decode($get_content,true);

	$newurl='https://m.kuaidi100.com/index_all.html?type='.$typeCom.'&postid='.$typeNu.'&callbackurl=http://'.$_SERVER['SERVER_NAME'];//预防出错

	if ($resarr['status']==0 || $resarr['status']==2) {
		echo '<script>window.location.href="'.$newurl.'";</script>';
		//echo "<script language=javascript>layer.alert('".$resarr['message']."',{icon: 1})</script>";
	}
	else{
		echo '<div style="border-top:2px solid #3385ff; margin-top:20px; margin-bottom:0px;"></div>';
		echo '<table class="table">';
		foreach ($resarr['data'] as $key) {
			echo '
			<tr>
			<td class="col-xs-3 col-sm-3">'.$key['time'].'</td>
			<td class="col-xs-1 col-sm-1 status"></td>
			<td class="col-xs-8 col-sm-8">'.$key['context'].'</td>
			</tr>';
		}
		echo "</table>";
 	//echo '<hr><iframe src="'.$html.'" width="100%" height="380" frameborder="0" allowtransparency="yes">';
	}
}
else{
    echo "<script language=javascript>layer.alert('网页错误，请联系源梦科技 www.ym998.cn！',{icon: 2})</script>";
}