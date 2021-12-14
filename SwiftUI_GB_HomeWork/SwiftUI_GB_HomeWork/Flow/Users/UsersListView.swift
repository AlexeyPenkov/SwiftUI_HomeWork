//
//  UsersListView.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import SwiftUI

struct UsersListView: View {
    
    @State private var userArray: [User] = FillingDataArray().fillUsersArray()
    
    @State private var userArrayWithSections: [UserSections] = FillingDataArray().fillUserArrayWithSections()
    
    var body: some View {
        
        //тут выводится просто список юзеров
        
//        List {
//            ForEach(userArray) { item in
//                NavigationLink {
//                    UserCollection(user: item)
//                } label: {
//                    UserCell(user: item)
//                }
//            }
//
//
//        }
        
        
        //тут - юзеры разбиты на секции
        
        List {
            ForEach(userArrayWithSections) { section in
                Section(header: UserHeaderSection(section: section), footer: EmptyView()) {
                    if section.expanded {
                        ForEach(section.users!) { item in
                            NavigationLink {
                                UserCollection(user: item)
                            } label: {
                                UserCellWithSections(user: item)
                            }
                            
                        }
                    }
                }.listStyle(GroupedListStyle())
                    .navigationTitle(Text("Friends"))
            }
                
           
        }
        
    }
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView()
    }
}
