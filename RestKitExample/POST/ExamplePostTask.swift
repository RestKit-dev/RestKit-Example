//
//  ExamplePostTask.swift
//  RestKitExample
//
//  Created by Valentin Mont2 on 21/01/2023.
//

import Foundation
import RestKit

class ExamplePostTask: HTTPPostTask {

    override func post<E, D>(url: String, dto: E, decodeType: D.Type, accessToken: String? = nil, headers: [String:String] = ["":""], queryParameters: [String: String] = ["":""]) async where E : Encodable, D : Decodable {
        await super.post(url: url, dto: dto, decodeType: decodeType, accessToken: accessToken, headers: headers, queryParameters: queryParameters)
    }

    override func didSuccess<T>(response: T) where T : Decodable {
        super.didSuccess(response: response)
    }

    override func didFail(error: Error) {
        super.didFail(error: error)
    }
}
