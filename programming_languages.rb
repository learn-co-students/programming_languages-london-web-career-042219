def reformat_languages(languages)
  # your code here
  new_hash={}
  languages.each do | style, style_data |

    style_data.each do | language, language_data |

     if !new_hash[language]
       new_hash[language]={}
       new_hash[language][:type]=""
       new_hash[language][:style]=[]
      end

      language_data.each do | type, type_data |
      
        new_hash[language][:type]=type_data
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
