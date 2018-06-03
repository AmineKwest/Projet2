<?php
/**
 * Created by PhpStorm.
 * Quizz: root
 * Date: 25/04/18
 * Time: 11:11
 * PHP version 7
 */
namespace Controller;
use Model\Question;
use Model\Answer;
use Model\Quizz;
use Model\QuizzManager;
use Model\QuestionManager;
use Model\AnswerManager;
/**
 * Class CorrectionController
 *
 */
class CorrectionController extends AbstractController
{
  /**
   * Display quizz listing
   *
   * @return string
   */
  public function quizz()
  {
      $questionManager = new QuestionManager();
      $answerManager = new AnswerManager();
      if (isset($_POST['correction']))
      {
              $allQuestions = $questionManager->selectQuestions($_SESSION ['chosenQuizz']);
              $question = $allQuestions->getQuestionName();
              $answers = $answerManager->selectAnswers($allQuestions->getId());
              return $this->twig->render('Quizz/quizz.html.twig', ['question' => $question, 'answers' => $answers, 'connected' => $_SESSION['connected']]);
      }
