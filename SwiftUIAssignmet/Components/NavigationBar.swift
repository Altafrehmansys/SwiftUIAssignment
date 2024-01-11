//
//  NavigationBar.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 05/01/2024.
//

import SwiftUI

struct NavigationBar: View {
    @State var title: String? = "Sign Up"
    var leftBarButton: NavigationBarButton?
    var rightBarButton: NavigationBarButton?
    var titleColor: Color?
    
    var body: some View {
        HStack {
            if let leftBarButton = leftBarButton {
                leftBarButton
            }
            Spacer()
            if let title = title {
                Text(title)
                    .foregroundStyle(titleColor != nil ? titleColor!: .black)
                    .font(.system(size: 30, weight: .medium))
            }
            Spacer()
            if let rightBarButton = rightBarButton {
                rightBarButton
            }
        }
    }
}

#Preview {
    NavigationBar()
}
