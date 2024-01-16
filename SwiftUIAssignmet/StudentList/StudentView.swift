//
//  StudentView.swift
//  StudentListAssignment
//
//  Created by Altaf Ur Rehman on 11/01/2024.
//

import SwiftUI

struct StudentView: View {
    @State var students : [Student] = [
        Student(name: "Aban", program: "BS-CS", grade: "A"),
        Student(name: "Hamza", program: "BS-SE", grade: "A")
    ]
    
    @State var isActive: Bool = false
    var body: some View {
        NavigationStack {
            List {
                ForEach(students) { student in
                    NavigationLink(value: student) {
                        StudentViewRow(student: student)
                            .swipeActions(edge: .leading) {
                                Button("Delete") {
                                    if let index = students.firstIndex(where: {$0.id == student.id}) {
                                        students.remove(at: index)
                                    }
                                }
                                .tint(.red)
                            }
                    }
                }
            }
            .listStyle(.plain)
            .padding()
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Student") {
                        isActive = true
                    }
                }
            })
            .navigationDestination(for: Student.self, destination: { student in
                StudentDetailView(student: student) { value in
                    if let index = students.firstIndex(where: {$0.id == value.id}) {
                        students[index] = value
                    }
                }
            })
            .navigationDestination(isPresented: $isActive) {
                AddStudentView.init(students: $students, isActive: $isActive)
            }
        }
    }
}

#Preview {
    StudentView()
}

struct StudentViewRow: View {
    let student: Student
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(student.name)
                Text(student.program)
            }
            Spacer()
            Text(student.grade)
                .foregroundStyle(.gray)
                .padding(.trailing)
        }
    }
}

