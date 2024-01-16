//
//  AddStudentView.swift
//  StudentListAssignment
//
//  Created by Altaf Ur Rehman on 11/01/2024.
//

import SwiftUI

struct AddStudentView: View {
    @Binding var students: [Student]
    @State var name: String = ""
    @State var grade: String = ""
    @State var programe: String = ""
    @State var isShowAlert = false
    @Binding var isActive: Bool
    
    var body: some View {
        NavigationStack {
            VStack (alignment: .center, spacing: 50) {
                VStack (alignment: .center, spacing: 20) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Name")
                        TextField("Enter student Name", text: $name)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Grade")
                        TextField("Enter student Grade", text: $grade)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Programe")
                        TextField("Enter student Program", text: $programe)
                            .textFieldStyle(.roundedBorder)
                    }
                }
                
                VStack (alignment: .center, spacing: 5) {
                    Button("Add") {
                        guard !name.isEmpty, !programe.isEmpty, !grade.isEmpty else {
                            isShowAlert = true
                            return
                        }
                        students.append(Student(name: name, program: programe, grade: grade))
                        isActive = false
                    }
                    .tint(.white)
                    .font(.system(size: 16, weight: .bold))
                    .frame(minWidth: 60, maxWidth: .infinity, minHeight: 50)
                    .background(.blue)
                    .cornerRadius(100)
                    Button("Discard Changes") {
                        isActive = false
                    }
                    .tint(.red)
                    .font(.system(size: 16, weight: .bold))
                    .frame(minWidth: 60, maxWidth: .infinity, minHeight: 50)
                    .cornerRadius(100)
                    Spacer()
                }
            }
            .padding()
            .navigationTitle("Add a new student")
            .navigationBarTitleDisplayMode(.inline)
            .alert(isPresented: $isShowAlert, content: {
                Alert(title: Text("All the fields are required"))
            })
        }
    }
}

#Preview {
    AddStudentView(students: .constant(.init()), isActive: .constant(.init()))
}
