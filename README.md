# rust-library-template

[![CI](https://github.com/Tranduy1dol/rust-library-template/actions/workflows/ci.yml/badge.svg)](https://github.com/Tranduy1dol/rust-library-template/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/Tranduy1dol/rust-library-template/graph/badge.svg)](https://codecov.io/gh/Tranduy1dol/rust-library-template)

This is a template for creating new Rust crypto libraries for the [zk-pathlearn](https://github.com/Tranduy1dol/zk-pathlearn) project.

> ⚠️ **Educational Purpose Only**: This library is for learning purposes and is **NOT production-ready**.

## Features

- Feature 1
- Feature 2

## Installation

Add the following to your `Cargo.toml`:

```toml
[dependencies]
rust-library-template = { git = "https://github.com/Tranduy1dol/rust-library-template" }
```

## Usage

```rust
use rust_library_template::*;

fn main() {
    // Your code here
}
```

## Architecture

```
src/
├── lib.rs          # Main library entry point
└── lib/
    └── mod.rs      # Core module
```

## Development

```bash
# Run tests
cargo test

# Run benchmarks
cargo bench

# Format code
cargo fmt

# Run clippy
cargo clippy
```

## Related Projects

This library is part of the [zk-pathlearn](https://github.com/Tranduy1dol/zk-pathlearn) learning monorepo for Zero-Knowledge Proofs.

## License

This project is licensed under the MIT License.
