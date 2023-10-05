import SwiftUI

//MARK: Stretch #3

/* Remove the Text below and add any code needed
 * for your personal animation.
 */

struct ChoiceView: View {
    var colors: [Color] = [Color.teal, Color.blue]
//    @State var currentRotation = 0.0
    @State var spinx = true
    @State var spiny = false
    @State var spinz = true
    
    
    var body: some View {
        Button(action: {
            withAnimation(.easeOut(duration: 1).repeatForever(autoreverses: false)) {
                spinx.toggle()
                spiny.toggle()
                spinz.toggle()
            }
        }) {
            Text("Start Electron")
        }
        ZStack {
            Text("Atom")
                .frame(width: 50, height: 50)
                .background(.black)
                .clipShape(Circle())
            Circle()
                .stroke(Color.blue, lineWidth: 5)
            Circle()
                .stroke(
                    AngularGradient(
                        gradient: Gradient(colors: colors),
                        center: .center,
                        startAngle: .degrees(0),
                        endAngle: .degrees(360)
                    ),
                    style: StrokeStyle(lineWidth: 5, lineCap: .round)
                )
                .rotation3DEffect(
                    .degrees(spinx ? 1 : 180), axis: (x: spinx ? 1 : 0, y: 0.0, z: 0.0)
                )
                .onAppear() {
                    spinx.toggle()
                }
            Circle()
                .stroke(
                    AngularGradient(
                        gradient: Gradient(colors: colors),
                        center: .center,
                        startAngle: .degrees(0),
                        endAngle: .degrees(360)
                    ),
                    style: StrokeStyle(lineWidth: 5, lineCap: .round)
                )
                .rotation3DEffect(
                    .degrees(spiny ? 1 : 180), axis: (x: 0.0, y: spiny ? 1 : 0, z: 0.0)
                )
                .onAppear() {
                    spiny.toggle()
                }
            Circle()
                .stroke(
                    AngularGradient(
                        gradient: Gradient(colors: colors),
                        center: .center,
                        startAngle: .degrees(0),
                        endAngle: .degrees(360)
                    ),
                    style: StrokeStyle(lineWidth: 5, lineCap: .round)
                )
                .rotation3DEffect(
                    .degrees(spinz ? 1 : 180), axis: (x: 0.0, y: 0.0, z: spinz ? 1 : 0)
                )
                .onAppear() {
                    spinz.toggle()
                }
        }.frame(idealWidth: 100, idealHeight: 100, alignment: .center)
            .fixedSize()
    }
}

