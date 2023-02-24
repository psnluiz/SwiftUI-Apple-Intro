//
//  LandmarkList.swift
//  Onde Importa
//
//  Created by Luiz Fernando Andrade on 08/02/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
        }
        .navigationTitle("Beauties of this world!")
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var devices = ["iPhone 14", "iPhone SE (3nd generation)", "iPhone 14 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self ) { device in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
                .previewDisplayName(device)
        }
    }
}
