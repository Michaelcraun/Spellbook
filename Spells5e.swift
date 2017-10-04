//
//  Spells5e.swift
//  Spellbook
//
//  Created by Michael Craun on 10/2/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation

enum School5e: String {
    case abjuration
    case conjuration
    case divination
    case enchantment
    case evocation
    case illusion
    case necromancy
    case transmutation
}

protocol Spell5e {
    var name: String { get set }
    var level: Int { get set }
    var school: School5e { get set }
    var ritual: Bool { get set }
    var castingTime: String { get set }
    var range: Int { get set }
    var components: String { get set }
    var duration: String { get set }
    var details: String { get set }
}


