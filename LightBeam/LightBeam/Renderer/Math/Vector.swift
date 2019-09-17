//
//  Vector.swift
//  LightBeam
//
//  Created by GypsyShen on 2019-09-17.
//  Copyright © 2019 Originate, Inc. All rights reserved.
//

import Foundation

struct Point3 {
    var x : Float = 0.0
    var y : Float = 0.0
    var z : Float = 0.0
}

struct Vector3 {
    var x : Float = 0.0
    var y : Float = 1.0
    var z : Float = 0.0
    
    init(_x: Float, _y: Float, _z: Float) {
        x = _x
        y = _y
        z = _z
    }
}
