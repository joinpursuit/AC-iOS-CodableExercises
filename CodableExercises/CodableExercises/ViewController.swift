//  ViewController.swift
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 Winston Maragh. All rights reserved.

import UIKit

class ViewController: UIViewController {
	
	//MARK: - Variables and Constants
	var billboardSongs = [BillboardSongs]()
	var weatherCities = [WeatherCities]()
	
	//MARK: - Overrides
	override func viewDidLoad() {
		super.viewDidLoad()
		loadBillboardSongsData()
		loadWeatherCitiesData()
	}
	
	//Billboard Songs
	func loadBillboardSongsData() {
		if let path = Bundle.main.path(forResource: "billboardsongsinfo", ofType: "json") {
			let myURL = URL(fileURLWithPath: path)
			if let data = try? Data(contentsOf: myURL) {
				let myDecoder = JSONDecoder()
				do {
					self.billboardSongs = try myDecoder.decode([BillboardSongs].self, from: data)
				}
				catch {
					print(error)
				}
			}
		}
	}
	
	//Weather Cities
	func loadWeatherCitiesData() {
		if let path = Bundle.main.path(forResource: "weathercitiesinfo", ofType: "json") {
			let myURL = URL(fileURLWithPath: path)
			if let data = try? Data(contentsOf: myURL) {
				let myDecoder = JSONDecoder()
				do {
					self.weatherCities = try myDecoder.decode([WeatherCities].self, from: data)
				}
				catch {
					print(error)
				}
			}
		}
	}
	
}
