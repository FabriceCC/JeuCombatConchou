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
game.testLife()
repeat {
    print ("Choix action de l'équipe 1 : ")
    game.roundGame1()
    print ("Fin du round 1 ...")
    print ("Choix action de l'équipe 2 : ")
    game.roundGame2()
    print ("Fin du round 2...")
    life1 = game.testLife()
    
} while life1 <= 0


