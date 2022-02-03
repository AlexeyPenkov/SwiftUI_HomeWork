//
//  ContainerView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 29.10.2021.
//

import SwiftUI

struct ContainerView: View {
    @ObservedObject var session = Session.instance

    var body: some View {
        NavigationView {
            HStack {
                VKLoginWebView()
                NavigationLink(destination: MainTabView(), isActive: $session.isAuthorized) { EmptyView() }
            }
        }
    }
}
