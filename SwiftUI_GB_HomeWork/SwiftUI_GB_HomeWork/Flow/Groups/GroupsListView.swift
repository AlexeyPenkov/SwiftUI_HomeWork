//
//  GroupsListView.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import SwiftUI

struct GroupsListView: View {
    @State private var groupArray: [Group] = FillingDataArray().fillGroupsArray()
    
    var body: some View {
        List {
            ForEach(groupArray) { item in
                GroupCell(group: item)
//                NavigationLink {
//                    UserCollection(user: item)
//                } label: {
//                    GroupCell(group: item)
//                }
            }
            .navigationTitle(Text("Groups"))
                
            
        }
        
    }
}

struct GroupsListView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsListView()
    }
}
