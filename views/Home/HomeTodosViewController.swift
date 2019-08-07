//
//  HomeTodosViewController.swift
//  lalala
//
//  Created by jaychen on 7/28/19.
//  Copyright © 2019 +C. All rights reserved.
//

import UIKit
import CardParts

class HomeTodosViewController: CardsViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cards: [CardPartsViewController] = [
            HomeTodosTable()
        ]
        loadCards(cards: cards)
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
