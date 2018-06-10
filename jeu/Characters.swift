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
    var typeC : CharacterType = .fighter
    var life = 100
    var weapon : String = "Sword"
    var power : Int = 10
    init (type : CharacterType) {
        typeC = type
        initializeCharacter ()
        }
    
    // Init
    convenience init () {
        self.init(type: .fighter)
        }
    
    // Initialize character 
    func initializeCharacter () {
        switch typeC {
        case .dwarf :
            life = 20
            weapon = "Axe"
            power = 20
        case .wizard :
            life = 80
            weapon = "Care"
            power = 20
        case .giant :
            life = 150
            weapon = "Stick"
            power = 2
        default :
            life = 100
            power = 10
        }
    }
  
    // Funtion attacking
    func attacking(_ target : Character)
    {
        target.life = target.life - power
        print ("reste vie : \(target.life)")
    }
    
}
