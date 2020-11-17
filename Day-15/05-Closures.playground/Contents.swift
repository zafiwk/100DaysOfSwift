import UIKit

// Closures. Let's take a Cocoa Touch example first:
let vw = UIView()
UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})


// Trailing closures
let vw2 = UIView()
UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}
