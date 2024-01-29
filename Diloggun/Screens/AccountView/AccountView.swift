//
//  AccountView.swift
//  Diloggun
//
//  Created by Daniel Ramirez on 1/27/24.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Informacion Personal")) {
                    TextField("Nombre", text: $viewModel.firstName)
                    TextField("Apellido", text: $viewModel.lastName)
                    TextField("Correo", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Fecha de nacimiento", selection: $viewModel.birthdate, displayedComponents: .date)
                    Button(action: {
                        viewModel.saveChanges()
                    }, label: {
                        Text("Guardar Cambios")
                    })
                }
                
                Section(header: Text("cambia el estilo")) {
                    Toggle("Dark Mode ", isOn: $viewModel.toogleTest)
                        .toggleStyle(.automatic)
                }
            }
            .navigationTitle("Cuenta")
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
