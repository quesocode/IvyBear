//
//  ViewController.swift
//  Tombstone
//
//  Created by Tex and Pearl on 21/7/19.
//  Copyright © 2019 Tex and Pearl. All rights reserved.
//

import UIKit
import GPUImage


class ViewController: UIViewController {

    @IBOutlet weak var renderView: RenderView!
    
    var picture:PictureInput!
    var filter:FilterC1!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        do {
//            let camera = try Camera(sessionPreset:.vga640x480)
//            let filter = SaturationAdjustment()
//
//            camera.startCapture()
//        } catch {
//            fatalError("Could not initialize rendering pipeline: \(error)")
//        }
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // Filtering image for saving
//        let testImage = UIImage(named:"annika")!
//        let toonFilter = ToonFilter()
        //let filteredImage = testImage.filterWithOperation(toonFilter)
        
        
        // Filtering image for display
        picture = PictureInput(image:UIImage(named:"annika.jpg")!)
        filter = FilterC1()
        picture --> filter --> renderView
        picture.processImage()
    }


}

