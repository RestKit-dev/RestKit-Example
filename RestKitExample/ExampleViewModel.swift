//
//  ExampleViewModel.swift
//  RestKitExample
//
//  Created by Valentin Mont School on 06/01/2023.
//

import Foundation
import RestKit

class ExampleViewModel: ObservableObject {

    @Published var text: String = "Nothing"

    func getDataFromAPI() async {
        let service = ExampleGetService()
        await service.proccess()
        if let response = service.response as? Response {
            updateText(text: response.name)
        } else if let error = service.error {
            updateText(text: error.localizedDescription)
        }
    }

    func updateText(text: String) {
        DispatchQueue.main.async {
            self.text = text
        }
    }
}
