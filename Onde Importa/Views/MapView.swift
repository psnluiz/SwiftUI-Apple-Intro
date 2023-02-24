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
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var coordinates: CLLocationCoordinate2D
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(with: coordinates)
            }
    }

    private func setRegion(with coordinates: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: CLLocationCoordinate2D(latitude: 51.5, longitude: 0.12))
    }
}
