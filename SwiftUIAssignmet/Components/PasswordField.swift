//
//  PasswordField.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 06/01/2024.
//

import SwiftUI

struct PasswordField: View {
    @Binding var password: String
    @State private var isSecureTextEntry = true

    var body: some View {
        HStack {
            if isSecureTextEntry {
                SecureField("Password", text: $password)
            } else {
                TextField("Password", text: $password)
            }

            Button(action: {
                isSecureTextEntry.toggle()
            }) {
                Text(isSecureTextEntry ? "SHOW" : "HIDE")
                    .tint(Color.appColorGreen)
                    .font(.system(size: 12))
            }
        }
        .padding()
        .frame(height: 50)
        .background(Color.appColorGrayLight)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.appColorBorder, lineWidth: 1)
        )
    }
}

