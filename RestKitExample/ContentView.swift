//
//  ContentView.swift
//  RestKitExample
//
//  Created by Valentin Mont School on 06/01/2023.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var viewModel: ExampleViewModel

    var body: some View {
        Text(viewModel.text)
            .padding()

        Button(action: {
            Task {
                await viewModel.getDataFromAPI()
            }
        }) {
            Text("GET")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ExampleViewModel())
    }
}
