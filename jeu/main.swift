//
//  main.swift
//  jeu
//
//  Created by Besth on 20/04/2018.
//  Copyright © 2018 Fabrice Conchou. All rights reserved.
//

import Foundation

print("Hello, World!")

// questions : Chaque équipe doit avoir 3 personnages (peu importe le type) il faut les choisir par défaut ou c'est l'utilisateur qui les choisira ? Dans ce cas je sais pas faire ????
// Les personnages doivent être nommés par les joueurs. Leur nom doit être unique parmi les personnages de la partie ? Ils saisissent le nom par un readline() ? comment je stocke les noms choisis pour les controler ?

var team1 = Team()
team1.createTeam()
print ("L'équipe 1 est composée de \(Team.characterNames) \(Team.typeCharacters) \(Team.lifeCharacters) ")
//Commentaire MENTOR : quel est l'intérêt ?? De plus cette propriété n'existe pas dans team, je commente
//team1.nameCharacters == Team.characterNames

var team2 = Team()
team2.createTeam()
print ("L'équipe 2 est composée de \(Team.characterNames) \(Team.typeCharacters) \(Team.lifeCharacters) ")
