//
//  SwiftUIView.swift
//  Onde Importa
//
//  Created by Luiz Fernando Andrade on 06/02/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    //Custom Location Manager Class
    @StateObject var locationManager = LocationManager()
    @State internal var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
//            .onReceive(locationManager.$lastLocation) { location in
//                if let location = location {
//                    let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
//                    self.region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
//                }
//            }
        
            .navigationTitle("User's Location on Map")
    }

}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
