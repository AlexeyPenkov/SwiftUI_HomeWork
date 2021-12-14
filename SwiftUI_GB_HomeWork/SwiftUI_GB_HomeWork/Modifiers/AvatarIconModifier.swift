//
//  AvatarIconModificator.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import SwiftUI

struct AvatarIconViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(35)
            .scaledToFit()
            .shadow(color: .black, radius: 10)
    }
    
    
}
