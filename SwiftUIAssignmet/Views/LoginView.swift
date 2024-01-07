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
                        
                    })
                    SecondaryButton(title: "Forgot your password?", buttonAction: {
                        
                    })
                }
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        }
    }
}

#Preview {
    LoginView()
}
