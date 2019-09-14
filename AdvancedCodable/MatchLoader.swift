//
//  MatchLoader.swift
//  AdvancedCodable
//
//  Created by Felipe Costa on 9/13/19.
//  Copyright © 2019 Felipe Costa. All rights reserved.
//

import Foundation

class MatchLoader {
    
    class func load(jsonFileName: String) -> ResponseMatch? {
        var response: ResponseMatch?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            print(jsonData)
            response = try? jsonDecoder.decode(ResponseMatch.self, from: jsonData)
        }
        
        return response
    }
}
