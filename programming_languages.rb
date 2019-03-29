require 'pry'

def reformat_languages(languages)

  #binding.pry
  new_langs = {}

  languages.each do | l_style, l_langs |
    # we loop once for each style
    l_langs.each do | langname, langdata |
      # add language and style
      if new_langs[langname] == nil
        new_langs[langname] = { style: [] }
      end
      new_langs[langname][:style] << l_style
      new_langs[langname][:type] = langdata[:type]
    end
  end

  #binding.pry

  new_langs
end
