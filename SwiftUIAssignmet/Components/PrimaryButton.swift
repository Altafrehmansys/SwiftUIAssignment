//
//  PrimaryButton.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 06/01/2024.
//

import SwiftUI

struct PrimaryButton: View {
    private var title = ""
    var buttonAction: () -> Void
    
    init(title: String, buttonAction: @escaping () -> Void){
        self.title = title
        self.buttonAction = buttonAction
    }
    
    var body: some View {
        HStack {
            Button(title, action: {
                print("signup is pressed")
            })
            .tint(.white)
            .font(.system(size: 16, weight: .bold))
            .frame(minWidth: 60, maxWidth: .infinity, minHeight: 50)
            .background(Color.appColorGreen)
            .cornerRadius(100)
        }
        
    }
}

#Preview {
    PrimaryButton(title: "Sign Up") {
        
    }
}
