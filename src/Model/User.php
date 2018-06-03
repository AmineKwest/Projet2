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
 * Class User

 *
 */
class User

{
    private $id;

    private $firstName;

    private $lastName;

    private $adress;

    private $mail;

    private $password;

    private $status;

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
     * @return User

     */
    public function setId($id): User

    {
        $this->id = $id;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getFirstName(): string
    {
        return $this->firstName;
    }

    /**
     * @param mixed $title
     *
     * @return User

     */
    public function setFirstName($firstName):User

    {
        $this->firstName = $firstName;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getLastName(): string
    {
        return $this->lastName;
    }

    /**
     * @param mixed $title
     *
     * @return User

     */
    public function setLastName($lastName):User

    {
        $this->lastName = $lastName;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getAdress(): string
    {
        return $this->adress;
    }

    /**
     * @param mixed $title
     *
     * @return User

     */
    public function setAdress($adress):User

    {
        $this->adress = $adress;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getMail(): string
    {
        return $this->mail;
    }

    /**
     * @param mixed $title
     *
     * @return User

     */
    public function setMail($mail):User

    {
        $this->mail = $mail;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getPassword(): string
    {
        return $this->password;
    }

    /**
     * @param mixed $title
     *
     * @return User

     */
    public function setPassword($password):User

    {
        $this->password = $password;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getStatus(): string
    {
        return $this->status;
    }

    /**
     * @param mixed $title
     *
     * @return User

     */
    public function setStatus($status):User

    {
        $this->status = $status;

        return $this;
    }
}
