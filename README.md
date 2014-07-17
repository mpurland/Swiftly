Swiftly
=======

Collection of learnings and utilities in Swift.

# Localization
Example for localizaing strings easier.
```swift
var localizedHelloWorld = "Hello World".localized
localizedHelloWorld = "Hello World".localized(comment: "Title for Hello World")
localizedHelloWorld = "Hello World".localizedWithComment("Title for Hello World")
```

# Synchronization
Example for using synchronized in Swift.

Basic synchronized
```swift
synchronized(someObj) {
	// Do something
}
```

Return a value from synchronized
```swift
let val: Int = synchronized(someObj) {
	return 5
}
```

Return a value from synchronized and use someObj as input to closure
```swift
let val: Int = synchronizedWith(someObj) {
	obj in
	// Use obj to calculate some value
	return 5
}
```
