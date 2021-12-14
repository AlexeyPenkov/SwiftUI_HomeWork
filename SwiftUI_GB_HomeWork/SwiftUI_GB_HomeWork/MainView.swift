//
//  MainView.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            UsersListView()
                .tabItem {
                    Label("Friends", systemImage: "person")
                }
            
            GroupsListView()
                .tabItem {
                    Label("Groups", systemImage: "person.3")
                }
            
            NewsListView()
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
