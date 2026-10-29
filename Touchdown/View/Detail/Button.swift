import SwiftUI

struct ButtonAdd: View {
    // MARK: - PROPERTY
    @Environment(Shop.self) private var shop   // read the shared instance

    var body: some View {

        Button(action: {

        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()

        })
        .padding(15)
        .background(Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
        ))
        .clipShape(Capsule())
    }
}

#Preview {
    ButtonAdd()
        .environment(Shop())   // previews need their own instance
}
