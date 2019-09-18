//
//  BeamRenderer.swift
//  LightBeam
//
//  Created by GypsyShen on 2019-09-16.
//  Copyright © 2019 Originate, Inc. All rights reserved.
//

import Foundation

struct BeamRenderer {
    
    init() {
        print("Initializing BeamRenderer..\n")
    }
    
    func render(beamModel: LightBeamModel, width w: size_t, height h: size_t) -> [Float] {
        
        // From light source to terminating view direction
        // From terminating point to view point
        
        print("Rendering light beam..\n")
        
        let viewRays = computeViewDirections(viewFrustum: beamModel.viewFrustum,
                                             width: w,
                                             height: h)
        
        var result = [Float]()
        
        for vray in viewRays {
            let light = scatter(ray: vray,
                                lightSource: beamModel.lightSource,
                                media: beamModel.participatingMedia,
                                obstacle: beamModel.obstacle)
            
            result.append(light)
        }
        
        return result
    }
    
    func scatter(ray: Ray, lightSource: LightSource, media: ParticipatingMedia, obstacle: Obstacle) -> Float {
        
        // TODO: compute light scattering along the ray
        
        return 0.0
    }
    
    func computeViewDirections(viewFrustum: ViewFrustum, width: size_t, height: size_t) -> [Ray] {
        
        var result = [Ray]()
        
        let up = viewFrustum.right ^ viewFrustum.dir
        
        // h/2 / d = tan(fov/2)
        let PI : Float = 3.1415926
        let d : Float = Float(height) * 0.5 / atan(PI * viewFrustum.fov / 360.0)
        
        // r / u = width / height
        let u : Float = 1.0
        let r : Float = u * Float(width) / Float(height)
        
        for w in 0..<width {
            for h in 0..<height {
                
                // TODO: fix direction calculation
                
//                let dir = (viewFrustum.pos + d * viewFrustum.dir) + u * ((h+0.5)/Float(height)) * up + r * ((w+0.5)/Float(width)) * viewFrustum.right
                
                let dir = Vector3(0, 0, 0)
                
                var vray = Ray()
                vray.pos = viewFrustum.pos
                vray.dir = dir
                
                result.append(vray)
            }
        }
        
        return result
    }
}
