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
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack (spacing: 32){
                NavigationBar(
                    title: "Sign Up",
                    leftBarButton: NavigationBarButton(buttonTitle: "", buttonImage: "multiply", buttonAction: {
                        
                    }),
                    rightBarButton: NavigationBarButton(buttonTitle: "Login", buttonImage: "", buttonAction: {
                            path.append("go_to_login")
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
            .navigationDestination(for: String.self) { value in
                if value == "go_to_login" {
                    LoginView(path: $path)
                } else if value == "go_to_profile" {
                    ProfileView(path: $path)
                } else if value == "go_to_congratulations" {
                    CongratulationPopUp(path: $path)
                } else if value == "go_to_rating" {
                    RatingView(path: $path)
                }
            }
        }
    }
}

#Preview {
    SignupView()
}
