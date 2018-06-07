//
//  Characters.swift
//  jeu
//
//  Created by Besth on 21/04/2018.
//  Copyright © 2018 Fabrice Conchou. All rights reserved.
//

import Foundation


// description of characters
class Character {
    var name : String = ""
    var typeCharac : String = "Fighter"
    var lifePersonnage = 100
    var weapon : String = "Sword"
    var power : Int = -10
    init (type : String) {
        typeCharac = type
        initializeCharacter ()
        }
    
    // Init
    convenience init () {
        self.init(type: "Fighter")
        }
    
    // Initialize character 
    func initializeCharacter () {
        switch typeCharac {
        case "Dwarf" :
            lifePersonnage = 50
            weapon = "Axe"
            power = 20
        case "Wizard" :
            lifePersonnage = 80
            weapon = "Care"
            power = 20
        case "Giant" :
            lifePersonnage = 150
            weapon = "Stick"
            power = 2
        default :
            lifePersonnage = 100
            power = 10
        }
    }
    
}
