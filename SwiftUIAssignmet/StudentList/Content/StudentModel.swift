//
//  StudentModel.swift
//  StudentListAssignment
//
//  Created by Altaf Ur Rehman on 11/01/2024.
//

import Foundation

struct Student: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var program: String
    var grade: String
}
