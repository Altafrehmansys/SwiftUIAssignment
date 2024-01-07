//
//  EmailTextField.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 06/01/2024.
//

import SwiftUI

struct EmailTextField: View {
    
    @StateObject var emailValidator = EmailValidator()
    @State private var value = ""
    private var title = ""
    
    init(title: String){
        self.title = title
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            TextField(title, text: $emailValidator.email)
                .padding()
                .frame(height: 50)
                .background(Color.appColorGrayLight)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.appColorBorder, lineWidth: 1)
                )
                .autocorrectionDisabled()
            emailValidator.validationMessage.map { message in
                Text(message)
                    .foregroundStyle(.red)
            }}
        
    }
}

#Preview {
    EmailTextField(title: "emial")
}
