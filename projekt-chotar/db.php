<?php
namespace portalove;
class db
{
    private $host;
    private $dbname;
    private $username;
    private $password;

    private $connection;

    public function __construct($host, $dbname, $username, $password)
    {
        $this->host = $host;
        $this->dbname = $dbname;
        $this->username = $username;
        $this->password = $password;

        try {
            $this->connection = new \PDO('mysql:host=' . $this->host . ';dbname=' . $this->dbname, $this->username, $this->password);
        } catch (\PDOException $e) {
            print "Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }

    public function getServicesMenu()
    {
        $menuItems = [];
        $sql = "SELECT  * FROM content WHERE menu_id=2";
        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $menuItems[] = [
                'icon'=>$row['icon'],
                'content' => $row['content'],
                'display_name' => $row['display_name']
            ];
        }

        return $menuItems;
    }
    public function getCoursesMenu()
    {
        $menuItems = [];
        $sql = "SELECT  c.* FROM content c WHERE menu_id=3";
        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $menuItems[] = [
                'icon'=>$row['icon'],
                'content' => $row['content'],
                'display_name' => $row['display_name']
            ];
        }

        return $menuItems;
    }
    public function insertEmail($name, $email, $message) {
        $dateTime = date('Y-m-d H:i:s', time());
        $sql = "INSERT INTO mail(full_name, mail, message, created_at, updated_at) 
                VALUE ('" .$name . "', '" . $email . "', '" . $message . "', '" . $dateTime . "', '" . $dateTime . "')";
        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }
    public function getAllEmails()
    {
        $emails = [];
        $sql = "SELECT * FROM mail";
        try{
        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $emails[] = [
                'id' => $row['id'],
                'name' => $row['full_name'],
                'email' => $row['mail'],
                'message' => $row['message'],
                'created_at' => $row['created_at']
            ];
        }
            return $emails;
        } catch (\PDOException $e) {
        return false;
        }

    }
    public function getSomeEmails()
    {
        $emails = [];
        $sql = "SELECT * FROM mail ORDER BY created_at DESC LIMIT 9";
        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $emails[] = [
                'name' => $row['full_name'],
                'email' => $row['mail'],
                'message' => $row['message'],
                'created_at' => $row['created_at']
            ];

        }
        return $emails;
    }
    public function deleteEmail($id) {
        $sql = "DELETE FROM mail WHERE id = " . $id;

        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }
    public function getEmail($id) {
        $sql = "SELECT id,full_name,mail,message FROM mail WHERE id=".$id;
        $result=[];
        try {
            $query=$this->connection->query($sql);
            $result=$query->fetchAll(\PDO::FETCH_ASSOC);
            return $result;
        } catch (\PDOException $e) {
            return $result;
        }
    }
    public function updateMail($id,$name,$mail,$message) {
        $dateTime = date('Y-m-d H:i:s', time());
        $sql = "UPDATE mail SET full_name='".$name."',mail='".$mail."',message='".$message."',updated_at='".$dateTime."' WHERE id=".$id;
        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {

            return false;
        }
    }
}