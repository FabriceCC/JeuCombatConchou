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
    var teamMembers = [Character]()
    static var characterNames = [String] ()
    
    
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
        
        
        repeat {
            let entry = selectCharacter()
            if let character = entry {
                teamMembers.append (character)
                
            }
            
        } while teamMembers.count < 3
        
    }
    
    
    
    
    func selectCharacter() -> Character? {
        print ("Choisissez le type de personnage : a - Un combattant, b - un mage, c - un nain, d - un colosse ")
        var playerEntry : String?
        playerEntry = readLine()
        if let entry = playerEntry {
            if entry=="a" || entry=="b" || entry=="c" || entry=="d" {
                if entry == "a" {
                    let character = Character (type: "combattant")
                    let name = chooseCharacterName()
                    character.name = name
                    return character
                    
                    
                }
                else if entry == "b" {
                    let character = Wizard (type: "wizard")
                    let name = chooseCharacterName()
                    character.name = name
                    return character
                    
                }
                else if entry == "c" {
                    let character = Character (type: "dwarf")
                    let name = chooseCharacterName()
                    character.name = name
                    return character
                    
                }
                else if entry == "d" {
                    let character = Character (type: "giant")
                    let name = chooseCharacterName()
                    character.name = name
                    return character
                    
                }
                
            }
           
            else {
            print ("Entrer seulement a, b c ou d  !")
                }
       
            
        }
        
        
        return nil
    }

    func chooseCharacterName() -> String{
        var uniqueName : Bool = false
        var entryName : String?
        var finalName : String?
        repeat {
            print ("veuillez saisir son nom :")
            entryName = readLine()
            if let name = entryName {
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
