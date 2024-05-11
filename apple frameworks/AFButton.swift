// Adam Kaum on 11.05.2024


import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        
        
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    AFButton(title: "Learn More")
}
