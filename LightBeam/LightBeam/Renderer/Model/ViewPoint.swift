//
//  ViewPoint.swift
//  LightBeam
//
//  Created by GypsyShen on 2019-09-16.
//  Copyright © 2019 Originate, Inc. All rights reserved.
//

import Foundation

struct ViewFrustum {
    var pos : Point3 = Point3()
    var dir : Vector3 = Vector3(0, 0, -1)
    var right : Vector3 = Vector3(1, 0, 0)
    var fov : Float = 90
    
    init() {
        print("Initializing ViewPoint..\n")
    }
}

struct Ray {
    var pos : Point3 = Point3()
    var dir : Vector3 = Vector3(0, 0, -1)
    
    init() {
        print("Initializing ViewDirection..\n")
    }
    
    init(position p: Point3, direction v: Vector3) {
        pos = p
        dir = v
    }
}
