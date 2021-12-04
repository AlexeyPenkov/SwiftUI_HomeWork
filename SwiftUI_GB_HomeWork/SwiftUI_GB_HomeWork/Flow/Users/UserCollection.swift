//
//  UserCollection.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import SwiftUI

struct UserCollection: View {
    let user: User
    var body: some View {
        Text("The photo gallery of the \(user.secondName) will be located here")
    }
}

struct UserCollection_Previews: PreviewProvider {
    static var previews: some View {
        UserCollection(user: User(firstName: "Иванов", secondName: "Иван", patronymName: "Иванович", age: "23", avatarName: "avatar1"))
    }
}
