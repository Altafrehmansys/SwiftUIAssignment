//
//  StudentDetailView.swift
//  StudentListAssignment
//
//  Created by Altaf Ur Rehman on 11/01/2024.
//

import SwiftUI

struct StudentDetailView: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State var tempStudent: Student?
    @State var student: Student {
        didSet {
            tempStudent = student
        }
    }
    @State var isEdit: Bool = false
    var doneAction: ((Student) -> Void)?
    var body: some View {
        VStack (alignment: .center, spacing: 20) {
            Spacer()
            HStack (spacing: 20) {
                Text("Name:")
                    .frame(width: 80)
                
                if !isEdit {
                    Text(student.name)
                } else {
                    TextField("Name", text: $student.name)
                        .textFieldStyle(.roundedBorder)
                }
            }
            HStack (spacing: 20) {
                Text("Grade:")
                    .frame(width: 80)
                if !isEdit {
                    Text(student.grade)
                } else {
                    TextField("Grade", text: $student.grade)
                        .textFieldStyle(.roundedBorder)
                }
                
            }
            
            HStack (spacing: 20) {
                Text("Program:")
                    .frame(width: 80)
                if !isEdit {
                    Text(student.program)
                } else {
                    TextField("Program", text: $student.program)
                        .textFieldStyle(.roundedBorder)
                }
                
            }
            Spacer()
            VStack (alignment: .center, spacing: 5) {
                if !isEdit {
                    Button("Edit") {
                        isEdit.toggle()
                    }
                    .tint(.white)
                    .font(.system(size: 16, weight: .bold))
                    .frame(minWidth: 60, maxWidth: 180, minHeight: 50)
                    .background(.blue)
                    .cornerRadius(100)
                } else {
                    Button("Done") {
                        doneAction?(student)
                        presentation.wrappedValue.dismiss()
                    }
                    .tint(.white)
                    .font(.system(size: 16, weight: .bold))
                    .frame(minWidth: 60, maxWidth: .infinity, minHeight: 50)
                    .background(.blue)
                    .cornerRadius(100)
                    Button("Discard") {
                        student = tempStudent ?? student
                        isEdit.toggle()
                    }
                    .tint(.red)
                    .font(.system(size: 16, weight: .bold))
                    .frame(minWidth: 60, maxWidth: .infinity, minHeight: 50)
                    .cornerRadius(100)
                }
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    StudentDetailView(student: .init(name: "Aban", program: "BS-CS", grade: "A"))
}
