//
//  Wizard.swift
//  jeu
//
//  Created by Besth on 21/04/2018.
//  Copyright © 2018 Fabrice Conchou. All rights reserved.
//

import Foundation
// description of Wizard

class Wizard : Character {
    func heal(_ target : Character)
    {
       target.life = target.life + power
        print ("reste vie : \(target.life)")
    }
}

