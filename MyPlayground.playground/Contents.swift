import UIKit

struct MyOptional {
    let k = 4
    let z = 2
    
    func res() {
        print("Hello")
    }
}

var greeting : MyOptional?


greeting = MyOptional()

//Optional binding

//if let msg = greeting {
//    print(msg)
//} else {
//    print("Greeting is nil")
//}


//Coelessing operator



let text : Int = greeting?.k ?? 1

print(text)

greeting?.res()
