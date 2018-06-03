<?php
/**
* Created by PhpStorm.
* User: root
* Date: 11/10/17
* Time: 16:07
* PHP version 7
*/

namespace Controller;

use Model\User;
use Model\UserManager;


/**
* Class ConnexionController
*
*/
class ConnexionController extends AbstractController
{

  /**
  * Display inscription listing
  *
  * @return string
  */
  public function connexionForm()
  {

    if(isset($_POST['loginBtn']) && count($_POST) === 3)
    {
      $connexion = new UserManager();
      $isLogged = $connexion->emailConnexion($_POST['email']);
      if ($isLogged !== FALSE && $_POST['password'] === $isLogged->getPassword())
      {
        $_SESSION['id']=$isLogged->getId();
        $_SESSION['firstName']=$isLogged->getFirstName();
        $_SESSION['lastName']=$isLogged->getLastName();
        $_SESSION['connected']=TRUE;
        header('Location: /');
      }
      else
      {
        echo "mdp ou adresse mail incorrect";
      }
    }

    return $this->twig->render('Connexion/connexion.html.twig');

  }

  public function connexionFormAfterInscription($info)
  {
      $connexion = new UserManager();
      $isLogged = $connexion->emailConnexion($info['mail']);
      if ($isLogged !== FALSE && $info['password'] === $isLogged->getPassword())
      {
        $_SESSION['id']=$isLogged->getId();
        $_SESSION['firstName']=$isLogged->getFirstName();
        $_SESSION['lastName']=$isLogged->getLastName();
        $_SESSION['connected']=TRUE;
        header('Location: /');
      }

  }



}
