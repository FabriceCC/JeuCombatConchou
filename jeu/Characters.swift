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
var typeCharac : String = "combattant"
var lifePersonnage = 100
 
    init (type : String) {
        typeCharac = type
        initializeCharacter ()
            
    
    }
    convenience init () {
        self.init(type: "combattant")
        
    }
    func initializeCharacter () {
        switch typeCharac {
        case "dwarf" :
            lifePersonnage = 90
        case "wizard" :
            lifePersonnage = 150
        case "giant" :
            lifePersonnage = 120
        default :
            lifePersonnage = 100
        }
    }

}
