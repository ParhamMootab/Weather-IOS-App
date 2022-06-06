//
//  ContentView.swift
//  Weather
//
//  Created by Parham Shagerdmootab on 2022-05-22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    var body: some View {
        VStack{
            
            if let location = locationManager.location{
                if let weather = weather {
                    WeatherView(weather: weather)
                }else{
                    LoadingView()
                        .task {
                            do {
                                weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                            } catch  {
                                print("Error getting weather \(error)")
                            }
                        }
                }
            }else{
                if locationManager.isLoading {
                    LoadingView()
                }else{
                    WelcomeView().environmentObject(locationManager)
                }
            }
        }.background()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
