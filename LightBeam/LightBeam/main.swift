//
//  main.swift
//  LightBeam
//
//  Created by GypsyShen on 2019-09-16.
//  Copyright © 2019 Originate, Inc. All rights reserved.
//

import Foundation

print("Hello, Beam Renderer!\n")

//let lightBeamModel = LightBeamModel()
//
//let renderer = BeamRenderer()
//
//var viz = VizModel()
//
//viz.data = renderer.render(beamModel: lightBeamModel, width: viz.width, height: viz.height)
//
//let visualizer = Visualizer()
//
//visualizer.visualize(data: viz.data)

let right = Vector3(1, 0, 0)

let dir = Vector3(0, 0, -1)

let up = right ^ dir

let expected = Vector3(0, 1, 0)

print("up: \(up.x), \(up.y), \(up.z)")

print("expected: \(expected.x), \(expected.y), \(expected.z)")

print("up == expected \(up == expected)")
