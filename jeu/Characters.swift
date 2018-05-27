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
    var arm : String = "Sword"
    var armPower : Int = -10
    init (type : String) {
        typeCharac = type
        initializeCharacter ()
        
        
    }
    convenience init () {
        self.init(type: "Fighter")
        
    }
    func initializeCharacter () {
        switch typeCharac {
        case "Dwarf" :
            lifePersonnage = 50
            arm = "Axe"
            armPower = -20
        case "Wizard" :
            lifePersonnage = 80
            arm = "Care"
            armPower = 20
        case "Giant" :
            lifePersonnage = 150
            arm = "Stick"
            armPower = -2
        default :
            lifePersonnage = 100
            armPower = -10
        }
    }
    
}
