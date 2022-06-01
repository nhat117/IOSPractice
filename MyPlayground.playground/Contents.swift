import UIKit

let contacts = ["John":123, "Jessi" : 456,"Ethan":789,"Christina": 1020]

let halfOpenRange = 1..<5

let fullOpenRange = 1...5

var now = Date().timeIntervalSince1970

let oneSec = now + 1

while now < oneSec {
    print("Waiting....")
    now = Date().timeIntervalSince1970
}

for person in contacts {
    print(person.key)
    
}
