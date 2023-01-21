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
        handleAPICallResponse(service: service, method: "GET")
    }

    func postDataToAPI() async {
        let service = ExamplePostService()
        await service.proccess(dto: PostDto(name: "ditto"))
        handleAPICallResponse(service: service, method: "POST")
    }

    private func handleAPICallResponse(service: ServiceProtocol, method: String) {
        if let response = service.response as? Response {
            updateText(text: "ok \(method): \(response.name)")
        } else if let error = service.error {
            updateText(text: "error \(method): \(error.localizedDescription)")
        } else {
            updateText(text: "error: In the example program")
        }
    }

    private func updateText(text: String) {
        DispatchQueue.main.async {
            self.text = text
        }
    }
}
