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
        team1.introdiuce()
        team2.introdiuce()
        }
    
    // create of game
    func createGame () {
        print ("Création de l'équipe 1 ...")
        team1.createTeam ()
        print ("Création de l'équipe 2 ...")
        team2.createTeam()
        }
    
    // Function Round game team 1
    func roundGame1 () {
        // demander équipe 1 de choisir personnage
        print ("Choisissez le personnage de votre équipe 1 : 1 , 2 ou 3 ")
        let attackingCharacter = team1.selectPlayer()
        
        if  attackingCharacter.typeCharac == .wizard {
            if let wizard = attackingCharacter as? Wizard {
                print ("Choisissez le personnage de votre équipe 1 à soigner : 1 , 2 ou 3 ")
                let healedCharacter = team1.selectPlayer()
                wizard.heal(healedCharacter)
            }
            
        }
        else if attackingCharacter.typeCharac == .fighter {
            if let fighter = attackingCharacter as? Character {
            print ("Choisissez le personnage de l'équipe 2 à attaquer : 1 , 2 ou 3 ")
            let attackCharacter = team2.selectPlayer()
           fighter.attacking(attackCharacter)
        }
        }
        else if attackingCharacter.typeCharac == .dwarf {
            if let dwarf = attackingCharacter as? Character {
                print ("Choisissez le personnage de l'équipe 2 à attaquer : 1 , 2 ou 3 ")
                let attackCharacter = team2.selectPlayer()
                dwarf.attacking(attackCharacter)
            }
        }
        else  if attackingCharacter.typeCharac == .giant {
            if let giant = attackingCharacter as? Character {
                print ("Choisissez le personnage de l'équipe 2 à attaquer : 1 , 2 ou 3 ")
                let attackCharacter = team2.selectPlayer()
                giant.attacking(attackCharacter)
            }
        }
    }
    
    
    // Function Round game Team 2
    func roundGame2 () {
        // demander équipe 1 de choisir personnage
        
    }
    
    // Function test life team
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
        }
    
}

}
    
    
    
    
    

