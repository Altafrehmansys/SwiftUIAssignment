//
//  SignupView.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 05/01/2024.
//

import SwiftUI

struct SignupView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var isShowLoginView: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 32){
                NavigationBar(
                    title: "Sign Up",
                    leftBarButton: NavigationBarButton(buttonTitle: "", buttonImage: "multiply", buttonAction: {
                        
                    }),
                    rightBarButton: NavigationBarButton(buttonTitle: "Login", buttonImage: "", buttonAction: {
                        isShowLoginView = true
                    })
                )
                
                VStack (spacing:16){
                    ASTextField(title: "Name")
                    EmailTextField(title: "Email")
                    PasswordField(password: $password)
                }
                
                CheckBox(title: "I would like to receive your newsletter and other promotional information.")
                
                VStack (spacing:16){
                    PrimaryButton(title: "Sign Up", buttonAction: {
                        
                    })
                    SecondaryButton(title: "Forgot your password?", buttonAction: {
                        
                    })
                }
                
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            .navigationDestination(isPresented: $isShowLoginView) {
                LoginView()
            }
            
        }
    }
}

#Preview {
    SignupView()
}
