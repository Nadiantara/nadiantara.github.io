#!/bin/bash

# List of directories to clean up
echo "Cleaning up old generated directories..."
rm -rf en id js css tags categories

# Get a list of files to preserve (exclude Hugo source files and Git files)
PRESERVE=(".git" ".gitignore" "archetypes" "content" "data" "i18n" "layouts" "static" "themes" "hugo.toml" "README.md" ".github" "setup-github-pages.sh")
PRESERVE_STRING=$(printf " -not -path './%s/*' -not -path './%s'" "${PRESERVE[@]}")

# Delete generated files but preserve our source files
echo "Cleaning up old generated files..."
find . -type f -not -path "./.git/*" -not -path "./archetypes/*" -not -path "./content/*" -not -path "./data/*" -not -path "./i18n/*" -not -path "./layouts/*" -not -path "./static/*" -not -path "./themes/*" -not -name "hugo.toml" -not -name "README.md" -not -name ".gitignore" -not -name "setup-github-pages.sh" -delete

# Build the site with Hugo
echo "Building site with Hugo..."
hugo --minify

# Create .nojekyll file
echo "Creating .nojekyll file..."
touch .nojekyll

echo "GitHub Pages setup complete. You can now commit and push the changes." 