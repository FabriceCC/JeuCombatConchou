//
//  main.swift
//  jeu
//
//  Created by Besth on 20/04/2018.
//  Copyright © 2018 Fabrice Conchou. All rights reserved.
//

import Foundation

print("Hello, World!")

var team1 = Team()
print ("Création de l'équipe 1 ...")
team1.createTeam()




var team2 = Team()
print ("Création de l'équipe 2 ...")
team2.createTeam()

print ("Les équipes sont créées le jeu va pouvoir commencer...")
print ("L'équipe 1 est composée ainsi : ")
for character in team1.teamMembers {
    print ("Un personnage qui s'appelle \(character.name) qui est un \(character.typeCharac) avec \(character.lifePersonnage) de points de vie. Il a \(character.arm) comme arme et son arme inflige \(character.armPower) de points de vie")
    
}


print ("L'équipe 2 est composée ainsi : ")
for character in team2.teamMembers {
    print ("Un personnage qui s'appelle \(character.name) qui est un \(character.typeCharac) avec \(character.lifePersonnage) de points de vie. Il a \(character.arm) comme arme et son arme inflige \(character.armPower) de points de vie")
    
}
