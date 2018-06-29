
//  Team.swift
//  jeu
//
//  Created by Besth on 21/04/2018.
//  Copyright © 2018 Fabrice Conchou. All rights reserved.
//
import Foundation
// description of team
class Team {
    var nameTeam : String = ""
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
    
    // Function create team
    func createTeam() {
        print ("Veuillez saisir le nom de votre équipe : ")
        
        if let entryName = readLine() {
            nameTeam = entryName
               }
       
        print ("Veuillez choisir 3 personnages")
        repeat {
            let entry = selectCharacter()
            if let character = entry {
                members.append (character)
            }
        } while members.count < 3
        }
  
    // Function selection Character
    func selectCharacter() -> Character? {
        print ("Choisissez le type de personnage : a - Fighter, b - Wizard, c - Dwarf, d - Giant ")
        var playerEntry : String?
        playerEntry = readLine()
        if let entry = playerEntry {
            if entry=="a" || entry=="b" || entry=="c" || entry=="d" {
                if entry == "a" {
                    let character = Character (type: .fighter)
                    let name = chooseCharacterName()
                    character.name = name
                    return character
                }
                else if entry == "b" {
                    let character = Wizard (type: .wizard)
                    let name = chooseCharacterName()
                    character.name = name
                    return character
                }
                else if entry == "c" {
                    let character = Character (type: .dwarf)
                    let name = chooseCharacterName()
                    character.name = name
                    return character
                }
                else if entry == "d" {
                    let character = Character (type: .giant)
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

    // Funtion choose Name
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
  
    // Function introdiuce
    func introdiuce () {
        print ("Les équipes sont créées le jeu va pouvoir commencer...")
        print ("L'équipe \(nameTeam) est composée ainsi : ")
        var num : Int = 1
        for character in members {
            print ("Personnage \(num) - Nom : \(character.name) - Type : \(character.typeC) - Vie : \(character.life) - Arme : \(character.weapon) - Force : \(character.power) ")
            num = num + 1
        }
        }

    // Function Select Player
    func selectPlayer() -> Character{
        var playerEntry : String?
        var personnage : Character?
        print("Vous pouvez choisir entre : ")
        var numChoice = 1
        for character in members {
            print ("Personnage \(numChoice) - Nom : \(character.name) - Type : \(character.typeC) - Vie : \(character.life) - Arme : \(character.weapon) - Force : \(character.power) ")
            numChoice = numChoice + 1
        }
       repeat {
            repeat {
        playerEntry = readLine()
        if let entry = playerEntry {
            switch entry {
            case "1" :
                personnage = members [0]
                print (" le personnage selectionné s'appelle \(members[0].name) ")
            
            case "2" :
                personnage = members [1]
                print (" le personnage selectionné s'appelle  \(members[1].name) ")
                
            case "3" :
                personnage = members [2]
                print (" le personnage selectionné s'appelle  \(members[2].name) ")
                
            default :
                print ("Choisissez seulement 1, 2 ou 3")
                }
                }
             
            //} while personnage!.life <= 0
            } while personnage == nil
               // test personnage mort
            if personnage!.life <= 0 {
            print ("\(personnage!.name) votre \(personnage!.typeC) est mort, veuillez choisir un autre personnage")
            }
            } while personnage!.life <= 0
            return personnage!
        }
    
}


