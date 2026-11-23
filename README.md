# TaisTalecrafts

Source for [taistalecrafts.com](https://taistalecrafts.com), the portfolio of Taisiia Smirnova, a narrative designer and game writer.

Built with Jekyll and the [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) remote theme, and hosted on GitHub Pages.

## Structure

| Path | What it holds |
|---|---|
| `_layouts/home.html` | Home page text (the About page reuses it) |
| `_pages/contact.md` | Contact page (`/contact/`, with a redirect from the old `/hire-me/`) |
| `_published-games/` | One file per game or project. `order:` sets its position on the Games page |
| `_writing-portfolio/` | One file per writing sample. `order:` sets its position on the portfolio page |
| `_includes/contact-cta.html` | The "Have a project or role in mind?" box shown at the end of pages |
| `_data/navigation.yml` | Top menu |
| `_includes/structured-data.html`, `_includes/schema.html` | Structured data (JSON-LD) for search engines and AI assistants |
| `llms.txt` | Plain-text summary of the site for AI assistants, built from the pages above |
| `_config.yml` | Site title, sidebar bio, social links, preview image |
| `assets/` | Images and the CV PDF |

## Adding a sample or game

Search engines skip pages that are only a short teaser, so every writing sample page should carry a real excerpt of the text (in a `<div class="sample-excerpt" markdown="1">` block) as well as the link to the full PDF. In the front matter, set `description` (one or two sentences for search results), `date` (when the page was first published) and `last_modified_at` (when you last changed it). Game pages can also set `official_url` (the store or official page).

Give every image a real description: `![What the image shows](/assets/images/...)`.

## Adding images

Keep images at web size (about 1600px wide, JPEG), so pages stay fast to load.

## Running locally

```sh
bundle install
bundle exec jekyll serve
```

Then open http://localhost:4000.
