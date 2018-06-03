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
class QuestionManager extends AbstractManager
{
    const TABLE = 'question';


    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function selectQuestions ($id)
    {
        $query = "SELECT * FROM $this->table WHERE idQuizz = :id ";

        $statement = $this->pdoConnection->prepare($query);
        $statement->setFetchMode(\PDO::FETCH_CLASS, $this->className);
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetchAll();
    }

    public function insertQuestion ($questionName, $idQuizz)
    {
        $query = "INSERT INTO $this->table (questionName, idQuizz) VALUES (:questionName, :idQuizz)";

        $statement = $this->pdoConnection->prepare($query);

        $statement->bindParam(':questionName', $questionName, \PDO::PARAM_STR);
        $statement->bindParam(':idQuizz', $idQuizz, \PDO::PARAM_INT);

        $statement->execute();

        return $this->pdoConnection->lastInsertId();

    }




}
