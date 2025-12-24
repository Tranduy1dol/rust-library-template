#!/bin/bash
# Setup script for creating a new Rust crypto library from template
#
# Usage: ./setup.sh <project-name> "<project-description>"
#
# Example: ./setup.sh lattice-crypto "Lattice-based cryptography primitives"

set -e

PROJECT_NAME="${1:-my-crypto-lib}"
PROJECT_DESCRIPTION="${2:-A cryptography library for zk-pathlearn}"

echo "🚀 Creating new project: $PROJECT_NAME"
echo "📝 Description: $PROJECT_DESCRIPTION"
echo ""

# Check if we're in the template directory
if [ ! -f "Cargo.toml" ]; then
    echo "❌ Error: Run this script from the template directory"
    exit 1
fi

# Replace placeholders in all files
echo "📦 Replacing placeholders..."

find . -type f \( -name "*.rs" -o -name "*.toml" -o -name "*.md" -o -name "*.yml" \) | while read file; do
    sed -i "s/{{PROJECT_NAME}}/$PROJECT_NAME/g" "$file"
    sed -i "s/{{PROJECT_DESCRIPTION}}/$PROJECT_DESCRIPTION/g" "$file"
done

echo "✅ Placeholders replaced"

# Initialize git repository
echo "📁 Initializing git repository..."
rm -rf .git 2>/dev/null || true
git init
git add .
git commit -m "Initial commit: $PROJECT_NAME"

echo ""
echo "✨ Project '$PROJECT_NAME' created successfully!"
echo ""
echo "Next steps:"
echo "  1. cd $(pwd)"
echo "  2. Create a new GitHub repo named '$PROJECT_NAME'"
echo "  3. git remote add origin https://github.com/Tranduy1dol/$PROJECT_NAME.git"
echo "  4. git push -u origin main"
echo "  5. Add secrets: CODECOV_TOKEN, PROJECT_DISPATCH_TOKEN"
echo ""
echo "Happy coding! 🎓"
