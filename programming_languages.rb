def reformat_languages(languages)

    new_langs = {}

     languages.each do | l_style, l_langs |
      l_langs.each do | langname, langdata |
        if new_langs[langname] == nil
          new_langs[langname] = { style: [] }
        end
        new_langs[langname][:style] << l_style
        new_langs[langname][:type] = langdata[:type]
      end
    end

     new_langs
end
