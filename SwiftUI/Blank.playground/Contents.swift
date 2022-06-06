import UIKit

let defaults = UserDefaults.standard

defaults.set(0.24, forKey: "volume")
defaults.set(Date(), forKey: "lastOpenDay")


let volume = defaults.float(forKey: "volume")
let datae = defaults.object(forKey: "lastOpenDay")
