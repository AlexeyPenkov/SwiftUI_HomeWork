//
//  CellFrameViewModifier.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import SwiftUI

struct CellFrameViewModifier: ViewModifier {
    func body(content: Content) -> some View {
            content
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke())
                .frame(height: 100, alignment: .leading)
                .cornerRadius(6)
    
    }
}
