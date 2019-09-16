//
//  main.swift
//  LightBeam
//
//  Created by GypsyShen on 2019-09-16.
//  Copyright © 2019 Originate, Inc. All rights reserved.
//

import Foundation

print("Hello, Beam Renderer!")

let lightBeamModel = LightBeamModel()

let renderer = BeamRenderer()

var viz = VizModel()

viz.data = renderer.render(beamModel: lightBeamModel, width: viz.w, height: viz.h)

let visualizer = Visualizer()

visualizer.visualize(data: viz.data)
