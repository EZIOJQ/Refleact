//
//  ViewController.swift
//  lalala
//
//  Created by +C on 7/27/19.
//  Copyright © 2019 +C. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var dateWeek: UILabel!
    @IBOutlet weak var days: UILabel!
    @IBOutlet weak var category: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDate()
        
        
        
        
        

    }
    
    func updateDate(){
        let current = Date();
        let dateformatter = DateFormatter()
        dateformatter.locale = Locale(identifier: "en_US")
        dateformatter.setLocalizedDateFormatFromTemplate("MMMMd")
        date.text = dateformatter.string(from: current)
        dateformatter.setLocalizedDateFormatFromTemplate("EEEE")
        dateWeek.text = dateformatter.string(from: current)
    }

    @IBAction func addGoal(_ sender: UIButton) {
        
    }
}

