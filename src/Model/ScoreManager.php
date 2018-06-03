<?php
/**
 * Created by PhpStorm.
 * Quizz: root
 * Date: 25/04/18
 * Time: 11:20
 * PHP version 7
 */

namespace Model;

/**
 *
 */
class ScoreManager extends AbstractManager
{
    const TABLE = 'score';


    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    
    

    public function insertScore ($idQuizz, $idUser, $score)
    {
        $date = date("Y-m-d");


        $query = "INSERT INTO $this->table (idQuizz,idUser,score,scoreDate) VALUES (:idQuizz,:idUser,:score,:scoreDate)";

        $statement = $this->pdoConnection->prepare($query);

        $statement->bindParam(':idQuizz', $idQuizz, \PDO::PARAM_INT);
        $statement->bindParam(':idUser', $idUser, \PDO::PARAM_INT);
        $statement->bindParam(':score', $score, \PDO::PARAM_INT);
        $statement->bindParam(':scoreDate', $date, \PDO::PARAM_STR);


        $statement->execute();

    }
}
