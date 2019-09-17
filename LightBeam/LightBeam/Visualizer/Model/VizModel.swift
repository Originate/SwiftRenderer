//
//  VizModel.swift
//  LightBeam
//
//  Created by GypsyShen on 2019-09-16.
//  Copyright © 2019 Originate, Inc. All rights reserved.
//

import Foundation

struct VizModel {
    
    var width : size_t = 0
    var height : size_t = 0
    
    var data : [Int] = [Int]() {
        didSet {
            let expectedCount = 3 * width * height
            guard data.count == expectedCount else {
                print("ERROR: dimension mismatch of 'data'. should be \(expectedCount), but is \(data.count).\n")
                return
            }
        }
    }
    
    init() {
        print("Initializing VizModel..\n")
    }
    
    init(width w: size_t, height h: size_t) {
        width = w
        height = h
    }
}
