=begin
it 'reformats ruby properly' do
  ruby = {:type => "interpreted", :style => [:oo]}
  ruby.each { |k,v| expect(result[:ruby][k]).to eq(v) }
end
=end

def reformat_languages(languages)
  new_hash ={}
  languages.each do |style, language|
    language.each do |name, type|
      if new_hash.has_key?(name)
        new_hash[name][:style] << style
      else
        new_hash[name] = type
        new_hash[name][:style] = [style]
      end
    end
  end
  new_hash
end
