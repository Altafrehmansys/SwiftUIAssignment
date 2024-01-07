//
//  EmailValidator.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 06/01/2024.
//

import Foundation


class EmailValidator: ObservableObject {
    @Published var email: String = ""
    @Published private(set) var validationMessage: String?
    
    var inputValid: Bool {
        validationMessage == nil
    }
    
    init() {
        $email
            .debounce(for: 0.5, scheduler: RunLoop.main)
            .removeDuplicates()
            .map { input in
                guard !input.isEmpty else {
                    return nil
                }
                
                guard input.isValidEmail() else {
                    return "Email is not valid"
                }
                
                return nil
            }
            .assign(to: &$validationMessage)
    }
    
}
