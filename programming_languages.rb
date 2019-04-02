require 'pry'
def reformat_languages(languages)
  new_hash = {}
  
  languages = {:oo =>
    {:ruby => {:type => "interpreted"}, :javascript => {:type => "interpreted"}, :python => {:type => "interpreted"}, :java => {:type => "compiled"}
    },
    :functional =>
      {:clojure => {:type => "compiled"}, :erlang => {:type => "compiled"}, :scala => {:type => "compiled"}, :javascript => {:type => "interpreted"}
      }
  }
  test = []
  languages.each {|orientation,hash|
    hash.each{|language,hash2|
      hash2.each{|type,string|
        if !(test.include?(language))
          test << language
          new_hash[language] = {type => string, style: [] << orientation}
        else
          new_hash[language][:style] << orientation
        end
      }
    }
  }
  new_hash
end
