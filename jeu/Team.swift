//
//  Team.swift
//  jeu
//
//  Created by Besth on 21/04/2018.
//  Copyright © 2018 Fabrice Conchou. All rights reserved.
//

import Foundation
// description of team
class Team {
    var teamMembers = [Characters]()
    var name = [String] ()
    
    func createTeam() {
        print ("Veuillez choisir 3 personnages")
        // tant que tableau teammembers n'est pas plein de 3 personnage
        while teamMembers.count < 3 {
            selectCharacter()
        }
    }
    func selectCharacter() {
        print ("Choisissez le type de personnage : a - Un combattant, b - un mage,  ")
        var entreeJoueur = readLine()
        // tester readline si a = combattant etc...
        // chercher propriété commune à tous les instances d'une classe
        
    }

    
}

