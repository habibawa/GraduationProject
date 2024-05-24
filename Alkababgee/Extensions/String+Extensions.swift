//
//  String+Extensions.swift
//  Alkababgee
//
//  Created by Habiba Bawa on 23.05.2024.
//

import Foundation

extension String {
    
    
    var asUrl: URL? {
        
        return URL(string: self)
    }
}
