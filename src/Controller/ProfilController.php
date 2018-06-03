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
 * Class ProfilController
 *
 */
class ProfilController extends AbstractController
{

    /**
     * Display item informations specified by $id
     *
     * @param  int $id
     *
     * @return string
     */
    public function profil()
    {
        if (isset($_SESSION['connected']) && $_SESSION['connected'] !== FALSE)
        {
            $profil = new UserManager();
            $userProfil = $profil->profil($_SESSION['id']);

        return $this->twig->render('Profil/profil.html.twig', ['profil' => $userProfil, 'connected' => $_SESSION['connected']]);
        }
        else
        {
        return $this->twig->render('Home/home.html.twig', ['connected' => $_SESSION['connected']]);
        }
    }

}
