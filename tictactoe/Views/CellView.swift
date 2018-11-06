//
//  CellView.swift
//  tictactoe
//
//  Created by Huy Vo on 10/30/18.
//  Copyright © 2018 Huy Vo. All rights reserved.
//

import UIKit
 

class CellView: UIView {
    
    private let tagID = 1
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        didLoad()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        didLoad()
    }
    
    func didLoad(){
        self.backgroundColor = self.superview?.backgroundColor
    }
    
 
    
    override func addSubview(_ view: UIView) {
 
        self.reset()

        view.tag = self.tagID
        super.addSubview(view)
    }
    
    func reset(){ 
   
        if let v = self.viewWithTag(tagID){
            v.removeFromSuperview()
        }
 
    }
    
}
