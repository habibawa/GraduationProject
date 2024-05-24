//
//  UIView+Extensions.swift
//  Alkababgee
//
//  Created by Habiba Bawa on 20.05.2024.
//

import UIKit

extension UIView {
    
   @IBInspectable var cornerRadius: CGFloat {
        get{ return cornerRadius}
        
        
        set{ self.layer.cornerRadius = newValue}
    }
}
