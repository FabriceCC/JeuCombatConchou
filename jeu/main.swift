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
team1.createTeam()
for character in team1.teamMembers {
  print ("Le personnage s'appelle \(character.name)")
print ("le personnae a \(character.lifePersonnage)" )
}



var team2 = Team()
team2.createTeam()
for character in team2.teamMembers {
    print ("Le personnage s'appelle \(character.name)")
    print ("le personnae a \(character.lifePersonnage)" )
    
}
