//
//  CreateGoalVC.swift
//  Goal post
//
//  Created by Marko Perusko on 3/25/19.
//  Copyright © 2019 Marko Perusko. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButtom: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func shortTermButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func longTermButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func nextButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
