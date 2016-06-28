//
//  LeftViewController.swift
//  SlideSwiftApp
//
//  Created by Mircea Grecu on 28/06/2016.
//  Copyright © 2016 Mircea Grecu. All rights reserved.
//

import Foundation
import UIKit

class LeftViewController: UIViewController {
    
    @IBOutlet var tableViewList: UITableView!
    //var tableViewDatasource: TableViewListDatasource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }
    
    func commonInit() {
        self.createModel()
//        tableViewDatasource = TableViewListDatasource()
//        self.tableViewList.delegate = self
//        self.tableViewList.dataSource = tableViewDatasource
    }
    
    func createModel() {
        var model = LeftViewControllerViewModel(withJsonFile: "TableViewItems")
        
    }
}


extension LeftViewController: UITableViewDelegate {
    
}