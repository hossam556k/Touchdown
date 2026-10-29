import SwiftUI

struct ContentView: View {

    // MARK: - PROPERTIES
    @State private var shop = Shop()   // the only owner

    // MARK: - BODY
    var body: some View {
        ZStack {
            if shop.selectedProduct == nil {

                VStack(spacing: 0) {

                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.safeAreaTop)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {

                            FeatruedTabView()

                            CategoryGridView()

                            TitleView(title: "Humlet")

                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .contentShape(Rectangle())
                                        .onTapGesture {
                                            print("TAPPED:", product.name)
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                            }
                                        }
                                }
                            }
                            .padding(15)

                            TitleView(title: "Brands")

                            BrandGridView()

                            FooterView()
                                .padding(.horizontal)
                        }
                    }
                }
                .background(colorBackground.ignoresSafeArea())

            } else {
                ProductDetailsView()
                    .transition(.opacity)
            }
        }
        .environment(shop)
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ContentView()
}
