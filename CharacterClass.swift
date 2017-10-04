//
//  Classes.swift
//  Spellbook
//
//  Created by Michael Craun on 9/26/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation
import UIKit

enum CharacterClass: String {
    case barbarian = "Barbarian"
    case bard = "Bard"
    case cleric = "Cleric"
    case druid = "Druid"
    case fighter = "Fighter"
    case monk = "Monk"
    case paladin = "Paladin"
    case ranger = "Ranger"
    case rogue = "Rogue"
    case sorcerer = "Sorcerer"
    case warlock = "Warlock"
    case wizard = "Wizard"
    static var count: Int { return CharacterClass.wizard.hashValue + 1 }
    static var allClasses: [CharacterClass] { return [.barbarian,
                                                      .bard,
                                                      .cleric,
                                                      .druid,
                                                      .fighter,
                                                      .monk,
                                                      .paladin,
                                                      .ranger,
                                                      .rogue,
                                                      .sorcerer,
                                                      .warlock,
                                                      .wizard]}
    
    var color: UIColor {
        switch self {
        case .barbarian: return UIColor.red
        case .bard: return UIColor.brown
        case .cleric: return UIColor.blue
        case .druid: return UIColor.green
        case .fighter: return UIColor.orange
        case .monk: return UIColor.brown
        case .paladin: return UIColor.yellow
        case .ranger: return UIColor.darkGray
        case .rogue: return UIColor.black
        case .sorcerer: return UIColor.magenta
        case .warlock: return UIColor.purple
        case .wizard: return UIColor.gray
        }
    }
    
    var editions: [String] {
        switch self {
        case .barbarian: return ["5e"]
        case .bard: return ["5e"]
        case .cleric: return ["5e"]
        case .druid: return ["5e"]
        case .fighter: return ["5e"]
        case .monk: return ["5e"]
        case .paladin: return ["5e"]
        case .ranger: return ["5e"]
        case .rogue: return ["5e"]
        case .sorcerer: return ["5e"]
        case .warlock: return ["5e"]
        case .wizard: return ["5e"]
        }
    }
}
