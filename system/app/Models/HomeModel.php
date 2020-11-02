<?php
class HomeModel extends Mysql {
	public function __construct(){
	//heradar la clase padre
		parent::__construct();
	}
	public function getItems(){
		$sqlQuery = "SELECT a.product_nombre, b.categ_nombre, a.product_img, a.product_descripcion, a.product_precio, a.product_fechaPublicacion
									FROM 	table_producto a JOIN table_categoria b
									WHERE	a.product_categoria = b.categ_id ORDER BY rand() LIMIT 6";
		$request = $this->select_all($sqlQuery);
		return $request;
	}
	/*
	public function setuser(string $nombre, int $edad){
		$sqlQuery = "INSERT INTO usuario(nombre, edad) VALUES(?,?)";
		$arrData = array($nombre, $edad);
		$request = $this->insert($sqlQuery,$arrData);
		return $request;
	}
	public function getUsers(){
		$sqlQuery = "SELECT * FROM usuario";
		$request = $this->select_all($sqlQuery);
		return $request;
	}
	public function delUser($id){
		$sqlQuery = "DELETE  FROM usuario WHERE id_usuario = $id";
		$request = $this->delete($sqlQuery);
		return $request;
	}
	public function updateUser(int $id, string $nombre, int $edad){
		$sqlQuery = "UPDATE usuario SET nombre = ? , edad = ? WHERE id_usuario = $id ";
		$arrData = array($nombre, $edad);
		$request = $this->update($sqlQuery,$arrData);
		return $request;
	}
	*/
}