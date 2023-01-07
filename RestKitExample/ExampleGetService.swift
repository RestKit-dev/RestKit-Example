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
    func proccess() async -> (Decodable?, Error?)
}

class ExampleGetService: Service {

    var task: HTTPTask = ExampleGetTask()

    func proccess() async -> (Decodable?, Error?) {
        await task.get(url: "http://localhost:8081/get", decodeType: Response.self)
        guard let exampleTask = (task as? ExampleGetTask) else { return (nil, nil) }
        return (exampleTask.response, exampleTask.error)
    }
}

struct Response: Decodable {
    let name: String
}
