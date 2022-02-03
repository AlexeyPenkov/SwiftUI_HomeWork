//
//  Session.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 05.11.2021.
//

import SwiftUI

class Session: ObservableObject {
    
    static let instance = Session()
    
    private init() {}
    
    @Published var isAuthorized: Bool = false
    @Published var userId: String = ""
    @Published var token: String = ""
    
    // My Client ID's
    // 7937012 (main)
    // 7938282 (reserve)
    
    @Published var cliendId = "7938282"
    @Published var version = "5.131"
}
