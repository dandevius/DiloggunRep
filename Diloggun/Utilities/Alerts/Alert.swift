//
//  Alert.swift
//  Diloggun
//
//  Created by Daniel Ramirez on 1/29/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
    
}

struct AlertContext {        
    static let invalidAccountForm = AlertItem(title: Text("Forma incompleta"), message: Text("Llena de manera completa la forma."), dismissButton: .default(Text("Ok")))
    
    static let invalidEmail = AlertItem(title: Text("Check Your email"), message: Text("Algo salio mal con tu correo."), dismissButton: .default(Text("Ok")))
}

