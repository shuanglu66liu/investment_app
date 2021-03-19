

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var settings: UserSettings
    @EnvironmentObject var session: SessionStore
    
    func getUser(){
        session.listen()
    }
    var body: some View {
        Group {
         if session.session != nil {
            TabView {
            
                NavigationView {
                    ProductsContentView(productsData: Products(data: ProductsMockStore.productsData, items: ProductsMockStore.products))
                }
                .tag(0)
                .tabItem {
                    Image("activity-1")
                        .resizable()
                    Text("Products")
                }
                
    //            NavigationView {
    //                ActivitiesCartView(ShoppingCartItemsData: ActivitiesCart(data: ActivitiesMockStore.shoppingCartData))
    //            }
    //            .tag(1)
    //            .tabItem {
    //                Image("shopping-cart-icon")
    //                Text("Cart")
    //            }
                
                NavigationView {
                         AccountView()
                      }
                       .tag(2)
                        .tabItem {
                        Image("profile-glyph-icon")
                        Text("Account")
                    }
            
            }
         }else{
            NavigationView{LogInView()}
         }
       }.onAppear(perform: getUser)
    }
}



