//
//  RestKitExampleApp.swift
//  RestKitExample
//
//  Created by Valentin Mont School on 06/01/2023.
//

import SwiftUI

@main
struct RestKitExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ExampleViewModel())
        }
    }
}
