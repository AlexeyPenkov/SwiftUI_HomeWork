//
//  FriendPageView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 06.11.2021.
//

import SwiftUI
import Kingfisher

struct FriendPageView: View {
    
    @State var rotation: CGFloat = 0
    @State var scale: CGFloat = 1
    @State var isLiked:Bool = false 
    
    var friend: FriendItem
    var body: some View {
        VStack {
            
            AvatarImage { KFImage(URL(string: friend.photo100!)!) }

            Text("\(friend.firstName) \(friend.lastName)")
                .modifier(TitleText())
            
            HStack {
                Spacer()

                LikeButton()
            }
            
            Spacer()
        }.padding()
    }
}
