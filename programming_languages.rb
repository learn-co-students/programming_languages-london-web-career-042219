require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language|
    language.each do |lang, type|
      string = type.values.join
      if new_hash.has_key?(lang)
        new_hash[lang][:style].push(style)
      else
        new_hash[lang] = {:type => string, :style => []}
        new_hash[lang][:style].push(style)
      end
    end
  end
  new_hash
end
