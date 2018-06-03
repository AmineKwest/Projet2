<?php
/**
 * Created by PhpStorm.
 * Quizz: root
 * Date: 25/04/18
 * Time: 11:11
 * PHP version 7
 */
namespace Controller;
use Model\ScoreManager;
use Model\Score;
/**
 * Class ResultatController
 *
 */
class ResultatController extends AbstractController
{
    /**
     * Display quizz listing
     *
     * @return string
     */
    public function resultat()
    {
      $score = $_SESSION['score'];
      if ($_SESSION['connected'] === TRUE && !isset($_SESSION['inserted']) )
        {
          $userScore = new ScoreManager();
          $userScore->insertScore($_SESSION ['chosenQuizz'],$_SESSION['id'],$score);
        }
      return $this->twig->render('Quizz/resultat.html.twig', ['score' => $score]) ;
    }
    // else (isset($_POST['correction']))
    // {
    //   return $this->twig->render('Quizz/correction.html.twig', ['correction' => $correction]) ;
    // }

}
