//
//  UserSections.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import Foundation

struct UserSections: Identifiable {
    var id: Character {
        return letter
    }
    var letter: Character
    var users: [User]?
    var expanded = true
}
