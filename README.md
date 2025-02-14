# LLM Guidelines Website

This website is built using [Jekyll](https://jekyllrb.com/), [Just the Docs](https://just-the-docs.github.io/just-the-docs/), and [GitHub Pages](https://pages.github.com/).
You can test changes to to website locally as follows:

1. Either install `ruby` and `pandoc` directly or using [asdf](https://asdf-vm.com/) (see [.tool-versions](https://github.com/se-ubt/llm-guidelines-website/blob/main/.tool-versions)). If you're on Windows, we suggest using [WSL](https://learn.microsoft.com/en-us/windows/wsl/install).
2. Run `gem install bundler jekyll`.
3. Run `bundle install` in the root directory of this repo.
4. Run `./convert-and-merge-sources.sh` to convert the Latex files to Markdown.
5. Run `bundle exec jekyll serve` to host the website locally.
6. Open `http://localhost:4000/` in your browser.

When you change the Latex and convert them to Markdown, the local version of the website will automatically refresh (this does not apply to changes in the [configuration](https://github.com/se-ubt/llm-guidelines-website/blob/main/_config.yml), which you as a contributor usually don't need to modify).
Do not modify the converted Markdown files, as you changes will be lost after the next conversion.
The converted files are also not versioned, as they are generated when the website is deployed using a GitHub Actions workflow (see below).

Once you push your changes to the `main` branch or once a pull request is merged, the website is automatically redeployed via a GitHub Actions [workflow](https://github.com/se-ubt/llm-guidelines-website/blob/main/.github/workflows/pages.yml), which you can monitor [here](https://github.com/se-ubt/llm-guidelines-website).

We are free to use any Latex editor you like.
To double-check the generated Markdown files, you can use any Markdown editor you like, preferably one that supports [kramdown](https://kramdown.gettalong.org/), which is the [default Markdown renderer for Jekyll](https://jekyllrb.com/docs/configuration/markdown/#kramdown).

If you add references to [literature.bib](https://github.com/se-ubt/llm-guidelines-website/blob/main/literature.bib), please use the [DBLP](https://dblp.org/) Bibtex entries if available.
