<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 * PHP version 7
 */

namespace Controller;



/**
 * Class HomeController
 *
 */
class HomeController extends AbstractController
{

    /**
     * Display inscription listing
     *
     * @return string
     */
    public function home()
    {

        return $this->twig->render('Home/home.html.twig', ['connected' => $_SESSION['connected']]);
    }

    public function disconnect()
    {
    	if (isset($_POST['disconnect']))
    	{
    		session_unset();
    		header('Location: /');
    	}
    }
}
