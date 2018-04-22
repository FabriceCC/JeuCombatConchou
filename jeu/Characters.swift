//
//  Characters.swift
//  jeu
//
//  Created by Besth on 21/04/2018.
//  Copyright © 2018 Fabrice Conchou. All rights reserved.
//

import Foundation


// description of characters
class Characters {
var Name : String = ""
var type : TypeCharacters = .combattant
var lifePersonnage = 100

enum TypeCharacters
{
    case mage, combattant, nain, colosse
}
}
