//
//  main.swift
//  jeu
//
//  Created by Besth on 20/04/2018.
//  Copyright © 2018 Fabrice Conchou. All rights reserved.
//

import Foundation
var game = Game()
var life1 = 1
var life2 = 1
game.testLife1()
game.testLife2()
repeat {
    print ("Choix action de l'équipe 1 : ")
    game.roundGame1()
    print ("Fin du round 1 ...")
    print ("Choix action de l'équipe 2 : ")
    game.roundGame2()
    print ("Fin du round 2...")
    life1 = game.testLife1()
    life2 = game.testLife2()
    if life1 <= 0 {
        print ("La partie est finie, l'équipe 1 a perdu")
    }
    if life2 <= 0 {
        print ("La partie est finie, l'équipe 2 a perdu")
    }
} while life1 > 0 && life2 > 0


