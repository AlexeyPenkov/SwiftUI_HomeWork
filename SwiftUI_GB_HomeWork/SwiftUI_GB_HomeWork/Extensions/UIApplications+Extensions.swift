//
//  UIApplications+Extensions.swift
//  GeekbrainsSwiftUI
//
//  Created by Алексей Пеньков on 03.12.2021.
//

import UIKit

extension UIApplication {
    func endEditing() {
        self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
