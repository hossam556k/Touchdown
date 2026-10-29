import SwiftUI

struct HeaderDetailsView: View {
    // MARK: - PROPERTY
    @Environment(Shop.self) private var shop   // read the shared instance

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("protective Gear")

            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailsView()
        .environment(Shop())   // previews need their own instance
}
