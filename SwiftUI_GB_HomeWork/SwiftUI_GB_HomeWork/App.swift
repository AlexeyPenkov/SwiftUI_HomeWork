//
//  App.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import SwiftUI

struct AppView: View {
    
    @State private var shouldUsersListView: Bool = false
    var body: some View {
        NavigationView {
            HStack {
                LoginView(showUsersListView: $shouldUsersListView)
                
                NavigationLink.init(isActive: $shouldUsersListView) {
                    MainView()
                } label: {
                    EmptyView()
                }

                
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
