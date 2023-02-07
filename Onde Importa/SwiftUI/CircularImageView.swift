//
//  SwiftUIView.swift
//  Onde Importa
//
//  Created by Luiz Fernando Andrade on 06/02/23.
//

import SwiftUI

struct CircularImageView: View {
    var body: some View {
        Image("arsenal2")
//            .resizable()
//            .frame(width: 500, height: 500)
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
