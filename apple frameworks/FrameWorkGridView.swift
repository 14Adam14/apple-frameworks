// Adam Kaum on 11.05.2024


import SwiftUI

struct FrameWorkGridView: View {
    var body: some View {
        VStack{
            Image("app-clip")
                .resizable()
                .frame(width: 90, height: 90)
            
            Text("App Clips")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        
    }
}

#Preview {
    FrameWorkGridView()
}
