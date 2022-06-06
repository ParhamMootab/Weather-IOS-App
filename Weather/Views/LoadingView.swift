//
//  ProgressView.swift
//  Weather
//
//  Created by Parham Shagerdmootab on 2022-05-25.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint:.white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
