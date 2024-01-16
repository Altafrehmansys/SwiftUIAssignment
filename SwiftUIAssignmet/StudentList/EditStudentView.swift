//
//  EditStudentView.swift
//  StudentListAssignment
//
//  Created by Altaf Ur Rehman on 11/01/2024.
//

import SwiftUI

struct EditStudentView: View {
    @State var student: Student
    
    var body: some View {
        NavigationStack {
            VStack (alignment: .center, spacing: 50) {
                VStack (alignment: .center, spacing: 20) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Name")
                        TextField("Enter student Name", text: $student.name)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Grade")
                        TextField("Enter student Grade", text: $student.grade)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Programe")
                        TextField("Enter student Program", text: $student.program)
                            .textFieldStyle(.roundedBorder)
                    }
                }
                
                VStack (alignment: .center, spacing: 5) {
                    Button("Add") {
                       
                    }
                    .tint(.white)
                    .font(.system(size: 16, weight: .bold))
                    .frame(minWidth: 60, maxWidth: .infinity, minHeight: 50)
                    .background(.blue)
                    .cornerRadius(100)
                    Button("Discard Changes") {
                        
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
        }
        
    }
}

#Preview {
    EditStudentView(student: .init(name: "", program: "", grade: ""))
}
