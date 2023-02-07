import SwiftUI


struct ContentView: View {
    
    var body: some View {

        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircularImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Emirates Stadium")
                    .font(.largeTitle)
                
                HStack {
                    Text("Arsenal's Home")
                        .foregroundColor(.red)
                    Spacer()
                    Text("North London ")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("Home to the future 22/23 EPL champion!")
                    .font(.title2)
            }
            .padding()
            
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
    }
}

    

