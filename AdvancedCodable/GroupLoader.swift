//
//  GroupLoader.swift
//  AdvancedCodable
//
//  Created by Felipe Costa on 9/13/19.
//  Copyright © 2019 Felipe Costa. All rights reserved.
//

import Foundation

class GroupLoader {
    
    class func load(jsonFileName: String) -> Response? {
        var response: Response?
        let jsonDecoder = JSONDecoder()
//        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            print(jsonData)
            response = try? jsonDecoder.decode(Response.self, from: jsonData)
        }
        
        return response
    }
}
