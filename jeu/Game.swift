//
//  Game.swift
//  jeu
//
//  Created by Besth on 21/04/2018.
//  Copyright © 2018 Fabrice Conchou. All rights reserved.
//

import Foundation

// description of Game

class Game {
    var team1 : Team
    var team2 : Team
    init () {
        team1 = Team ()
        team2 = Team ()
    }
    func createGame () {
        print ("Bienvenue, Vous allez maintenant créer vos équipes")
        team1.createTeam ()
        
    }
}
