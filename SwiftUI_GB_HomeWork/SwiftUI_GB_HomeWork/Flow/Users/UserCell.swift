//
//  UserCell.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 02.12.2021.
//

import SwiftUI

struct UserCell: View {
    
//    @State var userFirstName: String = "Иванов"
//    @State var userSecondName: String = "Иван"
//    @State var userPatronymName: String = "Иванович"
//    
//    @State var userAge: String = "30"
//    @State var userAvatarName: String = "avatar1"
   
    let user: User
    
    var body: some View {
        HStack{
            UserIconImage {
                Image(user.avatarName)
            }
           
            VStack {
                Text(buildUserName(user))
                Text("Возраст: \(user.age)")
            }
            
        }
        .padding()
        .transoformCellFrame()
        
    }
    
    @UserNameBuilder func buildUserName(_ user: User) -> String {
        user.firstName
        user.secondName
        user.patronymName
        
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(user: User(firstName: "Ivanov", secondName: "Ivan", patronymName: "Ivanovich", age: "30", avatarName: "avatar1"))
    }
}

struct UserIconImage: View {
    var content: Image
 
    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }
 
    var body: some View {
        content
            .resizable()
            .cornerRadius(35)
            .scaledToFit()
            .shadow(color: .black, radius: 10)
    }
}

@resultBuilder
class UserNameBuilder {
    static func buildEither(first component: String) -> String {
        component
    }
    
    static func buildEither(second component: String) -> String {
        component
    }
    static func buildBlock(_ components: String...) -> String {
    
        components.joined(separator: " ")
    }

}


