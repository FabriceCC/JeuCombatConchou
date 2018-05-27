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
        createGame()
        introdiuceTeam()
        
    }
    
    // create of game
    func createGame () {
        print ("Création de l'équipe 1 ...")
        team1.createTeam ()
        print ("Création de l'équipe 2 ...")
        team2.createTeam()
        
    }
    // Introdiucing Team
    func introdiuceTeam () {
        print ("Les équipes sont créées le jeu va pouvoir commencer...")
        print ("L'équipe 1 est composée ainsi : ")
        var num : Int = 1
        for character in team1.teamMembers {
            print ("Votre personnage \(num) s'appelle \(character.name) qui est un \(character.typeCharac) avec \(character.lifePersonnage) de points de vie. Il a \(character.arm) comme arme et son arme inflige \(character.armPower) de points de vie")
            num = num + 1
        }
        
        
        print ("L'équipe 2 est composée ainsi : ")
        num = 1
        for character in team2.teamMembers {
            print ("Votre personnage \(num) s'appelle \(character.name) qui est un \(character.typeCharac) avec \(character.lifePersonnage) de points de vie. Il a \(character.arm) comme arme et son arme inflige \(character.armPower) de points de vie")
            num = num + 1        }
    }
}

