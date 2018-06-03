<?php
/**
 * Created by PhpStorm.
 * User: wcs
 * Date: 23/10/17
 * Time: 10:57
 * PHP version 7
 */

namespace Model;

/**
 * Class Score

 *
 */
class Score

{
    private $id;

    private $idQuizz;

    private $score;

    private $idUser;

    private $scoreDate;

    /**
     * @return int
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     *
     * @return Score

     */
    public function setId($id): Score

    {
        $this->id = $id;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getIdQuizz(): string
    {
        return $this->idQuizz;
    }

    /**
     * @param mixed $title
     *
     * @return Score

     */
    public function setIdQuizz($idQuizz):Score

    {
        $this->idQuizz = $idQuizz;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getScore(): string
    {
        return $this->score;
    }

    /**
     * @param mixed $title
     *
     * @return Score

     */
    public function setScore($score):Score

    {
        $this->score = $score;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getIdUser(): string
    {
        return $this->idUser;
    }

    /**
     * @param mixed $title
     *
     * @return Score

     */
    public function setIdUser($idUser):Score

    {
        $this->idUser = $idUser;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getScoreDate(): string
    {
        return $this->scoreDate;
    }

    /**
     * @param mixed $title
     *
     * @return Score

     */
    public function setScoreDate($scoreDate):Score

    {
        $this->scoreDate = $scoreDate;

        return $this;
    }
}
