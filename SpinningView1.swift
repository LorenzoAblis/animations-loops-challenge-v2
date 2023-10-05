import SwiftUI

struct SpinningView1: View {
    
    @State var currentDegree = 0.0
    
    var body: some View {
        Button("Spins") {
            //MARK: MVP - Part I
            
            withAnimation(.easeIn) {
                currentDegree += 90
            }
            
        }
        .frame(width: 100, height: 50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        
        //MARK: MVP - Part II
        
        .rotationEffect(Angle(degrees: currentDegree))
        
        
        
        
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
