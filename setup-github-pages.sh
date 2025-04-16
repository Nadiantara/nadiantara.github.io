#!/bin/bash

# Remove docs directory if it exists
rm -rf docs

# Build the site with Hugo
hugo --minify

# Create .nojekyll file in docs directory
touch docs/.nojekyll

echo "GitHub Pages setup complete. You can now commit and push the changes." 