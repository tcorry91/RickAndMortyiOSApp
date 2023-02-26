//
//  RMCharacters.swift
//  RickAndMorty
//
//  Created by Corry Timothy on 23/2/2023.
//

import Foundation
//// option, drag, then change.
struct RMCharacher: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

