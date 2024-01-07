//
//  SecondaryButton.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 06/01/2024.
//

import SwiftUI

struct SecondaryButton: View {
    private var title = ""
    var buttonAction: () -> Void
    
    init(title: String, buttonAction: @escaping () -> Void){
        self.title = title
        self.buttonAction = buttonAction
    }
    
    var body: some View {
        Button(title, action: {
            print("signup is pressed")
        })
        .tint(Color.appColorGreen)
        .font(.system(size: 16, weight: .bold))
    }
}
#Preview {
    SecondaryButton(title: "Forgot Password?") {
        
    }
}
