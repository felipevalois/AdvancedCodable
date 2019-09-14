//
//  Photo.swift
//  AdvancedCodable
//
//  Created by Felipe Costa on 9/10/19.
//  Copyright © 2019 Felipe Costa. All rights reserved.
//

import Foundation

struct Response: Codable {
    let group: [Group]
    
    enum CodingKeys: String, CodingKey {
        case group
    }
}

struct Group: Codable{
    let groupName: String
    let teams: [String]
    
    enum CodingKeys: String, CodingKey {
        case groupName = "name"
        case teams
    }
}
