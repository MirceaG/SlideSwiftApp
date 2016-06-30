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
        listItems = readJson(withJsonFile)
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