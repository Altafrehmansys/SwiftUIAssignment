//
//  ProfileView.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 08/01/2024.
//

import SwiftUI

struct ProfileView: View {
    @Binding var path: NavigationPath
    @State private var selectedIndex = 0
    @State private var showingDrawer = false
    var contents: [Content]? = Content.contentList
    var body: some View {
        NavigationView {
            ZStack {
                GeometryReader.init(content: { geometry in
                    VStack {
                        Color.appColorGreen
                            .ignoresSafeArea()
                            .frame(height: geometry.size.height/3.5)
                        Color.white
                            .ignoresSafeArea()
                    }
                    VStack (spacing: 20){
                        NavigationBar(
                            title: "Profile",
                            leftBarButton: NavigationBarButton(buttonTitle: "Settings", buttonImage: "", handlerColor: .white, buttonAction: {
                                
                            }),
                            rightBarButton: NavigationBarButton(buttonTitle: "Logout", buttonImage: "", handlerColor: .white, buttonAction: {
                            }),
                            titleColor: .white
                        )
                        
                        VStack (spacing:0){
                            Image("Ellipse")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .scaledToFill()
                                .onTapGesture {
                                    showingDrawer.toggle()
                                }
                            Text("Victoria Robertson")
                                .font(.system(size: 30, weight: .bold))
                            Text("A mantra goes here")
                                .font(.system(size: 16, weight: .semibold))
                        }
                        VStack {
                            CustomSegmentedControl(selectedIndex: $selectedIndex, options: ["Posts", "Photos"])
                            
                            List(contents ?? []) { content in
                                TableViewRow(content: content)
                            }.listStyle(.plain)
                                .padding(10)
                        }
                        Spacer()
                    }
                    .padding()
                })
                
                
            }
        }
        .navigationBarHidden(true)
        .sheet(isPresented: $showingDrawer, content: {
            DrawerHeader(title: "Drawer Header", message: "Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.", primaryAction: {
                //Navigate to congratulations
                path.append("go_to_congratulations")
                showingDrawer = false
            }, secondaryAction: {
                
            })
            .presentationDetents([.height(300)])
            .presentationDragIndicator(.visible)
        })
    }
}

#Preview {
    ProfileView(path: .constant(.init()))
}

