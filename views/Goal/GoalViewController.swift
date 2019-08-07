//
//  GoalViewController.swift
//  lalala
//
//  Created by jaychen on 7/27/19.
//  Copyright © 2019 +C. All rights reserved.
//

import UIKit

class GoalViewController: UIViewController {
    
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var addGoal: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDate()

        // Do any additional setup after loading the view.
        
    }
    
    func updateDate(){
        let current = Date();
        let dateformatter = DateFormatter()
        dateformatter.locale = Locale(identifier: "en_US")
        dateformatter.setLocalizedDateFormatFromTemplate("MMMMd")
        date.text = dateformatter.string(from: current)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
