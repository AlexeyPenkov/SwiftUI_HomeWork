//
//  UserCellWithSections.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import SwiftUI

struct UserCellWithSections: View {
    
    let user: User
    
    var body: some View {
        VStack {
            if user.expandet {
            //    Group() {
//                    Divider()
                    UserCell(user: user)
                    .transition(.move(edge: .top).animation(.default))
                   
   //             }
                
            }
            
       }
    }
}

struct UserCellWithSections_Previews: PreviewProvider {
    static var previews: some View {
        UserCellWithSections(user: User(firstName: "Ivanov", secondName: "Ivan", patronymName: "Ivanovich", age: "30", avatarName: "avatar1"))
    }
}
