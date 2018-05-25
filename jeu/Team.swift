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
    /**
     * Commentaire MENTOR :
     * A quoi te servent les tableaux typeCharacters et lifeCharacters ?
     */
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
        
        //Commentaire MENTOR : Il y a un autre moyen plus sur pour vérifier le nombre de personnages plutôt que de faire une variable number
                // tant que tableau teammembers n'est pas plein de 3 personnage
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
        // Commentaire MENTOR : A quoi correspond entryName ?
       
        // Commentaire MENTOR : Si tu déclare character ici, ça ne sert à rien que tu le redéclare dans chaque entry
       
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
            //Commentaire MENTOR : ta fonction dans sa déclaration n'est pas sensée renvoyer quoi que ce soit. Je commente le return
            //return returnName!
        
        return nil
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
