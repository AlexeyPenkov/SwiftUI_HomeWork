//
//  UserHeaderSection.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 04.12.2021.
//

import SwiftUI

struct UserHeaderSection: View {
    
    let section: UserSections
    var body: some View {
        HStack {
            Spacer()
            Text(String(section.letter))
                .font(.headline)
            Spacer()
        }
        .background(.mint)
    }
}

struct UserHeaderSection_Previews: PreviewProvider {
    static var previews: some View {
        UserHeaderSection(section: UserSections(letter: "A"))
    }
}
