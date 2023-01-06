//
//  ExampleTask.swift
//  RestKitExample
//
//  Created by Valentin Mont School on 06/01/2023.
//

import Foundation
import RestKit

class ExampleGetTask: HTTPTask {

    override func get<T>(url: String, decodeType: T.Type, accessToken: String? = nil) async throws -> T where T : Decodable {
        try await super.get(url: url, decodeType: decodeType, accessToken: accessToken)
    }
}
