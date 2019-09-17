//
//  LightBeamModel.swift
//  LightBeam
//
//  Created by GypsyShen on 2019-09-16.
//  Copyright © 2019 Originate, Inc. All rights reserved.
//

import Foundation

struct LightBeamModel {
    var lightSource = LightSource()
    var participatingMedia = ParticipatingMedia()
    var obstacle = Obstacle()
    var viewFrustum = ViewFrustum()
    
    init() {
        print("Initializing light beam model..\n")
    }
}
