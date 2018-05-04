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
        print ("Choisissez le type de personnage : a - Un combattant, b - un mage, c - un nain, d - un colosse ")
        var entJouer : String?
        var entreeJoueur = readLine()
        // tester readline si a = combattant etc...
        _ = entreeJoueur
        if entJouer == "a" {
                print ("vous avez choisi un combattant")
                
            } else if entJouer == "b" {
                print ("vous avez choisi un mage")
            } else if entJouer == "c" {
                print ("vous avez choisi un nain")
        }
                else if entJouer == "d" {
                    print ("vous avez choisi un colosse")
                }
        
        
            
         else {
            print ("Entrer seulement a, b c ou d  !")
}
        // chercher propriété commune à tous les instances d'une classe
        
    }

    
}

