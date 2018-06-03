<?php
/**
 * Created by PhpStorm.
 * User: Maxime
 * Date: 18/04/2018
 * Time: 12:00
 * PHP version 7
 */

namespace Model;

/**
 *
 */
class UserManager extends AbstractManager
{
    const TABLE = 'user';



    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }


    public function verificationFirstName ($firstName)
    {
        if (trim($firstName) != '')
        {
            $firstName = trim($firstName);
            return $firstName;
        }
    }

    public function verificationLastName ($lastName)
    {
        if (trim($lastName) != '')
        {
            $lastName = trim($lastName);
            return $lastName;
        }
    }

    public function verificationAdress ($adress)
    {
        if (trim($adress) != '')
        {
            $adress = trim($adress);
            return $adress;
        }
    }

    public function verificationMail ($mail)
    {
        $query = "SELECT * FROM $this->table WHERE mail = :mail";

        $statement = $this->pdoConnection->prepare($query);



        $statement->setFetchMode(\PDO::FETCH_CLASS, $this->className);
        $statement->bindParam(':mail', $mail, \PDO::PARAM_STR);
        $statement->execute();
        $alreadyInTable = $statement->fetchAll();

        $mail = trim($mail);

        $_SESSION['inTable']=$alreadyInTable;

        if (preg_match('/^[a-z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$/', $mail) === 1 && count($alreadyInTable)===0)
        {
            return $mail;
        }
        else
        {
            return TRUE;
        }
    }

    public function newUser($newProfil)
    {
        if (isset($_POST))
        {
            if (count($_POST) === 5)
            {

        $query = "INSERT INTO $this->table (firstName, lastName, adress, mail, password, status) VALUES (:firstName, :lastName, :adress, :mail, :password, 'user')";

        $statement = $this->pdoConnection->prepare($query);

        $statement->bindParam(':firstName', $newProfil['firstName'], \PDO::PARAM_STR);
        $statement->bindParam(':lastName', $newProfil['lastName'], \PDO::PARAM_STR);
        $statement->bindParam(':adress', $newProfil['adress'], \PDO::PARAM_STR);
        $statement->bindParam(':mail', $newProfil['mail'], \PDO::PARAM_STR);
        $statement->bindParam(':password', $newProfil['password'], \PDO::PARAM_STR);

        $statement->execute();
            }
        }
    }

    public function profil($id)
    {
        $query = "SELECT * FROM $this->table WHERE id=:id";

        $statement = $this->pdoConnection->prepare($query);



        $statement->setFetchMode(\PDO::FETCH_CLASS, $this->className);
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();



         return $statement->fetchAll();

    }

    public function profilId($mail)
    {
        $query = "SELECT id FROM $this->table WHERE mail=:mail";

        $statement = $this->pdoConnection->prepare($query);



        $statement->setFetchMode(\PDO::FETCH_CLASS, $this->className);
        $statement->bindParam(':mail', $mail, \PDO::PARAM_STR);
        $statement->execute();



         return $statement->fetch();
    }

    public function emailConnexion($mail)
    {
        $sqlQuery = "SELECT * FROM $this->table WHERE mail=:mail";

        $statement = $this->pdoConnection->prepare($sqlQuery);

        $statement->setFetchMode(\PDO::FETCH_CLASS, $this->className);
        $statement->bindValue(':mail', $mail, \PDO::PARAM_STR);
        $statement->execute();

        $result= $statement->fetch();

        return $result;
    }


}
