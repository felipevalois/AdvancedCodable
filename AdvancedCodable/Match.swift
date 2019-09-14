//
//  Match.swift
//  AdvancedCodable
//
//  Created by Felipe Costa on 9/13/19.
//  Copyright © 2019 Felipe Costa. All rights reserved.
//

import Foundation

struct ResponseMatch: Codable {
    let matches: [Match]
    
    enum CodingKeys: String, CodingKey {
        case matches
    }
}

struct Match: Codable{
    let groupName: String
    let location: String
    let home: String
    let away: String
    let date: String
    
    enum CodingKeys: String, CodingKey {
        case groupName = "group"
        case location
        case home = "HomeTeam"
        case away = "AwayTeam"
        case date
    }
}

