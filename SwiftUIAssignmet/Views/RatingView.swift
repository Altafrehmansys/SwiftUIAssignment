//
//  RatingView.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 10/01/2024.
//

import SwiftUI

struct RatingView: View {
    @Binding var path: NavigationPath
    @State private var rating: Int = 5
    var body: some View {
        NavigationView {
            ZStack {
                Color.appColorGreen
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .center, spacing: 30){
                        VStack(spacing: 20) {
                            Ratings(rating: $rating)
                            Text("Rate our app!")
                                .font(.system(size: 30, weight: .bold))
                            Text("Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.")
                                .font(.system(size: 16))
                                .multilineTextAlignment(.center)
                        }
                        VStack (spacing: 20){
                            PrimaryButton.init(title: "I love it") {
                                path.removeLast(2)
                            }
                            
                            SecondaryButton.init(title: "Don’t like the app? Let us know.") {
                                path.removeLast()
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
    RatingView(path: .constant(.init()))
}

struct Ratings: View {
    @Binding var rating: Int
    var body: some View {
        HStack {
            Image("start")
                .foregroundColor(rating > 0 ? .AppColorRating : .appColorGrayDark)
                .onTapGesture {
                    rating = 1
                }
            Image("start")
                .foregroundColor(rating > 1 ? .AppColorRating : .appColorGrayDark)
                .onTapGesture {
                    rating = 2
                }
            Image("start")
                .foregroundColor(rating > 2 ? .AppColorRating : .appColorGrayDark)
                .onTapGesture {
                    rating = 3
                }
            Image("start")
                .foregroundColor(rating > 3 ? .AppColorRating : .appColorGrayDark)
                .onTapGesture {
                    rating = 4
                }
            Image("start")
                .foregroundColor(rating > 4 ? .AppColorRating : .appColorGrayDark)
                .onTapGesture {
                    rating = 5
                }
        }
    }
}
