//
//  CreateGoalVC.swift
//  Goal post
//
//  Created by Marko Perusko on 3/25/19.
//  Copyright © 2019 Marko Perusko. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButtom: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goalTextView.delegate = self

        nextButton.bindToKeyboard()
        shortTermButtom.setSelectedColor()
        longTermButton.setDeselectedColor()
    }
    
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    
    @IBAction func shortTermButtonWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermButtom.setSelectedColor()
        longTermButton.setDeselectedColor()
    }
    
    @IBAction func longTermButtonWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermButton.setSelectedColor()
        shortTermButtom.setDeselectedColor()
    }
    
    @IBAction func nextButtonWasPressed(_ sender: Any) {
        if goalTextView.text != nil, goalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTextView.text, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
    }
    
    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    
}
