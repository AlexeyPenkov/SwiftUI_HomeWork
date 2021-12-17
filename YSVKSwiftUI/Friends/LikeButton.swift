//
//  LikeButton.swift
//  YSVKSwiftUI
//
//  Created by Алексей Пеньков on 17.12.2021.
//

import Foundation
import SwiftUI

struct LikeButton: View {
    @State private var isLiked: Bool = false
    @State private var likeCount: Int = Int.random(in: 0...99)
    
    var body: some View {
        HStack {
            Image(systemName: isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
                .foregroundColor(!isLiked ? .blue : .red)
                .rotationEffect(!isLiked ? Angle.degrees(360) : .zero)
                .scaleEffect(!isLiked ? 1 : 1.5)
                .animation(.spring(response: 1.0, dampingFraction: 0.45, blendDuration: 0), value: isLiked)
             
            Text("\(likeCount)")
    
        }
        .font(.system(size: 25))
        .onTapGesture {
            withAnimation {
                self.isLiked.toggle()
                likeCount += isLiked ? 1 : -1
            }
        }
    }
}
