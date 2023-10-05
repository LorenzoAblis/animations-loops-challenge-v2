import SwiftUI

struct MovingView: View {
    
    @State var xPosition:CGFloat = 0
    @State var yPosition:CGFloat = 0
    
    var body: some View {
        VStack {
            Text("Moves")
                .frame(width: 100, height: 50)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .offset(x: xPosition, y: yPosition)
            //MARK: Stretch #2 
            
            
            HStack {
                Image(systemName: "arrowshape.up")
                    .onTapGesture {
                        yPosition += -10
                    }
                Image(systemName: "arrowshape.down")
                    .onTapGesture {
                        yPosition += 10
                    }
                Image(systemName: "arrowshape.left")
                    .onTapGesture {
                        xPosition += -10
                    }
                Image(systemName: "arrowshape.right")
                    .onTapGesture {
                        xPosition += 10
                    }
            }
            .font(.system(size: 40))
            
            
            
        }
        
    }
}

