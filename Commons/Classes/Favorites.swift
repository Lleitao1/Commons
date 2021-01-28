//
//  Favorites.swift
//  ProjetoFinal
//
//  Created by Pedro Spim Costa on 28/01/21.
//

import Foundation

let sharedFavorites = Favorites()

class Favorites {
    public func getFavorites() -> [String:[String: String]] {
        guard let favorites = UserDefaults.standard.object(forKey: "favorites") as? [String:[String: String]] else { return [:]}
        return favorites
    }

    public func checkIfFirstTime() {
        if UserDefaults.standard.object(forKey: "favorites") as? [String:[String: String]] == nil {
            UserDefaults.standard.set([:], forKey: "favorites")
        }
    }
    public func toggleFavorite(coin:CoinViewData) {
        var favorites = getFavorites()
        if favorites[coin.shortname] == nil {
            favorites[coin.shortname] = ["name":coin.name,"price":coin.price, "idIcon":coin.idIcon]
        } else {
            favorites[coin.shortname] = nil
        }
        UserDefaults.standard.set(favorites, forKey: "favorites")
    }
    public func checkIfFavorite(assetId:String) -> Bool{
        let favorites = getFavorites()
        if favorites[assetId] != nil {
            return true
        } else {
            return false
        }
    }
}
