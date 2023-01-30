//
//  ContentView.swift
//  Bottles_V2
//
//  Created by mac on 2023/01/17.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shopDataStore: ShopDataStore
    @EnvironmentObject var bottleStore: BottleDataStore
    @EnvironmentObject var userStore: UserStore
    @State private var testText: String = ""
    
    var body: some View {
        VStack {
            Button {
                Task{
                    await shopDataStore.getData()
                    await userStore.getUserDataWithEmail()
                    
                }
            } label: {
                Text("데이터 가져와지나?")
            }
            
            VStack {
                ForEach(shopDataStore.shops, id: \.id) { shop in
                    Text(shop.shopName ?? "")
                    Text(shop.shopAddress ?? "")
                }
            }
            
            Text(userStore.user?.id ?? "")
            Text(userStore.user?.nickname ?? "")
            
//            TextField("일단 바틀 네임 입력", text: $testText)
//                .frame(width: 300, height: 150)
//                .border(.blue, width: 1)
            
            
            
//            Button {
//                Task {
//                    await bottleStore.searchBottleData(testText)
//                }
//
//            } label: {
//                Text("testText 바틀 다 가져와")
//            }
            
//            VStack(alignment: .leading) {
//                ForEach(bottleStore.bottles, id: \.id) { bottle in
//                    HStack {
//                        Text(bottle.itemName ?? "")
//                        ForEach(bottle.itemTag ?? [], id: \.self) { tag in
//                            Text(tag ?? "")
//                        }
//                    }
//                }
//            }
        }
        .padding()
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environmentObject(DataStore())
//    }
//}
