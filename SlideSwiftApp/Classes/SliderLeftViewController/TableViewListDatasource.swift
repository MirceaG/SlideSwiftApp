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
        let cell = tableView.dequeueReusableCellWithIdentifier(LeftTableViewCell.cellIdentifier) as! LeftTableViewCell
        let listItem = viewModel.listItem(indexPath.row)
        cell.configureCellWith(listItem.descriptionText, imagePath: listItem.imageName)
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
     return 1
    }
}