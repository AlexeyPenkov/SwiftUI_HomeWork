//
//  FeedView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 29.10.2021.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        Text("Здесь будет лента новостей!").navigationBarTitle("ВК-клиент", displayMode: .inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
