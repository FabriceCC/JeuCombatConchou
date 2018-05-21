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
    static var characterNames = [String] ()
    static var typeCharacters = [String] ()
    static var lifeCharacters = [Int] ()
    func testName(_ testingName: String) -> Bool {
        for name in Team.characterNames {
            if name.uppercased() == testingName.uppercased() {
                print ("Nom déjà saisi ")
                return false
            }
            }
        return true
            }
    func createTeam() {
        print ("Veuillez choisir 3 personnages")
        var number = 1
        // tant que tableau teammembers n'est pas plein de 3 personnage
        repeat {
            selectCharacter()
            number += 1
        } while number < 4
        
    }
    
    
    
    
    func selectCharacter() {
        print ("Choisissez le type de personnage : a - Un combattant, b - un mage, c - un nain, d - un colosse ")
        var playerEntry : String?
        var entryName : String?
        var character : Characters
        playerEntry = readLine()
        if let entry = playerEntry {
            if entry == "a" {
                character = Characters()
                chooseCharacterName()
                Team.typeCharacters.append("combattant")
                Team.lifeCharacters.append(100)
            
                
            }
            else if entry == "b" {
                character = Characters()
                chooseCharacterName()
                Team.typeCharacters.append("mage")
                Team.lifeCharacters.append(200)
            
                
            }
            else if entry == "c" {
                character = Characters()
                chooseCharacterName()
                Team.typeCharacters.append("nain")
                Team.lifeCharacters.append(50)
                
            }
            else if entry == "d" {
                character = Characters()
                chooseCharacterName()
                Team.typeCharacters.append("colosse")
                Team.lifeCharacters.append(150)
                
            }
            else {
            print ("Entrer seulement a, b c ou d  !")
                }
        
            }
        
                        }

    func chooseCharacterName() -> String{
        var uniqueName : Bool = false
        var entryName : String?
        var finalName : String?
        repeat {
            print ("vous avez choisi un combattant, veuillez saisir son nom ")
            entryName = readLine()
            if let name = entryName {
                print ("Vous avez choise \(name) comme nom du combattant")
                uniqueName = testName (name)
                if uniqueName {
                    Team.characterNames.append(name)
                    
                    finalName = name
                }
            }
        } while !uniqueName  // ! pour dire le contraire
        print ("\(Team.characterNames)")
        return finalName!
    }

   

   

    



}
