# SlugfyMe

**EN:** A lightweight Ruby gem to generate clean slugs from strings, with basic accent and punctuation handling.
**FR :** Une petite gem Ruby pour transformer des chaînes de caractères en slugs propres, avec gestion simple des accents et ponctuation.

---

## 🇫🇷 Présentation

`SlugfyMe` est une gem Ruby éducative développée dans le cadre du blog [**Captain Ruby**](https://www.linkedin.com/company/captain-ruby-fr/), une ressource de référence pour la communauté Ruby francophone.
`SlugfyMe` est une gem Ruby éducative développée dans le cadre du blog [**Captain Ruby**](https://www.linkedin.com/company/captain-ruby-fr/), une ressource de référence pour la communauté Ruby francophone.

Elle permet de transformer une chaîne comme :

```ruby
SlugfyMe.slugify("C'est quoi Ruby ?")
# => "cest-quoi-ruby"
```

Vous pouvez également personnaliser le séparateur :

```ruby
SlugfyMe.slugify("Ruby c'est cool", separator: "_")
# => "ruby_cest_cool"
```

Cette gem a été pensée comme un projet simple pour découvrir comment créer, tester et publier une gem Ruby.
Elle n’a pas vocation à remplacer une solution complète comme `parameterize` ou `stringex`.

---

## 🇬🇧 About

`SlugfyMe` is a minimalist Ruby gem built as part of [**Captain Ruby**](https://www.linkedin.com/company/captain-ruby-fr/), a French-speaking blog dedicated to Ruby and Rails developers.
`SlugfyMe` is a minimalist Ruby gem built as part of [**Captain Ruby**](https://www.linkedin.com/company/captain-ruby-fr/), a French-speaking blog dedicated to Ruby and Rails developers.

It turns strings like:

```ruby
SlugfyMe.slugify("What is Ruby?")
# => "what-is-ruby"
```

You can also customize the separator:

```ruby
SlugfyMe.slugify("Ruby is cool", separator: "_")
# => "ruby_is_cool"
```

This gem is educational: it's designed to help developers understand how to build, test, and publish a Ruby gem from scratch.
It is not meant to compete with full-featured libraries like `stringex` or `parameterize`.

---

## ✨ Installation

Add this line to your Gemfile:

```ruby
gem 'slugfy_me'
```

Or install it manually:

```bash
gem install slugfy_me
```

---

## ✅ Usage

```ruby
require "slugfy_me"

SlugfyMe.slugify("Crème brûlée au Café !")
# => "creme-brulee-au-cafe"

SlugfyMe.slugify("Salut à tous !", separator: "_")
# => "salut_a_tous"
```

---

## 🧪 Pourquoi cette gem ?

Ce projet fait partie d’un article publié sur [Captain Ruby](https://captainruby.fr/), un blog francophone dédié à Ruby, Rails et à la transmission du savoir dans notre belle communauté 🖠️

Le but est de **montrer pas à pas** comment créer une gem Ruby et la publier sur RubyGems, avec des explications simples et accessibles.

---

## 🧑‍💻 Développement

Après avoir cloné le repo, lance :

```bash
bin/setup
```

Pour exécuter les tests :

```bash
bundle exec rspec
```

Pour tester ta gem en local dans un environnement interactif :

```bash
bin/console
```

Pour installer la gem en local :

```bash
bundle exec rake install
```

Pour publier une nouvelle version :

1. Mets à jour la version dans `lib/slugfy_me/version.rb`
2. Lance :

```bash
bundle exec rake release
```

---

## 🤝 Contributing

Les pull requests sont les bienvenues !
Tu peux proposer des améliorations simples : nouveaux caractères à gérer, support de langues, options de formatage supplémentaires, etc.

Retrouve le projet sur GitHub :
[https://github.com/francilobbie/slugfy_me](https://github.com/francilobbie/slugfy_me)

Merci de suivre le [code de conduite](https://github.com/francilobbie/slugfy_me/blob/master/CODE_OF_CONDUCT.md).

---

## 📄 Licence

La gem est disponible sous licence [MIT](https://opensource.org/licenses/MIT).

---

> 🇫🇷 Cette gem a été créée pour les besoins du blog [Captain Ruby](https://www.linkedin.com/company/captain-ruby-fr/) — le repère des passionnés de Ruby et Rails en français.
