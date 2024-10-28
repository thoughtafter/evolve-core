    // extern crate alloc;

    use alloc::boxed::Box;
    pub fn leak_heap_ptr<T>(thing: T) -> *const T {
        Box::into_raw(Box::new(thing))
    }

    pub fn leak_heap_ref<T>(thing: T) -> &'static T {
        Box::leak(Box::new(thing))
    }

    pub fn leak_heap_ref_mut<T>(thing: T) -> &'static mut T {
        Box::leak(Box::new(thing))
    }

    // using box leak
    // does not preserve cstring
    // fn str_to_safe_object2(value: &str) -> Object {
    //     // copy_ref_to_heap_and_leak(&value.to_owned()).as_str().into()
    //     //
    //     let owned = value.to_owned();
    //     let box_string = Box::new(owned);
    //     // // let leak_string = Box::leak(box_string);
    //     // // leak_string.as_str().into()
    //     let leak_string = Box::into_raw(box_string);
    //     unsafe { &*leak_string }.as_str().into()
    //
    //     // let heap = String::from(value);
    // }

    // pub fn str_to_safe_object(value: &str) -> Object {
    //     let heap = value.to_owned();
    //
    //     let leaked: &'static str = Box::leak(heap.into_boxed_str());
    //     leaked.into()
    // }

    // same as above
    // pub fn str_to_safe_object(value: &str) -> Object {
    //     // (&*value.to_string().leak()).into()
    //     (&*value.to_owned().leak()).into()
    // }
