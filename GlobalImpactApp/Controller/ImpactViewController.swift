//
//  ViewController.swift
//  GlobalImpactApp
//
//  Created by Christiansen, Aaron on 1/10/19.
//  Copyright © 2019 Ctec. All rights reserved.
//

import UIKit
import MapKit

public class ImpactViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var MapButton: UIButton!
    @IBAction func MapButton(_ sender: Any) {
        let impactLocation = CLLocationCoordinate2D(latitude:17.607788, longitude:8.081666)
        let mapSpan = MKCoordinateSpan(latitudeDelta:10.05, longitudeDelta: 10.50)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        mapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
    @IBOutlet weak var MapImageView: UIImageView!
    

    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension MKMapView
{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options: UIView.AnimationOptions.curveEaseIn, animations:
            { self.setRegion(zoomRegion, animated: true) }, completion: nil)
    }
}

