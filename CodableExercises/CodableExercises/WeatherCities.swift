//  WeatherCities.swift
//  Created by Winston Maragh on 11/16/17.
//  Copyright © 2017 Winston Maragh. All rights reserved.

import Foundation

struct WeatherCities: Codable  {
	var list: ListWrapper
}

struct ListWrapper: Codable {
	let id: Int
	let name: String
	let coord: CoordWrapper
	let main: MainWrapper
	let wind: WindWrapper
	let weather: WeatherWrapper
}

struct CoordWrapper: Codable {
	let lon: Double
	let lat: Double
}

struct MainWrapper: Codable {
	let temp: Double
	let temp_min: Double
	let temp_max: Double
	let pressure: Double
	let sea_level: Double
	let grnd_level: Double
	let humidity: Double
}

struct WindWrapper: Codable {
	let speed: Double
	let deg: Double
}

struct WeatherWrapper: Codable {
	let id: Int
	let main: String //"Rain"
	let description: String //"light rain"
	let icon: String //"10d"
}


