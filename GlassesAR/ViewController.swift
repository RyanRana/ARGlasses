//
//  ViewController.swift
//  GlassesAR
//
//  Created by Arjun Singh on 2/20/22.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    @IBOutlet var chosenOne: UIImageView!
    @IBOutlet var chosenTwo: UIImageView!
    @IBOutlet var chosenThree: UIImageView!
    @IBOutlet var chosenFour: UIImageView!
    @IBOutlet var chosenFive: UIImageView!
    @IBOutlet var chosenSix: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        // Setting up AR Face Tracking session
        let config = ARFaceTrackingConfiguration()
        arView.session.run(config)
    
        let one = try! GlassesAR.loadChosen1()
        arView.scene.anchors.append(one)
        
        //Setting up changing glasses
        //Dexter.isUserInteractionEnabled = true
        //let dexterRecognizer = UITapGestureRecognizer(target: self, action: #selector(dexterTapped))
        //Dexter.addGestureRecognizer(dexterRecognizer)
        
        chosenOne.isUserInteractionEnabled = true
        let chosenOneRecognizer = UITapGestureRecognizer(target: self, action: #selector(oneTapped))
        chosenOne.addGestureRecognizer(chosenOneRecognizer)
        
        chosenTwo.isUserInteractionEnabled = true
        let chosenTwoRecognizer = UITapGestureRecognizer(target: self, action: #selector(twoTapped))
        chosenTwo.addGestureRecognizer(chosenTwoRecognizer)
        
        chosenThree.isUserInteractionEnabled = true
        let chosenThreeRecognizer = UITapGestureRecognizer(target: self, action: #selector(threeTapped))
        chosenThree.addGestureRecognizer(chosenThreeRecognizer)
        
        chosenFour.isUserInteractionEnabled = true
        let chosenFourRecognizer = UITapGestureRecognizer(target: self, action: #selector(fourTapped))
        chosenFour.addGestureRecognizer(chosenFourRecognizer)
        
        chosenFive.isUserInteractionEnabled = true
        let chosenFiveRecognizer = UITapGestureRecognizer(target: self, action: #selector(fiveTapped))
        chosenFive.addGestureRecognizer(chosenFiveRecognizer)
        
        chosenSix.isUserInteractionEnabled = true
        let chosenSixRecognizer = UITapGestureRecognizer(target: self, action: #selector(sixTapped))
        chosenSix.addGestureRecognizer(chosenSixRecognizer)
        
    }
    
    @objc func oneTapped() {
        let one = try! GlassesAR.loadChosen1()
        arView.scene.anchors.removeAll()
        arView.scene.anchors.append(one)
    }
    
    @objc func twoTapped() {
        let two = try! GlassesAR.loadChosen2()
        arView.scene.anchors.removeAll()
        arView.scene.anchors.append(two)
    }
    
    @objc func threeTapped() {
        let three = try! GlassesAR.loadChosen3()
        arView.scene.anchors.removeAll()
        arView.scene.anchors.append(three)
    }
    
    @objc func fourTapped() {
        let four = try! GlassesAR.loadChosen4()
        arView.scene.anchors.removeAll()
        arView.scene.anchors.append(four)
    }
    
    @objc func fiveTapped() {
        let five = try! GlassesAR.loadChosen5()
        arView.scene.anchors.removeAll()
        arView.scene.anchors.append(five)
    }
    
    @objc func sixTapped() {
        let six = try! GlassesAR.loadChosen6()
        arView.scene.anchors.removeAll()
        arView.scene.anchors.append(six)
    }
}
