//
//  NearBySheetView.swift
//  Bottles_V2
//
//  Created by 강창현 on 2023/01/18.
//

import SwiftUI

struct NearBySheetView: View {
    var body: some View {
        NavigationStack {
            Text("둘러보기")
                .font(.bottles24)
            VStack {
                NearBySheetCell()
            }
            .navigationTitle("둘러보기")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NearBySheetView_Previews: PreviewProvider {
    static var previews: some View {
        NearBySheetView()
    }
}
