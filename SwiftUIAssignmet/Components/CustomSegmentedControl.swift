//
//  CustomSegmentPicker.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 08/01/2024.
//

import SwiftUI

struct CustomSegmentedControl: View {
    @Binding var selectedIndex: Int
    var options: [String]
    let color = Color.white
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(options.indices, id:\.self) { index in
                let isSelected = selectedIndex == index
                ZStack {
                    Rectangle()
                        .fill(color.opacity(0.2))
                    
                    Rectangle()
                        .fill(color)
                        .cornerRadius(25)
                        .padding(2)
                        .opacity(isSelected ? 1 : 0.01)
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.2,
                                                             dampingFraction: 2,
                                                             blendDuration: 0.5)) {
                                selectedIndex = index
                            }
                        }
                }
                .overlay(
                    Text(options[index])
                        .fontWeight(isSelected ? .bold : .regular)
                        .foregroundColor(isSelected ? .appColorGreen : .appColorGrayDark)
                )
            }
        }
        .frame(height: 50)
        .background(.appColorGrayLight)
        .border(.appColorBorder, width: 1)
        .cornerRadius(25)
    }
}

//#Preview {
//    CustomSegmentedControl(preselectedIndex: , options: <#T##[String]#>)
//}
