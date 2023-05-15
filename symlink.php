
<?php
	//document root kedua
	$targetFolder = 'D:\xampp1_\htdocs\mediabisnis\storage\app\public/';
	//lokasi document root utama
	$linkFolder = 'D:\xampp1_\htdocs\mediabisnis\storage/';
	symlink($targetFolder,$linkFolder);
	echo '<br>';
	echo 'Symlink Completed';
?>
