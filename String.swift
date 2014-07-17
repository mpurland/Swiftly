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
