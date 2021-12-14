//
//  Builders.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 23.10.2021.
//

import SwiftUI
import Kingfisher

struct AvatarImage: View {
    var content: KFImage
 
    init(@ViewBuilder content: () -> KFImage) {
        self.content = content()
    }
 
    var body: some View {
        content
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}
