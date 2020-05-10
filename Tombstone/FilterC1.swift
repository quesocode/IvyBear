//
//  FilterC1.swift
//  IvyBear
//
//  Created by Tex and Pearl on 21/7/19.
//  Copyright © 2019 Tex and Pearl. All rights reserved.
//
import GPUImage

public class FilterC1: LookupFilter {
    public override init() {
        super.init()

        ({lookupImage = PictureInput(imageName:"lookup_c1.jpg")})()
        ({intensity = 1.0})()
    }
}
