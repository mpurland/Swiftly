extension String {
    var localized: String {
        return self.localized("")
    }
    func localized(comment:String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
}

// Example for localizing strings easier.

var localizedHelloWorld = "Hello World".localized
localizedHelloWorld = "Hello World".localized("Title for Hello World")
