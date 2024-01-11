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
    var handlerColor: Color?
    var buttonAction: (() -> Void)?
    
    var body: some View {
        Button(action: {
            buttonAction?()
        }) {
            HStack {
                Image(systemName: buttonImage ?? "")
                    .tint(handlerColor != nil ? handlerColor:Color.AppColorGrayDark)
                Text(buttonTitle ?? "")
                    .tint(handlerColor != nil ? handlerColor:Color.AppColorGreen)
            }
        }
    }
}

#Preview {
    NavigationBarButton()
}
