//
//  Welcome.swift
//  Weather
//
//  Created by Parham Shagerdmootab on 2022-05-22.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack() {
            VStack(spacing: 20.0){
                Text("Welcome to the Weather App")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Please share your location to get weather in your area.")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
            .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
