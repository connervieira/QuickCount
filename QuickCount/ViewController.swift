//
//  ViewController.swift
//  QuickCount
//
//  Created by Conner Vieira on 7/19/19.
//  Copyright © 2019 V0LT. All rights reserved.
//

import Cocoa
import Foundation

class ViewController: NSViewController {

    @IBOutlet weak var MainField: NSTextField!
    @IBOutlet weak var LengthLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let timer = Timer.scheduledTimer(withTimeInterval: 0.25, repeats: true, block: { timer in // Count characters 4 times every second
            self.LengthLabel.stringValue = "Length: " + String(self.MainField.stringValue.count) // Count characters and display to the user
        });

    }
}

