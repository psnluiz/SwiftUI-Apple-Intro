import SwiftUI


struct ContentView: View {
    
    var body: some View {

        VStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                .foregroundColor(.red)
                Text("Turtle Rock")
                    .font(.title)
                HStack(
                    spacing: 16
                ) {
                    Text("Obrigado deus por me fazer cezar blacker")
                    Text("Mano, vamo ser produtivo carai!")
                        .font(.subheadline)
                    
                }
                .padding(.top, 20)
            }
            .padding(20)
            
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

    

