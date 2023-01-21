//
//  ExampleService.swift
//  RestKitExample
//
//  Created by Valentin Mont School on 06/01/2023.
//

import Foundation
import RestKit

class ExampleGetService: HTTPGetService {

    var task: HTTPGetTask = ExampleGetTask()

    var response: Decodable?

    var error: Error?

    func proccess() async {
        await task.get(url: "http://localhost:8081/get", decodeType: Response.self)
        response = task.response
        error = task.error
    }
}

struct Response: Decodable {
    let name: String
}
