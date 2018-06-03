<?php
/**
 * This file hold all routes definitions.
 *
 * PHP version 7
 *
 * @author   WCS <contact@wildcodeschool.fr>
 *
 * @link     https://github.com/WildCodeSchool/simple-mvc
 */
$routes = [
    'Inscription' => [ // Controller
        ['formulaire', '/formulaire', ['GET', 'POST']], // action, url, method
    ],
    'Profil' => [ // Controller
        ['profil', '/profil', ['GET', 'POST']], // action, url, method
        ['editProfil', '/editprofil', ['GET', 'POST']],
    ],
    'Connexion' => [ // Controller
        ['connexionForm', '/connexion', ['GET', 'POST']], // action, url, method
    ],
    'Home' => [ // Controller
        ['home', '/', ['GET', 'POST']], // action, url, method
        ['disconnect', '/disconnect', ['GET', 'POST']],
    ],
    'Quizz' => [ // Controller
        ['quizz', '/quizz', ['POST', 'GET']],
        ['editQuizz', '/editQuizz', ['POST', 'GET']],// action, url, method

    ],
    'Resultat' => [ // Controller
        ['resultat', '/resultat', ['GET', 'POST']], // action, url, method
    ],
    'Choice' => [ // Controller
        ['choice', '/choice', ['GET', 'POST']], // action, url, method
    ],
];
