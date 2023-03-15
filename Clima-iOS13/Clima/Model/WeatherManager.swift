//
//  WeatherManager.swift
//  Clima
//
//  Created by German Paul on 09.03.23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation
import CoreLocation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager {
    let url = "https://api.openweathermap.org/data/2.5/weather?appid=28e610406d4674471a3dd16f3c0ad8da&units=metric"

    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityName: String) {
        let requestUrl = "\(url)&q=\(cityName)"
        performRequest(with: requestUrl)
    }
    func fetchWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        let requestUrl = "\(url)&lat=\(latitude)&lon=\(longitude)"
        performRequest(with: requestUrl)
    }
    func performRequest(with url: String) {
        // 1. Create Url
        if let url = URL(string: url) {
            // 2. Create UrlSession
            let session = URLSession(configuration: .default)
            // 3. Give Session a task
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    if let weather = self.parseJSON(safeData) {
                        self.delegate?.didUpdateWeather(self, weather: weather)
                    }

                }
            }
            // 4. Start the task
            task.resume()
        }
        
        
    }
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        do {
            let decoder = JSONDecoder()
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let weatherModel = WeatherModel(conditionId: decodedData.weather[0].id, cityName: decodedData.name, temperature: decodedData.main.temp)
            //let id = decodedData.weather[0].id
            return weatherModel
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
}
