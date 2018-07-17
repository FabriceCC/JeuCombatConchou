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
    
    // Function change weapon for wizart
    func changedWeaponWizard(CharacterToChangeWizard : Character)  {
            print ("Oh !!! Le coffre magique voici votre nouveau soin !!! c'est : ")
            let misteriousCare = Int(arc4random_uniform(2)) + 1
        switch misteriousCare {
        case 1 :
            CharacterToChangeWizard.weapon = "Potion"
            CharacterToChangeWizard.power = 50
        default :
            CharacterToChangeWizard.weapon = "Drug"
            CharacterToChangeWizard.power = 100
        }
        }
   
    // Function change weapon for attacker
    func changedWeapon(CharacterToChangeWeapon : Character)  {
        print ("Oh !!! Le coffre magique voici votre nouvelle arme !!! c'est : ")
        let misteriousWeapon = Int(arc4random_uniform(2)) + 1
        if misteriousWeapon == 1 {
            CharacterToChangeWeapon.weapon = "Flower"
            CharacterToChangeWeapon.power = 1
        }
        else {
            CharacterToChangeWeapon.weapon = "Bazooka"
            CharacterToChangeWeapon.power = 50
        }
        }
    
    // Function round game
    func roundGame (attackingTeam : Team , defendingTeam : Team) {
        // demander à l'équipe de choisir personnage
        print ("C'est votre Round. Choisissez votre personnage  : 1 , 2 ou 3 ")
        let attackingCharacter = attackingTeam.selectPlayer()
        // var attackCharacter : Character
        let misteriousSafe = Int(arc4random_uniform(3)) + 1
        if  attackingCharacter.typeC == .wizard {
            if let wizard = attackingCharacter as? Wizard {
                if misteriousSafe == 2  {
                   changedWeaponWizard(CharacterToChangeWizard : wizard)
                 print ("\(wizard.weapon) avec une force de réparation de \(wizard.power) points")
                }
                print ("Choisissez le personnage de votre équipe à soigner : 1 , 2 ou 3 ")
                let healedCharacter = attackingTeam.selectPlayer()
                wizard.heal(healedCharacter)
            }
            }
        else {
            if misteriousSafe == 1 {
            changedWeapon(CharacterToChangeWeapon : attackingCharacter)
             print ("\(attackingCharacter.weapon) avec une force de destruction de \(attackingCharacter.power) points")
            }
            print ("Choisissez le personnage de l'équipe adverse à attaquer : 1 , 2 ou 3 ")
            let targetCharacter = defendingTeam.selectPlayer()
            attackingCharacter.attacking(targetCharacter)
        }
        }
    
    // Function Fight
    func fight() {
        var attacker = team1
        var defensor = team2
        var life1 = 1
        var life2 = 1
        var numberRound = 1
        repeat {
            print ("")
            print ("Début du round \(numberRound) c'est l'équipe \(attacker.nameTeam) qui a la main")
        roundGame(attackingTeam: attacker, defendingTeam: defensor)
        print ("Fin du round \(numberRound) ...")
            life1 = testLife(test1 : team1)
            life2 = testLife(test1 : team2)
            print ("Total des points équipe \(team1.nameTeam) : \(life1)")
            print ("Total des points équipe \(team2.nameTeam) : \(life2)")
            if life1 <= 0 {
            print ("La partie est finie, l'équipe \(team1.nameTeam) a perdu en \(numberRound) rounds")
            }
            if life2 <= 0 {
            print ("La partie est finie, l'équipe \(team2.nameTeam) a perdu en \(numberRound) rounds")
            }
            swap(&attacker, &defensor)
            numberRound += 1
        } while life1 > 0 && life2 > 0
        }
        
    // Function test life team
    func testLife(test1 : Team) -> Int {
        var sumLife = 0
        for character in test1.members {
            sumLife = sumLife + character.life
        }
        return sumLife
        }
  
}
    
    


