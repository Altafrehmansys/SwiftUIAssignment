//
//  NavigationBarButton.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 05/01/2024.
//

import SwiftUI

struct NavigationBarButton: View {
    var buttonTitle: String?
    var buttonImage: String?
    var buttonAction: (() -> Void)?
    
    var body: some View {
        Button(action: {
            buttonAction?()
        }) {
            HStack {
                Image(systemName: buttonImage ?? "")
                    .tint(Color.AppColorGrayDark)
                Text(buttonTitle ?? "")
                    .tint(Color.AppColorGreen)
            }
        }
    }
}

#Preview {
    NavigationBarButton()
}
