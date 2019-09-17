//
//  main.swift
//  LightBeam
//
//  Created by GypsyShen on 2019-09-16.
//  Copyright © 2019 Originate, Inc. All rights reserved.
//

import Foundation

print("Hello, Beam Renderer!\n")

let lightBeamModel = LightBeamModel()

let renderer = BeamRenderer()

var viz = VizModel()

viz.data = renderer.render(beamModel: lightBeamModel, width: viz.width, height: viz.height)

let visualizer = Visualizer()

visualizer.visualize(data: viz.data)
