//
//  FillingDataArrays.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import Foundation

struct FillingDataArray {
    func fillUsersArray() -> [User] {
       
        let user1 = User(firstName: "Симпсон", secondName: "Гомер", patronymName: "Абрахомович", age: "39", avatarName: "homer")
        let user2 = User(firstName: "Симпсон", secondName: "Мардж", patronymName: "Клэнсовна", age: "39", avatarName: "marge")
        let user3 = User(firstName: "Симпсон", secondName: "Барт", patronymName: "Гомерович", age: "10", avatarName: "bart")
        let user4 = User(firstName: "Симпсон", secondName: "Лиза", patronymName: "Гомеровна", age: "8", avatarName: "lisa")
        let user5 = User(firstName: "Симпсон", secondName: "Мегг", patronymName: "Гомеровна", age: "1", avatarName: "megg")
        
        return [ user1, user2, user3, user4, user5 ]
    }
    
    func fillGroupsArray() -> [Group] {
        let group1 = Group(name: "Simpsons", iconName: "simpsons")
        let group2 = Group(name: "Futurama", iconName: "futurama")
        let group3 = Group(name: "Family guy", iconName: "familyGuy")
        
        return [ group1, group2, group3]
    }
    
    func fillNewsArray() -> [News] {
        let news1 = News(title: "Some news!")
        
        return [ news1 ]
    }
    
    func fillUserArrayWithSections() -> [UserSections] {
        let userArray = fillUsersArray()
        var letter: Character = "a"
        
        var lettersArray: [Character] = []
        
        var userArrayWithSections = [UserSections]()
        
        userArray.forEach { user in
            if letter != user.secondName.first {
                
                lettersArray.append(user.secondName.first!)
            }
         
        }
        
        let unique = Array(Set(lettersArray))
        
        let sortedArray = unique.sorted(by: <)
        sortedArray.forEach { character in
            userArrayWithSections.append(UserSections(letter: character, users: userArray.filter { item in
                item.secondName.first == character
            }))
        }

        return userArrayWithSections
    }
}
