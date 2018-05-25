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
        // Commentaire MENTOR : A quoi correspond entryName ?
        var entryName : String?
        var returnName : String?
        // Commentaire MENTOR : Si tu déclare character ici, ça ne sert à rien que tu le redéclare dans chaque entry
        var character : Characters
        playerEntry = readLine()
        if let entry = playerEntry {
            if entry == "a" {
                character = Characters()
                // Commentaire MENTOR : ici il faut forcemment que tu utilise la variable que renvoie chooseCharacterName
                // Commentaire MENTOR : Par exemple : var name = chooseCharacterName()
                chooseCharacterName()
                //Commentaire MENTOR : quel est l'intérêt des 3 lignes suivantes ???
                Team.typeCharacters.append("combattant")
                Team.lifeCharacters.append(100)
                returnName = chooseCharacterName()
                
            }
            else if entry == "b" {
                character = Characters()
                chooseCharacterName()
                Team.typeCharacters.append("mage")
                Team.lifeCharacters.append(200)
                returnName = chooseCharacterName()
            }
            else if entry == "c" {
                character = Characters()
                chooseCharacterName()
                Team.typeCharacters.append("nain")
                Team.lifeCharacters.append(50)
                returnName = chooseCharacterName()            }
            else if entry == "d" {
                character = Characters()
                chooseCharacterName()
                Team.typeCharacters.append("colosse")
                Team.lifeCharacters.append(150)
                returnName = chooseCharacterName()            }
            else {
            print ("Entrer seulement a, b c ou d  !")
                }
       
            
        }
            //Commentaire MENTOR : ta fonction dans sa déclaration n'est pas sensée renvoyer quoi que ce soit. Je commente le return
            //return returnName!
        
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
