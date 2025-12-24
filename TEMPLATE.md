# Rust Crypto Library Template

This is a template for creating new cryptography libraries for the [zk-pathlearn](https://github.com/Tranduy1dol/zk-pathlearn) project.

## Features

- ✅ Rust project structure with `src/`, `tests/`, `benches/`
- ✅ CI workflow with cargo check, fmt, clippy, tests, and coverage
- ✅ Auto-tagging on version changes
- ✅ Notify workflow for zk-pathlearn project management integration
- ✅ MIT License
- ✅ README template with badges

## Usage

### Option 1: Copy and Setup

```bash
# Copy template to new location
cp -r template ../my-new-lib
cd ../my-new-lib

# Run setup script
chmod +x setup.sh
./setup.sh "my-new-lib" "Description of my library"
```

### Option 2: Manual Setup

1. Copy the `template` directory
2. Replace all `{{PROJECT_NAME}}` with your project name
3. Replace all `{{PROJECT_DESCRIPTION}}` with your description
4. Initialize git and push to GitHub

## Template Structure

```
template/
├── .github/
│   └── workflows/
│       ├── ci.yml              # CI: check, fmt, clippy, test, coverage
│       └── notify-project.yml  # Notify zk-pathlearn of branch/PR events
├── src/
│   ├── lib.rs                  # Main library entry
│   └── lib/
│       └── mod.rs              # Core module
├── tests/
│   └── integration_test.rs     # Integration tests
├── benches/
│   └── benchmarks.rs           # Criterion benchmarks
├── Cargo.toml                  # Package manifest
├── README.md                   # Project README
├── LICENSE                     # MIT License
├── .gitignore                  # Git ignore rules
└── setup.sh                    # Setup script
```

## Required GitHub Secrets

After creating your repository, add these secrets:

| Secret | Description |
|--------|-------------|
| `CODECOV_TOKEN` | Token for Codecov coverage reports |
| `PROJECT_DISPATCH_TOKEN` | PAT with 'repo' scope for zk-pathlearn notification |

## Branch Naming Convention

To integrate with zk-pathlearn project management, use this branch naming:

```
feature/<issue-number>-<description>
bugfix/<issue-number>-<description>
docs/<issue-number>-<description>
```

Example: `feature/5-add-montgomery-reduction`

This will automatically update Issue #5 in zk-pathlearn when you push the branch!
