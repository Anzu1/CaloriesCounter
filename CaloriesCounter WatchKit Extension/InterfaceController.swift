//
//  InterfaceController.swift
//  CaloriesCounter WatchKit Extension
//
//  Created by appcamp on 7/25/15.
//  Copyright (c) 2015 appcamp. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func minusButton() {
    }

    @IBAction func plusButton() {
    }
    @IBOutlet weak var caloriesLabel: WKInterfaceLabel!
    @IBAction func addButtonTapped() {
    }
}
