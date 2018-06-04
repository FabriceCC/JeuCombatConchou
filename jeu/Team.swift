
//  Team.swift
//  jeu
//
//  Created by Besth on 21/04/2018.
//  Copyright © 2018 Fabrice Conchou. All rights reserved.
//

import Foundation
// description of team
class Team {
    var members = [Character]()
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
                members.append (character)
            }
            
        } while members.count < 3
        
    }
    
    func selectCharacter() -> Character? {
        print ("Choisissez le type de personnage : a - Fighter, b - Wizard, c - Dwarf, d - Giant ")
        var playerEntry : String?
        playerEntry = readLine()
        if let entry = playerEntry {
            
            // changer par un switch et case
            
            if entry=="a" || entry=="b" || entry=="c" || entry=="d" {
                if entry == "a" {
                    let character = Character (type: "Fighter")
                    let name = chooseCharacterName()
                    character.name = name
                    return character
                    
                    
                }
                else if entry == "b" {
                    let character = Wizard (type: "Wizard")
                    let name = chooseCharacterName()
                    character.name = name
                    return character
                    
                }
                else if entry == "c" {
                    let character = Character (type: "Dwarf")
                    let name = chooseCharacterName()
                    character.name = name
                    return character
                    
                }
                else if entry == "d" {
                    let character = Character (type: "Giant")
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
        return finalName!
    }
    
    func introdiuce () {
        print ("Les équipes sont créées le jeu va pouvoir commencer...")
        print ("L'équipe 1 est composée ainsi : ")
        var num : Int = 1
        
        
        for character in members {
            print ("Votre personnage \(num) s'appelle \(character.name) qui est un \(character.typeCharac) avec \(character.lifePersonnage) de points de vie. Il a \(character.weapon) comme arme et son arme inflige \(character.armPower) de points de vie")
            num = num + 1
            
        }
    
    
    
    
}
    
    func selectPlayer() -> String{
        var typeTest : String?
        var playerEntry : String?
        playerEntry = readLine()
        if let entry = playerEntry {
            
            switch entry {
            case "1" :
                let personnage = members [0]
                print (" le personnage selectionné s'appelle \(personnage.name) \(members[0].name) ")
                typeTest = personnage.typeCharac
                
            case "2" :
                let personnage = members [1]
                print (" le personnage selectionné s'appelle \(personnage.name) \(members[1].name) ")
                typeTest = personnage.typeCharac
              
            case "3" :
                let personnage = members [2]
                print (" le personnage selectionné s'appelle \(personnage.name) \(members[2].name) ")
                typeTest = personnage.typeCharac
                
            default :
                print ("Choisissez seulement 1, 2 ou ")
            }
            
         
        }
        
        return typeTest!
        
    }
        
    }
    

