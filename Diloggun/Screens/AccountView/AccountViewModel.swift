//
//  AccountViewModel.swift
//  Diloggun
//
//  Created by Daniel Ramirez on 1/29/24.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var toogleTest = false
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            self.alertItem = AlertContext.invalidAccountForm
            return false
        }
        
        guard email.isValidEmail else {
            return false
        }
        
        return true
    }
    
    
    func saveChanges() {
        guard isValidForm else { return }
        
        print("Changes have been saved succesfully")
    }
    
}
