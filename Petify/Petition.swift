//
//  Petition.swift
//  Petify
//
//  Created by Andres Marquez on 2021-10-06.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
