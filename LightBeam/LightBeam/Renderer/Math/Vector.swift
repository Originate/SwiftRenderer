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
    
    init() {
        x = 0.0
        y = 1.0
        z = 0.0
    }
    
    init(_ _x: Float, _ _y: Float, _ _z: Float) {
        x = _x
        y = _y
        z = _z
    }
    
    static func ^(a: Vector3, b: Vector3) -> Vector3 {
//        a2b3 - a3b2
//        a3b1 - a1b3
//        a1b2 - a2b1
        
        let x = a.y * b.z - a.z * b.y
        let y = a.z * b.x - a.x * b.z
        let z = a.x * b.y - a.y * b.x
        
        return Vector3(x, y, z)
    }
    
    static func +(a: Vector3, b: Vector3) -> Vector3 {
        return Vector3(a.x + b.x, a.y + b.y, a.z + b.z)
    }
    
    static func *(left: Float, right: Vector3) -> Vector3 {
        let x = left * right.x
        let y = left * right.y
        let z = left * right.z
        
        return Vector3(x, y, z)
    }
    
    static func ==(a: Vector3, b: Vector3) -> Bool {
        return a.x == b.x && a.y == b.y && a.z == b.z
    }
}
