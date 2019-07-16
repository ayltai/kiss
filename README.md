# Kiss

Kiss is a minimalist Jekyll theme for personal blogs with [KISS principle](https://en.wikipedia.org/wiki/KISS_principle) applied.

[View demo website](https://ayltai.github.io/kiss)

![Screenshot](screenshot.png "Screenshot")

## Features

* Fully compatible with [GitHub Pages](https://pages.github.com/)
* Support Jekyll [gem-based](https://jekyllrb.com/docs/themes/#understanding-gem-based-themes) [remote theme](https://github.blog/2017-11-29-use-any-theme-with-github-pages/)
* Supports [Google Analytics](https://analytics.google.com/analytics/web/)
* Post comments powered by [Disqus](https://disqus.com/)
* Search engine optimization
* Supports [Font Awesome](https://fontawesome.com/)
* Code syntax highlighting

## Usage

1. Use `remote_theme: ayltai/kiss` in your `Gemfile`.
2. Copy [`_data/settings.yml`](blob/master/_data/settings.yml) and customize as you need.
3. Create `index.html` that uses `home` layout.
4. If your site supports RSS feed, create `feed.xml` that uses `feed` layout.
5. Create your first post in `_posts` folder.

## File structure

```
kiss/
├─ _data/          # Data files go here
| └- settings.yml  # Theme settings
├─ _includes/      # Theme includes (Overridable)
├─ _layouts/       # Theme layouts (Overridable)
├─ _posts/         # Your posts go here
├─ assets/         # JS, CSS and images go here
| ├─ css/          # CSS files go here
| | ├─ main.css    # CSS for the theme (Overridable)
| | └- syntax.css  # CSS for code syntax highlighting (Overridable)
| └- img/          # Images go here
├─ pages/          # Additional pages that shows as menu items go here
| └- about.md      # About page
├─ _config.yml     # Site settings
├─ 404.html        # Page to be display when requested URL does not exist (Overridable)
├─ feed.xml        # For generating RSS 2.0 feed
├─ Gemfile         # Ruby Gemfile
└- index.html      # Home page
```

More information about these file structure can be found in [Jekyll documentation](https://jekyllrb.com/docs/structure/).

## Configurations

### Site configuration

Copy [`_config.yml`](blob/master/_config.yml) and change the site variables:

```yml
# Site settings
title       : # Name of the website
description : # Subtitle of the website
author      : # Default post author name
```

More information about site configuration can be found in [Jekyll documentation](https://jekyllrb.com/docs/configuration/).

### Theme configuration

Copy [`_data/settings.yml`](blob/master/_data/settings.yml) and change the theme variables:

```yml
favicon :    # The favicon of the website

menu:        # Menu item array
  - { name : 'Home' }
  - { name : 'About', path : 'pages', url : 'about.html' }

authors:     # Post author array
  - { name : 'Alan Tai', url : 'https://www.linkedin.com/in/ayltai' }

social:      # FontAwesome icons linked to external websites; to be shown in footer
  - { icon : 'github',     url : 'https://github.com/ayltai' }
  - { icon : 'linkedin',   url : 'https://github.com/ayltai' }
  - { icon : 'rss-square', url : '/feed.xml' }

pagination:
  previous : # Label that represents "older posts"
  next     : # Label that represents "newer posts"

```

### Content creation

#### Home page

You need to create an `index.html` file as your home page with at least the following content:

```
---
layout : home
---
```

#### (Optional) RSS feed

If you want to support RSS feed for your website, you need to create `feed.xml` file with at least the following content:

```
---
layout : feed
---
```

#### Posts

You can follow the [Jekyll documentation](https://jekyllrb.com/docs/posts/) on how to create posts.

#### (Optional) About page

If you want to show the About page somewhere on your website, you can show it using the menu.

Copy [`_data/settings.yml`](blob/master/_data/settings.yml) and change the theme variables:

```yml
menu:
  - { name : 'Home' }                                      # Home page, the path is [Base URL]
  - { name : 'About', path : 'pages', url : 'about.html' } # About page, the path is [Base URL]/pages/about.html
```

### (Optional) Disqus integration

This theme supports comments at the end of posts through [Disqus](https://disqus.com/). You need to have a [Disqus](https://disqus.com/) account and set your [Disqus shortname](https://help.disqus.com/customer/portal/articles/466208) in [`_data/settings.yml`](blob/master/_data/settings.yml):

```yml
disqus:
  shortname : # Your Disqus shortname
```

If you want to disable [Disqus](https://disqus.com/) comments, just don't add `disqus` section in [`_data/settings.yml`](blob/master/_data/settings.yml).

### (Optional) Google Analytics integration

This theme supports [Google Analytics](https://analytics.google.com/analytics/web/). You need to have a [Google Analytics](https://analytics.google.com/analytics/web/) and set your [tracking ID](https://support.google.com/analytics/answer/1008080?visit_id=636988589985352940-1664182305&rd=1#GAID) in [`_data/settings.yml`](blob/master/_data/settings.yml):

```yml
google:
  analytics : #UA-XXXXXXXXX-1
```

If you want to disable [Google Analytics](https://analytics.google.com/analytics/web/), just don't add `google` section in [`_data/settings.yml`](blob/master/_data/settings.yml).

## License

[The MIT License](blob/master/LICENSE)
