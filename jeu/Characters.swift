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
    enum CharacterType {
      case fighter, dwarf, giant, wizard
    }
    var name : String = ""
    var typeCharac : CharacterType = .fighter
    var lifePersonnage = 100
    var weapon : String = "Sword"
    var power : Int = 10
    init (type : CharacterType) {
        typeCharac = type
        initializeCharacter ()
        }
    
    // Init
    convenience init () {
        self.init(type: .fighter)
        }
    
    // Initialize character 
    func initializeCharacter () {
        switch typeCharac {
        case .dwarf :
            lifePersonnage = 50
            weapon = "Axe"
            power = 20
        case .wizard :
            lifePersonnage = 80
            weapon = "Care"
            power = 20
        case .giant :
            lifePersonnage = 150
            weapon = "Stick"
            power = 2
        default :
            lifePersonnage = 100
            power = 10
        }
    }
  
    // Funtion attacking
    func attacking(_ target : Character)
    {
        target.lifePersonnage = target.lifePersonnage - power
        print ("reste vie : \(target.lifePersonnage)")
    }
    
}
