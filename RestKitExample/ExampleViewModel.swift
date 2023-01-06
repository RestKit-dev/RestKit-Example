//
//  ExampleViewModel.swift
//  RestKitExample
//
//  Created by Valentin Mont School on 06/01/2023.
//

import Foundation
import RestKit

protocol ViewModel {
    var service: Service { get set }
}

class ExampleViewModel: ObservableObject {

    @Published var text: String = "Nothing"

    var service: Service = ExampleService()

    func getDataFromAPI() async {
        guard let result = await service.proccess() as? Response else { return }
        text = result.name
    }
}
