//
//  DrawerHeader.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 09/01/2024.
//

import SwiftUI

struct DrawerHeader: View {
    var title: String
    var message: String
    var primaryAction: (() -> Void)?
    var secondaryAction: (() -> Void)?
    var body: some View {
        VStack (spacing: 20){
            Text(title)
                .font(.system(size: 30, weight: .bold))
            Text(message)
                .font(.system(size: 16))
                .multilineTextAlignment(.center)
            PrimaryButton.init(title: "Click Me") {
                primaryAction?()
            }
            
            SecondaryButton.init(title: "Secondary Action") {
                secondaryAction?()
            }
        }
        .padding()
    }
}

#Preview {
    DrawerHeader(title: "Drawer Header", message: "Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.")
}
