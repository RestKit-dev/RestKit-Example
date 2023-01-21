//
//  ExamplePostService.swift
//  RestKitExample
//
//  Created by Valentin Mont2 on 21/01/2023.
//

import Foundation
import RestKit

class ExamplePostService: HTTPPostService {

    var task: HTTPPostTask = ExamplePostTask()
    var queryParameters: [String : String] = ["":""]
    var headers: [String : String] = ["":""]
    var response: Decodable?
    var error: Error?

    func proccess<E>(dto: E) async where E: Encodable {
        await task.post(url: "http://localhost:8081/post", dto: dto, decodeType: Response.self, headers: headers, queryParameters: queryParameters)
        response = task.response
        error = task.error
    }
}
