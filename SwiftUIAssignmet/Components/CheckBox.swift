//
//  CheckBox.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 06/01/2024.
//

import SwiftUI

struct CheckBox: View {
    
    @State var isChecked : Bool = false
    private var title = ""
    
    init(title: String){
        self.title = title
    }
    
    var body: some View {
        HStack(alignment: .top){
            Button(action: {
               self.isChecked.toggle()
            }) {
                Image(systemName: self.isChecked == true ? "checkmark.square.fill" : "square")
            }
            .tint(self.isChecked ? Color.appColorGreen : Color.appColorGrayDark)
            Text(title)
                .font(.system(size: 14))
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

#Preview {
    CheckBox(title: "I would like to receive your newsletter and other promotional information.")
}
