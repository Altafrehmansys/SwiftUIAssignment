//
//  CongratulationPopUp.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 09/01/2024.
//

import SwiftUI

struct CongratulationPopUp: View {
    @Binding var path : NavigationPath
    var body: some View {
        NavigationView {
            ZStack {
                Color.appColorGreen
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .center, spacing: 30){
                        VStack(spacing: 20) {
                            Text("Congratulation!")
                                .font(.system(size: 30, weight: .bold))
                            Text("Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.")
                                .font(.system(size: 16))
                                .multilineTextAlignment(.center)
                        }
                        VStack (spacing: 20){
                            PrimaryButton.init(title: "Click Me") {
                                path.append("go_to_rating")
                            }
                            
                            SecondaryButton.init(title: "Secondary Action") {
                                
                            }
                        }
                        
                    }
                    .padding(16)
                    .background(.white)
                    .cornerRadius(10)
                    .padding(16)
                    
                    Spacer()
                }
                .padding(0)
                .background(.clear)
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    CongratulationPopUp(path: .constant(.init()))
}
