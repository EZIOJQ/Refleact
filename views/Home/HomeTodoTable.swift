//
//  HomeTodoTable.swift
//  lalala
//
//  Created by jaychen on 7/28/19.
//  Copyright © 2019 +C. All rights reserved.
//

import Foundation
import CardParts
import RxCocoa
import RxSwift

class HomeTodosTable: CardPartsViewController {

    let cardPartTableView = CardPartTableView()
    let viewModel = CardPartTableViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.listData.asObservable().bind(to: cardPartTableView.tableView.rx.items) { tableView, index, data in
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: IndexPath(item: index, section: 0)) as? CardPartTableViewCell else { return UITableViewCell() }
            
            cell.leftTitleLabel.text = data
            cell.accessoryType = UITableViewCell.AccessoryType.checkmark
            
            return cell
            }.disposed(by: bag)
        
        setupCardParts([cardPartTableView])
    }
}

class CardPartTableViewModel {
    
    let listData: BehaviorRelay<[String]> = BehaviorRelay(value: [])
    
    init() {
        
        var tempData: [String] = []
        
        for i in 0...5 {
            
            tempData.append("This is cell #\(i)")
        }
        
        listData.accept(tempData)
    }
}

