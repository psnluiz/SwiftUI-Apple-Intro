import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.red)
            HStack(
                spacing: 16
            ) {
                Text("Turtle Rock")
                    .font(.title)
                Text("Obrigado deus porme fazer cezar blacker")
                Text("Mano vamo ser produtivo carai!")
                    .font(.callout)
                
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
    }
}
