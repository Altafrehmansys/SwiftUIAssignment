//
//  ASTextField.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 06/01/2024.
//

import SwiftUI

struct ASTextField: View {
    
    @State private var value = ""
    private var title = ""
    
    init(title: String){
        self.title = title
    }
    
    var body: some View {
        TextField(title, text: $value)
            .padding()
            .frame(height: 50)
            .background(Color.appColorGrayLight)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.appColorBorder, lineWidth: 1)
            )
            .autocorrectionDisabled()
    }
}

#Preview {
    ASTextField(title: "")
}
