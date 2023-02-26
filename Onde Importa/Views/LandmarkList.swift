//
//  LandmarkList.swift
//  Onde Importa
//
//  Created by Luiz Fernando Andrade on 08/02/23.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    
    private var filteredLandmarks : [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
        
//        if showFavoritesOnly {
//            return landmarks.filter { $0.isFavorite == true }
//        } else {
//            return landmarks
//        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationTitle("Beauties of this world!")
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
//    static var devices = ["iPhone 14", "iPhone SE (3nd generation)", "iPhone 14 Pro"]
//
//    static var previews: some View {
//        ForEach(devices, id: \.self ) { device in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
//                .previewDisplayName(device)
//        }
//    }
    
    static var previews: some View {
        LandmarkList()
    }
}
