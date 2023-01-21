//
//  ExampleGetTask.swift
//  RestKitExample
//
//  Created by Valentin Mont School on 06/01/2023.
//

import Foundation
import RestKit

class ExampleGetTask: HTTPGetTask {

    override func get<T>(url: String, decodeType: T.Type, accessToken: String? = nil, headers: [String:String] = ["":""], queryParameters: [String: String] = ["":""]) async where T : Decodable {
        await super.get(url: url, decodeType: decodeType, accessToken: accessToken, headers: headers, queryParameters: queryParameters)
    }

    override func didSuccess<T>(response: T) where T : Decodable {
        super.didSuccess(response: response)
    }

    override func didFail(error: Error) {
        super.didFail(error: error)
    }
}
