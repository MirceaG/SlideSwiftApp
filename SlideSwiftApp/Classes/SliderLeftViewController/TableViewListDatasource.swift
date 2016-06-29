//
//  TableViewListDatasource.swift
//  SlideSwiftApp
//
//  Created by Mircea Grecu on 28/06/2016.
//  Copyright © 2016 Mircea Grecu. All rights reserved.
//

import Foundation

class TableViewListDatasource: NSObject, UITableViewDataSource {
    
    var viewModel: LeftViewControllerViewModel
    
    init(viewModel: LeftViewControllerViewModel) {
        self.viewModel = viewModel
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
    }
}