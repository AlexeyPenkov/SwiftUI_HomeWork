//
//  GroupCell.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 02.12.2021.
//

import SwiftUI

struct GroupCell: View {
    
    @State var groupName: String = "Название группы"
    @State var groupIconName: String = "group_avatar1"
    
    var body: some View {
        HStack(spacing: 5){
            
            Image(groupIconName)
                .resizable()
                .transformAvatarIcon()
                .padding()
                
            
            
            Text(groupName)
                .foregroundColor(.indigo)
                .bold()
                .font(.title3)
                .layoutPriority(1)
                .padding()
                
            
        }
        .transoformCellFrame()
        
    }
    
}

struct GroupCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupCell()
    }
}

struct AvatarIconViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(35)
            .scaledToFit()
            .shadow(color: .black, radius: 10)
    }
    
    
}

struct CellFrameVievModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke())
            .frame(height: 150, alignment: .leading)
            .cornerRadius(10)
            
            
    }
}

extension View {
    func transformAvatarIcon() -> some View {
        self.modifier(AvatarIconViewModifier())
    }
    
    func transoformCellFrame() -> some View {
        self.modifier(CellFrameVievModifier())
    }
}
