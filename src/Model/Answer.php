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
 * Class Answer
 *
 */
class Answer
{
    private $id;

    private $name;

    private $isTrue;

    private $idQuestion;

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
     * @return Answer
     */
    public function setId($id): Answer
    {
        $this->id = $id;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @param mixed $title
     *
     * @return Answer
     */
    public function setName($name):Answer
    {
        $this->name = $name;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getIsTrue(): string
    {
        return $this->isTrue;
    }

    /**
     * @param mixed $title
     *
     * @return Answer
     */
    public function setIsTrue($isTrue):Answer
    {
        $this->isTrue = $isTrue;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getIdQuestion(): string
    {
        return $this->idQuestion;
    }

    /**
     * @param mixed $title
     *
     * @return Answer
     */
    public function setIdQuestion($idQuestion):Answer
    {
        $this->idQuestion = $idQuestion;

        return $this;
    }
}
