//
//  ExampleTask.swift
//  RestKitExample
//
//  Created by Valentin Mont School on 06/01/2023.
//

import Foundation
import RestKit

class ExampleGetTask: HTTPTask {

    var response: Decodable?
    var error: Error?

    override func get<T>(url: String, decodeType: T.Type, accessToken: String? = nil) async where T : Decodable {
        await super.get(url: url, decodeType: decodeType, accessToken: accessToken)
    }

    override func didSuccess<T>(response: T) where T : Decodable {
        super.didSuccess(response: response)
        self.response = response
    }

    override func didFail(error: Error) {
        super.didFail(error: error)
        self.error = error
    }
}
