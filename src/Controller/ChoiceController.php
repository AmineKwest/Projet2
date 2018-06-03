<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 * PHP version 7
 */

namespace Controller;

use Model\Quizz;
use Model\QuizzManager;

/**
 * Class ProfilController
 *
 */
class ChoiceController extends AbstractController
{

    /**
     * Display item informations specified by $id
     *
     * @param  int $id
     *
     * @return string
     */
    public function choice()
    {      

            $choice = new QuizzManager();
            $allThemes = $choice->allThemes();

        if (isset($_POST['chosenTheme']))
        {
            
            $userChoice = $choice->allQuizz($_POST['chosenTheme']);
        
        }

        else
        {
            $userChoice = '';
        }

        return $this->twig->render('Choice/choice.html.twig', ['themes' => $allThemes , 'choices' => $userChoice, 'connected' => $_SESSION['connected']]);
        
    }

}
