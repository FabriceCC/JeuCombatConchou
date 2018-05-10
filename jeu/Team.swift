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
        var nameT : String?
        var entreeJoueur = readLine()
        // tester readline si a = combattant etc...
        entJouer = entreeJoueur
        if entJouer == "a" {
                print ("vous avez choisi un combattant, veuillez saisir son nom ")
                var nameC = readLine()
                nameT = nameC
                print ("Vous avez choise \(nameT!) comme nom du combattant")
                name.append(nameT!)
            print ("\(name)")
            } else if entJouer == "b" {
                print ("vous avez choisi un mage, veuillez saisir un nom ")
                var nameC = readLine()
                nameT = nameC
                print ("Vous avez choise \(nameT!) comme nom du mage")
                name.append(nameT!)
            print ("\(name)")
            
        } else if entJouer == "c" {
                print ("vous avez choisi un nain, veuillez saisir un nom ")
                var nameC = readLine()
                nameT = nameC
                print ("Vous avez choise \(nameT!) comme nom du nain")
                name.append(nameT!)
            print ("\(name)")
            
        }
                else if entJouer == "d" {
                    print ("vous avez choisi un colosse")
                var nameC = readLine()
                nameT = nameC
                print ("Vous avez choise \(nameT!) comme nom du colosse")
                name.append(nameT!)
            print ("\(name)")
            
                }
        
        
            
         else {
            print ("Entrer seulement a, b c ou d  !")
}
        // chercher propriété commune à tous les instances d'une classe
        
    }

    
}

