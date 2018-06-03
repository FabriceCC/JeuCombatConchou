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
        
        // à mettre dans le main
        
        testLife ()
        roundGame()
        
    }
    
    // create of game
    func createGame () {
        print ("Création de l'équipe 1 ...")
        team1.createTeam ()
        print ("Création de l'équipe 2 ...")
        team2.createTeam()
        // team1.introdiuce ()
    }
    // Introdiucing Team
    
    // à déplacer dans team puis appeler par team1.introdiuceTeam ()
    
    func introdiuceTeam () {
        print ("Les équipes sont créées le jeu va pouvoir commencer...")
        print ("L'équipe 1 est composée ainsi : ")
        var num : Int = 1
       
            
        for character in team1.members {
            print ("Votre personnage \(num) s'appelle \(character.name) qui est un \(character.typeCharac) avec \(character.lifePersonnage) de points de vie. Il a \(character.weapon) comme arme et son arme inflige \(character.armPower) de points de vie")
            num = num + 1
           
        }
        
        
        print ("L'équipe 2 est composée ainsi : ")
        num = 1
        for character in team2.members {
            print ("Votre personnage \(num) s'appelle \(character.name) qui est un \(character.typeCharac) avec \(character.lifePersonnage) de points de vie. Il a \(character.weapon) comme arme et son arme inflige \(character.armPower) de points de vie")
            num = num + 1        }
    }
    
    func roundGame () {
     // demander équipe 1 de choisir personnage
        let personnage = team1.members [0]
        print (" le personnage selectionné s'appelle \(personnage.name) \(team1.members[0].name) ")
        
}

    func testLife() {
        var sumLife = 0
        for character in team1.members {
            sumLife = sumLife + character.lifePersonnage
            
        }
        print ("Total points vie équipe 1 : \(sumLife)")
        if sumLife == 0 {
            print ("L'équipe 1 a perdu la partie, tous les personnages sont morts")
            }
        sumLife = 0
        for character in team2.members {
            sumLife = sumLife + character.lifePersonnage
            
        }
        print ("Total points vie équipe 2 : \(sumLife)")
        if sumLife == 0 {
            print ("L'équipe 2 a perdu la partie, tous les personnages sont morts")
        }        }
    
}
