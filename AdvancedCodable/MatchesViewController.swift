//
//  MatchesViewController.swift
//  AdvancedCodable
//
//  Created by Felipe Costa on 9/13/19.
//  Copyright © 2019 Felipe Costa. All rights reserved.
//

import UIKit

class MatchesViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    let jsonFileName = "matches"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let matches = MatchLoader.load(jsonFileName: jsonFileName) {
            var displayInfo = ""
            for match in matches.matches {
                displayInfo += "\(match.home) vs \(match.away)\n"
                displayInfo += "\(match.location)\n"
                displayInfo += "\(match.date)\n\n"
            }
            textView.text = displayInfo
        } else {
            textView.text = "Error."
        }
    }
    

}
