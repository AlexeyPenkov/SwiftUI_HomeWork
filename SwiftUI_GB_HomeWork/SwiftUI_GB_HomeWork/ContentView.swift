//
//  ContentView.swift
//  SwiftUI_GB_HomeWork
//
//  Created by Алексей Пеньков on 26.11.2021.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State private var login: String = ""
    @State private var password: String = ""
    @State private var shouldShowLogo: Bool = true
    
    private let keyboardIsShowPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { _ in false },
        NotificationCenter.default.publisher(for: UIResponder.keyboardDidChangeFrameNotification)
            .map { _ in true }
    ).removeDuplicates()
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image("vk")
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geometry.size.width, height: geometry.size.height)
            }.background(.gray)
        
        
            ScrollView {
                VStack {
                    if shouldShowLogo {
                        Text("Пожалуйста авторизуйтесь")
                            .padding(.top)
                            .font(.title)
                    }
                
                    VStack{
                        HStack {
                            Text("Login")
                            Spacer()
                            TextField("Enter login", text: $login)
                                .frame(maxWidth: 150)
                        }
                        
                        HStack {
                            Text("Password")
                            Spacer()
                            SecureField("Enter password", text: $password)
                                .frame(maxWidth: 150)
                        }
                    }
                    .frame(maxWidth: 250)
                
                    Button(action: self.onLoginPressed) {
                        HStack {
                            Text("Авторизоваться")
                            if login.isEmpty || password.isEmpty {
                                Image(systemName: "arrow.right.circle")
                            } else {
                                Image(systemName: "arrow.right.circle.fill")
                            }
                            
                        }
                        
                    }
                        .padding(EdgeInsets(top: 5, leading: 0, bottom: 10, trailing: 0))
                        .font(.title)
                        
                        .disabled(login.isEmpty || password.isEmpty)
                
                }
                    .textFieldStyle(.roundedBorder)
                
                
            }
    
            
        }
        .onTapGesture {
            self.endEditing()
        }
        
    }
    
    private func onLoginPressed() {
        
    }
    
    private func endEditing() {
        UIApplication.shared.endEditing()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIApplication {
    func endEditing() {
        self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
