//
//  SwiftUIView.swift
//  Onde Importa
//
//  Created by Luiz Fernando Andrade on 06/02/23.
//

import SwiftUI

struct CircularImageView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView()
    }
}
