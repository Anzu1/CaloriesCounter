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

    var calories = 100
    var caloriesTotal = 0
    var isSliderHidden = false;
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
        if(calories>=25) {
            calories -= 25
        }
        updateScreen()
    }

    @IBAction func plusButton() {
        calories += 25
        updateScreen()
    }
    
    @IBOutlet weak var caloriesLabel: WKInterfaceLabel!
    
    @IBAction func addButtonTapped() {
        caloriesTotal = caloriesTotal + calories
    }
    
    func updateScreen() {
        caloriesLabel.setText("\(calories)")
    }
    @IBAction func sliderUsed(value: Float) {
        calories = Int(value)
        updateScreen()
    }
    @IBOutlet weak var slider: WKInterfaceSlider!
    @IBOutlet weak var hideSliderButton: WKInterfaceButton!
    @IBAction func hideSlider() {
        if(isSliderHidden==false) {
            slider.setHidden(true);
            hideSliderButton.setTitle("Show Slider")
            isSliderHidden = true
        }
        else {
            slider.setHidden(false)
            hideSliderButton.setTitle("Hide Slider")
            isSliderHidden = false
        }
    
    }
}
