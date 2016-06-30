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
        self.registerCell()
        tableViewDatasource = TableViewListDatasource(viewModel: self.viewModel!)
        self.tableViewList.delegate = self
        self.tableViewList.dataSource = tableViewDatasource
    }
    
    func registerCell() {
        let cellNib = UINib(nibName: "LeftTableViewCell", bundle: nil)
        self.tableViewList.registerNib(cellNib, forCellReuseIdentifier: LeftTableViewCell.cellIdentifier)
    }
    
    func createModel() -> LeftViewControllerViewModel {
        return LeftViewControllerViewModel(withJsonFile: "TableViewItems")
    }
}


extension LeftViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let presentedViewController: InfoViewController = (mainStoryboard()?.instantiateViewControllerWithIdentifier("InfoViewController") as? InfoViewController)!
        self.presentViewController(presentedViewController, animated: true, completion: nil)
    }
    
}