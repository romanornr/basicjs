<?php
class Database{
	private static $dbName = 'flickr';
	private static $dbHost = '127.0.0.1';
	private static $dbUsername = 'root';
	private static $dbPassword = '';

	private static $cont = null;
	public function __construct()
	{
		die('Not allowed');
	}

	public function connect()
	{
		if (null == self::$cont)
		{
			try
			{
				self::$cont = new PDO("mysql:host=".self::$dbHost.";"."dbname=".self::$dbName, self::$dbUsername, self::$dbPassword);
			}
			catch(PDOException $e)
			{
				die($e->getMessage());
			}
		}
		return self::$cont;
	}

	public static function disconnect()
	{
		self::$cont = null;
	}
}