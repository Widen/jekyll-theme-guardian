# jekyll-theme-guardian

![jekyll-theme-guardian preview](/screenshot.png)

## Installation

### Remote Theme (Preferred)

Add this line to your Jekyll site's `_config.yml`:

```yaml
remote_theme: widen/jekyll-theme-guardian@<TAG>
```

See [releases](https://github.com/Widen/jekyll-theme-guardian/releases) for the most up-to-date tag to reference.

### Standard Ruby Gem

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-guardian", git: 'git@github.com:widen/jekyll-theme-guardian.git', branch: "master"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-guardian
```

And then execute:

```bash
$ bundle
```

## Usage

### Configuration

A number of configuration options are setup for use within your Jekyll site's `_config.yml`, all of the theme-specific options are prefixed with `guardian`:

```yaml
guardian:
  style:
    logo_url: <URL>
    header_background_url: <URL>
  social_links:
    twitter: <TWITTER_USERNAME>
    github_org: <GITHUB_ORGANIZATION_NAME>
    github_repo: <GITHUB_REPOSITORY_NAME> (if present, GitHub links will be rendered in the footer)
    email_subscription_url: <EMAIL_SUBSCRIPTION_URL>
  tracking:
    google_analytics_code: <GOOGLE_ANANLYTICS_CODE>
    disqus_shortname: <DISQUS_SHORTNAME>
```

This theme now properly leverages the `jekyll-pagination` plugin for blog posts. Ensure your site specifies proper [pagination configuration](https://jekyllrb.com/docs/pagination/):

```yaml
paginate: 5
paginate_path: "/blog/page/:num/"
```

If pagination configuration is not defined, then all posts will be rendered and paginator elements will be hidden.

### Layouts

* `default` - includes a header, content, and footer section
* `index` - extends `default`, used as a blog index page (with paginated support for posts), if content is provided it will be rendered _before_ the post list
* `page` - extends `default`, used for pages
* `post` - extends `default` and optionally includes a Disqus comment block

### includes

* `head` - included on the `default` layout; specifies title, stylesheets, etc.
  * `favicons` - sets up links to favicons for browsers and mobile devices
  * `analytics` - if `site.guardian.tracking.google_analytics_code` is populated, this will include GA tracking code
* `header` - included on the `default` layout; renders the header with `site.guardian.style.logo_url` and `site.guardian.style.header_background_url`
* `footer` - included on the `default` layout; renders a footer with social links
  * `git-info` - includes links to GitHub to view/edit content (if `site.guardian.social_links.github_repo` is present)
* `disqus` - included on the `post` layout; if `site.guardian.tracking.disqus_shortname` is populated, this will include a Disqus comment block

### Assets

* `app.css` - the main stylesheet; includes imported content from `_sass` as well as `normalize.css`
* `fonts` - the Ionicon font-family is included and wired for use
* `images` - a number of Widen-branded favicons are included in various sizes

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/widen/jekyll-theme-guardian. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
