// SwiftUIPlayground
// https://github.com/ralfebert/SwiftUIPlayground/

import SwiftUI

/// Clip image to square in SwiftUI
/// see https://stackoverflow.com/questions/58290963/clip-image-to-square-in-swiftui
struct ClipImageSquareView: View {
    var body: some View {
        HStack {
            ForEach(0 ..< 3, id: \.self) { _ in
                ZStack {
                    Image("cookies")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .layoutPriority(-1)
                    VStack {
                        Spacer()
                        Text("Cookie")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(Color.white)
                    }
                }
                .clipped()
                .aspectRatio(1, contentMode: .fit)
                .border(Color.red)
            }
        }
    }
}

struct ClipImageSquareView_Previews: PreviewProvider {
    static var previews: some View {
        ClipImageSquareView()
    }
}
