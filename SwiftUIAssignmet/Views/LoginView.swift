//
//  LoginView.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 06/01/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @Binding var path: NavigationPath
    
    var body: some View {
        NavigationView {
            VStack (spacing: 32){
                NavigationBar(title: "Log In")
                
                VStack (spacing: 16) {
                    EmailTextField(title: "Email")
                    PasswordField(password: $password)
                }
                Spacer()
                VStack (spacing:16){
                    PrimaryButton(title: "Log In", buttonAction: {
                        path.append("go_to_profile")
                    })
                    SecondaryButton(title: "Forgot your password?", buttonAction: {
                        
                    })
                }
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    LoginView(path: .constant(.init()))
}

