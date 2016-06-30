//
//  Helper.swift
//  SlideSwiftApp
//
//  Created by Mircea Grecu on 30/06/2016.
//  Copyright © 2016 Mircea Grecu. All rights reserved.
//

import Foundation
import EVReflection

func readJson<T:EVObject>(withName: String) -> [T] {
    if let path = NSBundle.mainBundle().pathForResource(withName, ofType: "json") {
        do {
            let data = try NSData(contentsOfFile: path, options: .DataReadingMappedIfSafe) as? NSData
            if data != nil {
                if let data = data {
                    let jsonString = String(data: data, encoding: NSUTF8StringEncoding)
                    if let jsonString = jsonString {
                        let items = [T](json: jsonString)
                        return items
                    }
                }
            }
        } catch {
        }
    }
    return []
}

func mainStoryboard() -> UIStoryboard? {
    guard let storyboardName = NSBundle.mainBundle().infoDictionary!["UIMainStoryboardFile"] as? String else {
        return nil
    }
    return UIStoryboard(name: storyboardName, bundle: NSBundle.mainBundle())
}