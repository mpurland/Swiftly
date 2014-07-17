func synchronized(object: AnyObject, closure: () -> ()) {
    objc_sync_enter(object)
    closure()
    objc_sync_exit(object)
}

func synchronized<T>(object: AnyObject, closure: () -> T) -> T {
    objc_sync_enter(object)
    let val: T = closure()
    objc_sync_exit(object)
    return val
}

func synchronizedWith<A: AnyObject, T>(object: A, closure: (value: A) -> T) -> T {
    objc_sync_enter(object)
    let val: T = closure(value: object)
    objc_sync_exit(object)
    return val
}
