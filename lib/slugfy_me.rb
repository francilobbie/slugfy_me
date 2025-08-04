# frozen_string_literal: true

require_relative "slugfy_me/version"

module SlugfyMe
  def self.slugify(string, separator: '-')
    string = remove_accents(string)
    string.downcase
          .gsub(/[^a-z0-9\s]/, '')     # garde lettres, chiffres et espaces
          .strip
          .gsub(/\s+/, separator)      # remplace les espaces par le séparateur choisi
  end


  def self.remove_accents(string)
    accents = {
      'àáâãäå' => 'a',
      'ç'      => 'c',
      'èéêë'   => 'e',
      'ìíîï'   => 'i',
      'ñ'      => 'n',
      'òóôõö'  => 'o',
      'ùúûü'   => 'u',
      'ýÿ'     => 'y'
    }

    accents.each do |group, replacement|
      string = string.gsub(/[#{group}]/i, replacement)
    end

    string
  end
end
