//
//  CodableViewController.swift
//  AdvancedCodable
//
//  Created by Felipe Costa on 9/10/19.
//  Copyright © 2019 Felipe Costa. All rights reserved.
//

import UIKit

class CodableViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    let jsonFileName = "groups"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let groups = GroupLoader.load(jsonFileName: jsonFileName) {
            var displayInfo = ""
            for group in groups.group {
                displayInfo += "Group "
                displayInfo += "\(group.groupName)\n"
                for team in group.teams{
                    displayInfo += "\(team)\n"
                }
                displayInfo += "\n\n"
            }
            textView.text = displayInfo
        } else {
            textView.text = "Error."
        }
    }
    
}

