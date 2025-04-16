# Limit & Matriks Blog

A personal blog about mathematics and science built with Hugo.

## Features

- Responsive design with Bootstrap 5
- MathJax for displaying mathematical equations
- Tag-based organization for content
- Clean and simple interface
- Multilingual support (English and Indonesian)

## Local Development

1. **Install Hugo** - Follow the [official installation guide](https://gohugo.io/installation/)

2. **Clone this repository**
   ```
   git clone https://github.com/nadiantara/nadiantara.github.io.git
   cd nadiantara.github.io
   ```

3. **Run the local development server**
   ```
   hugo server -D
   ```
   The site will be available at http://localhost:1313/

4. **Build the site**
   ```
   hugo
   ```
   The built site will be in the `public/` directory

## Adding New Content

To create a new blog post in English:

```
hugo new content en/posts/my-new-post.md
```

To create a new blog post in Indonesian:

```
hugo new content id/posts/my-new-post.md
```

Edit the created markdown files in `content/en/posts/my-new-post.md` or `content/id/posts/my-new-post.md`.

## Multilingual Support

The blog is configured with two languages:
- English (`en`): "Limits & Matrices"
- Indonesian (`id`): "Limit & Matriks"

Users can switch between languages using the language dropdown in the navigation bar. Content is organized in language-specific directories:

- English content: `content/en/`
- Indonesian content: `content/id/`

When adding new content, make sure to add it to both language directories if you want it to be available in both languages.

## Deployment

This site is configured to be deployed to GitHub Pages. For manual deployment:

1. Run `hugo` to build the site
2. Push the contents of the `public/` directory to the GitHub Pages repository

For automated deployment using GitHub Actions, see the workflow file in `.github/workflows/`. 