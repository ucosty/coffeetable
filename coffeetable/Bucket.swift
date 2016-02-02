//
//  Bucket.swift
//  coffeetable
//
//  Created by Matthew Costa on 1/02/2016.
//  Copyright © 2016 Matthew Costa. All rights reserved.
//

import Foundation

class Bucket : NSObject {
    var name : String
    var document_count : integer_t
    
    init(name: String, document_count: integer_t) {
        self.name = name
        self.document_count = document_count
    }
}
