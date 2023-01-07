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

    var service: Service = ExampleGetService()

    func getDataFromAPI() async {
        if let response = await service.proccess().0 as? Response {
            updateText(text: response.name)
        } else if let error = await service.proccess().1 {
            updateText(text: error.localizedDescription)
        }
    }

    func updateText(text: String) {
        DispatchQueue.main.async {
            self.text = text
        }
    }
}
