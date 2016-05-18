//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Mason Earl on 5/17/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var planetImage: UIImageView!
    
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()

      if let planet = planet { 
        updateWithPlanet(planet)
    }
}
    
    func updateWithPlanet(planet: Planet) {
        title = planet.name
        planetImage.image = UIImage(named: planet.imageName)
        diameterLabel.text = "\(planet.diameter)"
        distanceLabel.text = "\(planet.millionKMsFromSun) 10^6 km"
        lengthLabel.text = "\(planet.dayLength) hours"
        
    }

     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
