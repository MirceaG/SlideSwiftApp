//
//  LeftViewControllerViewModel.swift
//  SlideSwiftApp
//
//  Created by Mircea Grecu on 28/06/2016.
//  Copyright © 2016 Mircea Grecu. All rights reserved.
//

import Foundation

class LeftViewControllerViewModel {
    
    typealias imagesArray = [String: String]
    
    init(withJsonFile: String) {
        self.readJson(withJsonFile)
    }
    
    func readJson(withName: String) {
        //var json = NSJSONSerialization.dataWithJSONObject(JSONData, options: <#T##NSJSONWritingOptions#>)
//        NSArray *json = NSJSONSerialization() [NSJSONSerialization JSONObjectWithData:JSONData options:kNilOptions error:nil];
//        
        if let path = NSBundle.mainBundle().pathForResource(withName, ofType: "json") {
            do {
                let data = try NSData(contentsOfFile: path, options: .DataReadingMappedIfSafe) as? NSData
                if data != nil {
                    var json: NSDictionary = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
                    if let images: NSArray = json["images"] as? [imagesArray] {
//                        for image in imagesArray {
//                            var x = image["imageName"]
//                        }
                    }
                    
                    if let descriptions: NSArray = json["description"] as? [imagesArray] {
                        var x = 1
                    }
                }
            } catch {
                
            }
            
                
        }
        
    }
}