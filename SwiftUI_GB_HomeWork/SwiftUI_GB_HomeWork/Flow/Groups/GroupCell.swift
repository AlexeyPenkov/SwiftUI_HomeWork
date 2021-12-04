//
//  GroupCell.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 02.12.2021.
//

import SwiftUI

struct GroupCell: View {
    
//    @State var groupName: String = "Название группы"
//    @State var groupIconName: String = "group_avatar1"
    
    let group: Group
    
    var body: some View {
        HStack(spacing: 5){
            
            Image(group.iconName)
                .resizable()
                .transformAvatarIcon()
                .padding()
                
            
            
            Text(group.name)
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
        GroupCell(group: Group(name: "Name group", iconName: "group_avatar1"))
    }
}


extension View {
    func transformAvatarIcon() -> some View {
        self.modifier(AvatarIconViewModifier())
    }
    
    func transoformCellFrame() -> some View {
        self.modifier(CellFrameViewModifier())
    }
}
