extension String {
    var localized: String {
        return self.localized(comment: "")
    }
    func localizedWithComment(comment:String) -> String {
        return self.localized(comment: comment)
    }
    func localized(comment commentString:String) -> String {
        return NSLocalizedString(self, comment: commentString)
    }
}

// Example for localizing strings easier.

var localizedHelloWorld = "Hello World".localized
localizedHelloWorld = "Hello World".localized(comment: "Title for Hello World")
localizedHelloWorld = "Hello World".localizedWithComment("Title for Hello World")
