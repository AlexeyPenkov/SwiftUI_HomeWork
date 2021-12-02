//
//  UserCell.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 02.12.2021.
//

import SwiftUI

struct UserCell: View {
    
    @State var userFirstName: String = "Иванов"
    @State var userSecondName: String = "Иван"
    @State var userPatronymName: String = "Иванович"
    
    @State var userAge: String = "30"
    @State var userAvatarName: String = "avatar1"
   
    var body: some View {
        HStack{
            UserIconImage {
                Image(userAvatarName)
            }
           
            VStack {
                Text(buildUserName())
                Text("Возраст: \(userAge)")
            }
            
        }
        .padding()
        .transoformCellFrame()
        
    }
    
    @UserNameBuilder func buildUserName() -> String {
        userFirstName
        userSecondName
        userPatronymName
        
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
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


