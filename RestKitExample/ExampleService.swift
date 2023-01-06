//
//  ExampleService.swift
//  RestKitExample
//
//  Created by Valentin Mont School on 06/01/2023.
//

import Foundation
import RestKit

protocol Service {
    var task: HTTPTask { get set }
    func proccess() async -> Decodable
}

class ExampleService: Service {

    var task: HTTPTask = ExampleGetTask()

    func proccess() async -> Decodable {
        return try? await task.get(url: "https://pokeapi.co/api/v2/pokemon/ditto", decodeType: Response.self)
    }
}

struct Response: Decodable {
    let name: String
}
