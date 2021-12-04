//
//  User.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import Foundation

struct User: Identifiable {
    let id: UUID = UUID()
    let firstName: String
    let secondName: String
    let patronymName: String

    let age: String
    let avatarName: String
    
    var expandet = true
}

