import SwiftUI

struct ProductDetailsView: View {
    // MARK: - PROPERTY
    @Environment(Shop.self) private var shop   // read the shared instance

    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {

            // NAVBAR
            NavigationBarDeatailsView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.safeAreaTop)

            // HEADER
            HeaderDetailsView()
                .padding(.horizontal)

            // DETAIL TOP PART
            TopPartDetailsView()
                .padding(.horizontal)
                .zIndex(1)

            VStack(alignment: .leading, spacing: 0) {
                RatingsSizesDetailsView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)

                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })

                Quantity()
                    .padding(.vertical, 10)
                ButtonAdd()
                    .padding(.bottom)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

#Preview {
    ProductDetailsView()
        .environment(Shop())   // previews need their own instance
}
