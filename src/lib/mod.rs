//! Core library module

/// Example function
///
/// # Example
///
/// ```rust
/// use {{PROJECT_NAME}}::hello;
/// assert_eq!(hello(), "Hello from {{PROJECT_NAME}}!");
/// ```
pub fn hello() -> &'static str {
    "Hello from {{PROJECT_NAME}}!"
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_hello() {
        assert_eq!(hello(), "Hello from {{PROJECT_NAME}}!");
    }
}
