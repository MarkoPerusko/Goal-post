//
//  GoalsVC.swift
//  Goal post
//
//  Created by Marko Perusko on 3/25/19.
//  Copyright © 2019 Marko Perusko. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.isHidden = false
    }
    
    @IBAction func goalButtonWasPressed(_ sender: Any) {
    }
}



extension GoalsVC: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell", for: indexPath) as? GoalCell else { return UITableViewCell() }
        cell.configureCell(description: "Run 4 times a week.", type: .shortTerm, goalProgressAmount: 4)
        
        return cell
    }
    
    
}

