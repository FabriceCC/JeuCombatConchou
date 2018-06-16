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
    
    //func changedWeapon(changeWeapon : String , changedPower : Int) {
    //func changedWeapon() {
      //  var attackCharacter = changeWeapon
        //var attackPower = changedPower
        //print ("Oh !!! Le coffre magique voici votre nouvelle arme !!! c'est : ")
        //let misteriousWeapon = Int(arc4random_uniform(3)) + 1
        //switch misteriousWeapon {
        //case 1 :
          //  attackCharacter = "Flower"
           // attackPower = 1
    //case 2 :
      //      attackCharacter = "Bazooka"
        //    attackPower = 50
        //default :
         //   attackCharacter = "Tank"
           // attackPower = 80
        //}
        
   // }
        
        func changedWeaponWizard(careCharacter : String , carePower : Int) {
            print ("Oh !!! Le coffre magique voici votre nouveau soin !!! c'est : ")
            var careWizard = careCharacter
            var powerWizard = carePower
            let misteriousCare = Int(arc4random_uniform(2)) + 1
        switch misteriousCare {
        case 1 :
            careWizard = "Potion"
            powerWizard = 50
        default :
            careWizard = "Drug"
            powerWizard = 100
        }
        
    }
    

    func roundGame (attackingTeam : Team , defendingTeam : Team) {
        // demander à l'équipe de choisir personnage
        print ("C'est votre Round. Choisissez votre personnage  : 1 , 2 ou 3 ")
        let attackingCharacter = attackingTeam.selectPlayer()
        let misteriousSafe = Int(arc4random_uniform(5)) + 1
        if  attackingCharacter.typeC == .wizard {
            if let wizard = attackingCharacter as? Wizard {
                if misteriousSafe == 3 {
                    changedWeaponWizard(careCharacter : attackingCharacter.weapon , carePower : attackingCharacter.power)
                    print ("\(attackingCharacter.weapon) avec une force de réparation de \(attackingCharacter.power) points")
                    
                }
                print ("Choisissez le personnage de votre équipe à soigner : 1 , 2 ou 3 ")
                let healedCharacter = attackingTeam.selectPlayer()
                wizard.heal(healedCharacter)
            }
            
        }
        else {
            if misteriousSafe == 3 {
                //changedWeapon(changeWeapon : attackingCharacter.weapon , changedPower : attackingCharacter.power)
                let changeCharac = attackingTeam.changedWeapon()
                print (" \(attackingCharacter.weapon) avec une force destructrice de \(attackingCharacter.power) points")
            }
            print ("Choisissez le personnage de l'équipe adverse à attaquer : 1 , 2 ou 3 ")
            let targetCharacter = defendingTeam.selectPlayer()
            attackingCharacter.attacking(targetCharacter)
            
        }
        
    }
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
            
            life1 = game.testLife(test1 : team1)
            life2 = game.testLife(test1 : team2)
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
        
    func testLife(test1 : Team) -> Int {
        
        var sumLife = 0
        for character in test1.members {
            sumLife = sumLife + character.life
        }
        
        return sumLife
    }
  
}
    
    


