//
//  RickMorty.swift
//  RickMorty(2)
//
//  Created by Anton Akhmedzyanov on 17.10.2023.
//

import Foundation

struct RickMorty: Decodable {
    let name: String
    let type: String
    let location: Location
    let image: URL
    let episode: [URL]
    let url: URL
    let created: String
}

struct Location: Decodable {
    let name: String
    let url: URL
}



