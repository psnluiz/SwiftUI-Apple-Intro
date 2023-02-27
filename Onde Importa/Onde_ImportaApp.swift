//
//  Onde_ImportaApp.swift
//  Onde Importa
//
//  Created by Luiz Fernando Andrade on 04/02/23.
//

import SwiftUI

@main
struct Onde_ImportaApp: App {
    @StateObject var modelData: ModelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
