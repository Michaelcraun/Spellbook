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
        case .barbarian: return UIColor(red: 160, green: 0, blue: 0, alpha: 1)
        case .bard: return UIColor(red: 230, green: 130, blue: 0, alpha: 1)
        case .cleric: return UIColor(red: 115, green: 115, blue: 115, alpha: 1)
        case .druid: return UIColor(red: 125, green: 215, blue: 0, alpha: 1)
        case .fighter: return UIColor(red: 230, green: 230, blue: 230, alpha: 1)
        case .monk: return UIColor(red: 235, green: 205, blue: 145, alpha: 1)
        case .paladin: return UIColor(red: 240, green: 255, blue: 255, alpha: 1)
        case .ranger: return UIColor(red: 5, green: 95, blue: 0, alpha: 1)
        case .rogue: return UIColor(red: 55, green: 55, blue: 55, alpha: 1)
        case .sorcerer: return UIColor(red: 90, green: 30, blue: 130, alpha: 1)
        case .warlock: return UIColor(red: 170, green: 5, blue: 70, alpha: 1)
        case .wizard: return UIColor(red: 15, green: 20, blue: 115, alpha: 1)
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
