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
        
        let viewRays = computeViewDirections(viewFrustum: lightBeamModel.viewFrustum,
                                             width: w,
                                             height: h)
        
        var result = [Float]()
        
        for vray in viewRays {
            let light = scatter(ray: vray,
                                lightSource: lightBeamModel.lightSource,
                                media: lightBeamModel.participatingMedia,
                                obstacle: lightBeamModel.obstacle)
            
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
        
        let up : Vector3 = viewFrustum.right ^ viewPoint.dir
        
        // h/2 / d = tan(fov/2)
        let PI : Float = 3.1415926
        let d : Float = height * 0.5 / atan(PI * viewFrustum.fov / 360)
        
        // r / u = width / height
        let u : Float = 1.0
        let r : Float = u * width / height
        
        for w in 0..<width {
            for h in 0..<height {
                let dir : Vector3 = viewPoint.pos + d * viewPoint.dir + u * up + r * viewPoint.right
                
                var vray = Ray()
                vray.pos = viewPoint.pos
                vray.dir = dir
                
                result.append(vpoint)
            }
        }
        
    }
}
