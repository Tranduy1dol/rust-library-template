//! Core library module

/// Example function
///
/// # Example
///
/// ```rust
/// use rust_library_template::modules_1::hello;
/// assert_eq!(hello(), "Hello from rust-library-template!");
/// ```
pub fn hello() -> &'static str {
    "Hello from rust-library-template!"
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_hello() {
        assert_eq!(hello(), "Hello from rust-library-template!");
    }
}
