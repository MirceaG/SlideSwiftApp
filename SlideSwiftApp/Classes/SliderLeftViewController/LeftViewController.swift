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
    var viewModel: LeftViewControllerViewModel?
    var tableViewDatasource: TableViewListDatasource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = createModel()
        commonInit()
    }
    
    func commonInit() {
        self.createModel()
        tableViewDatasource = TableViewListDatasource(viewModel: self.viewModel!)
        self.tableViewList.delegate = self
        self.tableViewList.dataSource = tableViewDatasource
    }
    
    func createModel() -> LeftViewControllerViewModel {
        return LeftViewControllerViewModel(withJsonFile: "TableViewItems")
    }
}


extension LeftViewController: UITableViewDelegate {
    
}