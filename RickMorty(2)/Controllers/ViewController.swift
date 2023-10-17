//
//  ViewController.swift
//  RickMorty(2)
//
//  Created by Anton Akhmedzyanov on 17.10.2023.
//

import UIKit

class ViewController: UIViewController {
    var url = URL(string: "https://rickandmortyapi.com/api/character/108")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchRickMorty()
    }
    private func fetchRickMorty() {
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description!")
                return
            }
            do {
                let decoder = JSONDecoder()
                let rickMorty = try decoder.decode(RickMorty.self, from: data)
                print(rickMorty)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }

}

