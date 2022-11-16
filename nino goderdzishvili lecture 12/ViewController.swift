//
//  ViewController.swift
//  nino goderdzishvili lecture 12
//
//  Created by Nino Goderdzishvili on 11/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorPickerBtn: UIButton!
    
    var buttonColor: UIColor?
    
    var viewBackgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadDesign()
    }
    
    func loadDesign() {
        if buttonColor != nil {
            colorPickerBtn.backgroundColor = buttonColor
        }
        
        if viewBackgroundColor != nil {
            self.view.backgroundColor  = viewBackgroundColor
        }
    }
    
}

