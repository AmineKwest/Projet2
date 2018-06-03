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
 * Class Quizz

 *
 */
class Quizz

{
    private $id;

    private $quizzName;

    private $theme;

    private $idUser;

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
     * @return Quizz

     */
    public function setId($id): Quizz

    {
        $this->id = $id;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getQuizzName(): string
    {
        return $this->quizzName;
    }

    /**
     * @param mixed $title
     *
     * @return Quizz

     */
    public function setQuizzName($quizzName):Quizz

    {
        $this->quizzName = $quizzName;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getTheme(): string
    {
        return $this->theme;
    }

    /**
     * @param mixed $title
     *
     * @return Quizz

     */
    public function setTheme($theme):Quizz

    {
        $this->theme = $theme;

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
     * @return Quizz

     */
    public function setIdUser($idUser):Quizz

    {
        $this->idUser = $idUser;

        return $this;
    }
}
