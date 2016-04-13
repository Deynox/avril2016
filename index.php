<?php
session_start();
require_once 'config.php';

if(!isset($_SESSION['key']) || $_SESSION['key'] != session_id()){
	require_once "controleurs/site.php";
}else{
	require "controleurs/admin.php";
}
?>