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
class AnswerManager extends AbstractManager
{
    const TABLE = 'answer';


    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function selectAnswers ($id)
    {
        $query = "SELECT * FROM $this->table WHERE idQuestion = :id ";

        $statement = $this->pdoConnection->prepare($query);
        $statement->setFetchMode(\PDO::FETCH_CLASS, $this->className);
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetchAll();
    }

    public function insertAnswer ($name, $isTrue, $idQuestion)
    {
        $query = "INSERT INTO $this->table (name, isTrue, idQuestion) VALUES (:name, :isTrue, :idQuestion)";

        $statement = $this->pdoConnection->prepare($query);

        $statement->bindParam(':name', $name, \PDO::PARAM_STR);
        $statement->bindParam(':isTrue', $isTrue, \PDO::PARAM_INT);
        $statement->bindParam(':idQuestion', $idQuestion, \PDO::PARAM_INT);

        $statement->execute();

    }
}
