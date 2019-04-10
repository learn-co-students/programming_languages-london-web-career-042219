def reformat_languages(languages)
  hash = {}
  languages[:oo].each do |language, info|
    hash[language] = {
      type: info[:type],
      style: [:oo]
    }
  end
  languages[:functional].each do |language, info|
    if hash.key?(language)
      hash[language][:style] << :functional
    else
      hash[language] = {
        type: info[:type],
        style: [:functional]
      }
    end
  end
  hash
end
