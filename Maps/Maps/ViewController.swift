//
//  ViewController.swift
//  Maps
//
//  Created by User on 2/2/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//



import UIKit
import MapKit
import CoreLocation

var onceToken: dispatch_once_t = 0


class ViewController: UIViewController, CLLocationManagerDelegate,MKMapViewDelegate {
    
    var mapView = MKMapView()
    
    var lManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        mapView.delegate = self
        mapView.frame = view.frame
        view.addSubview(mapView)
        
        lManager.requestWhenInUseAuthorization()
        
        lManager.delegate = self
        lManager.distanceFilter = kCLLocationAccuracyBest
        lManager.desiredAccuracy = kCLLocationAccuracyBest
        lManager.startUpdatingLocation()
        self.mapView.showsUserLocation = true

        
        
    }
    
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        
        
        
        dispatch_once(&onceToken) { () -> Void in
            println(locations.last)
            
            if let location = locations.last as? CLLocation {
                
                //self.mapView.centerCoordinate = location.coordinate
                
                let span = MKCoordinateSpanMake(0.1, 0.1)
                let region = MKCoordinateRegion(center: location.coordinate, span: span)
                
                self.mapView.setRegion(region, animated: true)
                
                
                let venues = FourSquareRequest.requestVenuesWithLocation(location)
                
                println(venues)
                
                self.createAnnotationsWithVenues(venues)
                
                var AnnotationArray = self.mapView.annotations
                self.mapView.showAnnotations(AnnotationArray, animated: true)
            
                
                
            }
            
        }
        
        lManager.stopUpdatingLocation()
    }
    
    
    func createAnnotationsWithVenues(venues: [AnyObject]) {
        
        for venue in venues as [[String:AnyObject]]{
            
            let locationInfo = venue["location"] as [String:AnyObject]
            let locationName = venue["name"] as String
            let lat = locationInfo["lat"] as CLLocationDegrees
            let lng = locationInfo["lng"] as CLLocationDegrees
            
            let coordinate = CLLocationCoordinate2DMake(lat,lng)
            let annotation = MKPointAnnotation()
            annotation.setCoordinate(coordinate)
            annotation.title = locationName
            mapView.addAnnotation(annotation)
        
        
    
            
        }
            
        }
        func mapView(_mapView: MKMapView!,
            viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
                
                if annotation is MKUserLocation {
                    //return nil so map view draws "blue dot" for standard user location
                    return nil
                }
                
                let reuseId = "pin"
                
                var pinView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseId) as? MKPinAnnotationView
                if pinView == nil {
                    pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
                    pinView!.canShowCallout = true
                    pinView!.animatesDrop = true
                    pinView!.pinColor = MKPinAnnotationColor.Purple

                

                }
                else {
                    pinView!.annotation = annotation
                }
                
                return pinView
        }
        
        
        
        

    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
