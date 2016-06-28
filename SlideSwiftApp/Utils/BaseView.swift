//
//  BaseView.swift
//  SwiftApp
//
//  Created by Mircea Grecu on 27/06/2016.
//  Copyright © 2016 Mircea Grecu. All rights reserved.
//

import UIKit

class BaseView: UIView {
    
    var view: UIView!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.view = NSBundle.mainBundle().loadNibNamed(self.className(), owner: self, options: nil).first as! UIView
        self.addSubview(self.view)
        self.view.pinToSuperviewEdgesStruct([EdgesExtensionStruct.Left, EdgesExtensionStruct.Right], withInset: 0)
        self.view.pinToSuperviewEdgesStruct([EdgesExtensionStruct.Top, EdgesExtensionStruct.Bottom], withInset: 0)
    }
    
    func className() -> String {
        return String(self.dynamicType).componentsSeparatedByString(".").last!
    }
}
