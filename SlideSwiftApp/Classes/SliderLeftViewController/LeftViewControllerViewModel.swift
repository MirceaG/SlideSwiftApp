//
//  LeftViewControllerViewModel.swift
//  SlideSwiftApp
//
//  Created by Mircea Grecu on 28/06/2016.
//  Copyright © 2016 Mircea Grecu. All rights reserved.
//

import Foundation
import EVReflection

class LeftViewControllerViewModel {
    
    var listItems: [ListItem] = []
    
    init(withJsonFile: String) {
        listItems = self.readJson(withJsonFile)
    }
    
    func readJson(withName: String) -> [ListItem] {
        if let path = NSBundle.mainBundle().pathForResource(withName, ofType: "json") {
            do {
                let data = try NSData(contentsOfFile: path, options: .DataReadingMappedIfSafe) as? NSData
                if data != nil {
                    if let data = data {
                        let jsonString = String(data: data, encoding: NSUTF8StringEncoding)
                        if let jsonString = jsonString {
                            let items = [ListItem](json: jsonString)
                            return items
                        }
                    }
                }
            } catch {
            }
        }
     return []
    }
    
// MARK: - viewModel helper functions
    
    func numberOfItems() -> Int {
        return listItems.count
    }
    
    func listItem(index: Int) -> ListItem {
        return listItems[index]
    }
    
}

class ListItem: EVObject {
    var imageName: String = ""
    var descriptionText: String = ""
    
    
}