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
class QuizzManager extends AbstractManager
{
    const TABLE = 'quizz';


    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function allThemes ()
    {
        
        $query = "SELECT theme FROM $this->table GROUP BY theme ";

        $statement = $this->pdoConnection->prepare($query);
        $statement->setFetchMode(\PDO::FETCH_CLASS, $this->className);

        //$statement->bindParam(':theme', $newChoice, \PDO::PARAM_STR);
		
		 $statement->execute();
         return $statement->fetchAll();

    }

    public function allQuizz ($themeChoice)
    {
        
        $query = "SELECT * FROM $this->table WHERE theme=:theme ";

        $statement = $this->pdoConnection->prepare($query);
        $statement->setFetchMode(\PDO::FETCH_CLASS, $this->className);
        $statement->bindParam(':theme', $themeChoice, \PDO::PARAM_STR);
        
         $statement->execute();
         
         
         return $statement->fetchAll();

    }


    public function insertQuizz ($quizzName, $theme, $idUser)
    {
        $query = "INSERT INTO $this->table (quizzName, theme, idUser) VALUES (:quizzName, :theme, :idUser)";

        $statement = $this->pdoConnection->prepare($query);

        $statement->bindParam(':quizzName', $quizzName, \PDO::PARAM_STR);
        $statement->bindParam(':theme', $theme, \PDO::PARAM_STR);
        $statement->bindParam(':idUser', $idUser, \PDO::PARAM_STR);

        $statement->execute();

        return $this->pdoConnection->lastInsertId();

    }
    
}







