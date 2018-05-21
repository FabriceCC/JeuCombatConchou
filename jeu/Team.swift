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
    func createTeam1() {
        print ("Veuillez choisir 3 personnages")
        // tant que tableau teammembers n'est pas plein de 3 personnage
        repeat {
            selectCharacter()
        } while Team.characterNames.count < 3
        
    }
    
    func createTeam2() {
        print ("Veuillez choisir 3 personnages")
        // tant que tableau teammembers n'est pas plein de 3 personnage
        repeat {
            selectCharacter()
        } while Team.characterNames.count < 6
        
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
                chooseCharacterNamea()
                            }
            else if entry == "b" {
                character = Characters()
                chooseCharacterNameb()                                }
            else if entry == "c" {
                character = Characters()
                chooseCharacterNamec()                                   }
            else if entry == "d" {
                character = Characters()
                chooseCharacterNamed()                                 }
            else {
            print ("Entrer seulement a, b c ou d  !")
                }
        
            }
                        }

    func chooseCharacterNamea() -> String{
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
                    Team.typeCharacters.append("combattant")
                    Team.lifeCharacters.append(100)
                    finalName = name
                }
            }
        } while !uniqueName  // ! pour dire le contraire
        print ("\(Team.characterNames)")
        return finalName!
    }

    func chooseCharacterNameb() -> String{
        var uniqueName : Bool = false
        var entryName : String?
        var finalName : String?
       
        repeat {
            print ("vous avez choisi un mage, veuillez saisir son nom ")
            entryName = readLine()
            if let name = entryName {
                print ("Vous avez choise \(name) comme nom du mage")
                uniqueName = testName (name)
                if uniqueName {
                    Team.characterNames.append(name)
                    Team.typeCharacters.append("mage")
                    Team.lifeCharacters.append(200)
                    finalName = name
                
                }
            }
        } while !uniqueName  // ! pour dire le contraire
        print ("\(Team.characterNames)")
        return finalName!
    }

    func chooseCharacterNamec() -> String{
        var uniqueName : Bool = false
        var entryName : String?
        var finalName : String?
      
        repeat {
            print ("vous avez choisi un nain, veuillez saisir son nom ")
            entryName = readLine()
            if let name = entryName {
                print ("Vous avez choise \(name) comme nom du nain")
                uniqueName = testName (name)
                if uniqueName {
                    Team.characterNames.append(name)
                    Team.typeCharacters.append("nain")
                    Team.lifeCharacters.append(50)
                    finalName = name
                }
            }
        } while !uniqueName  // ! pour dire le contraire
        print ("\(Team.characterNames)")
        return finalName!
    }

    func chooseCharacterNamed() -> String{
        var uniqueName : Bool = false
        var entryName : String?
        var finalName : String?
     
        repeat {
            print ("vous avez choisi un colosse, veuillez saisir son nom ")
            entryName = readLine()
            if let name = entryName {
                print ("Vous avez choise \(name) comme nom du colosse")
                uniqueName = testName (name)
                if uniqueName {
                    Team.characterNames.append(name)
                    Team.typeCharacters.append("colosse")
                    Team.lifeCharacters.append(150)
                    finalName = name
                }
            }
        } while !uniqueName  // ! pour dire le contraire
        print ("\(Team.characterNames)")
        return finalName!
    }



}
