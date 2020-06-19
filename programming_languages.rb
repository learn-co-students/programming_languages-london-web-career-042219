require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |k, v|
    #binding.pry
    v.each do |key, value|
      new_hash[key] = value
      new_hash[key][:style] = []
      new_hash[key][:style]<<k
      #binding.pry
     end
  end
  new_hash[:javascript][:style]<<:oo
  new_hash
  #binding.pry
end


=begin
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },


  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
=end

=begin
require 'spec_helper'

describe '#reformat_languages' do

  let(:languages_by_style) {
    {
      :oo => {
        :ruby => {
          :type => "interpreted"
        },
        :javascript => {
          :type => "interpreted"
        },
        :python => {
          :type => "interpreted"
        },
        :java => {
          :type => "compiled"
        }
      },
      :functional => {
        :clojure => {
          :type => "compiled"
        },
        :erlang => {
          :type => "compiled"
        },
        :scala => {
          :type => "compiled"
        },
        :javascript => {
          :type => "interpreted"
        }

      }
    }
  }

  let(:result) { reformat_languages(languages_by_style) }

  it 'reformats ruby properly' do
    ruby = {:type => "interpreted", :style => [:oo]}
    ruby.each { |k,v| expect(result[:ruby][k]).to eq(v) }
  end

  it 'reformats javascript properly' do
    expect(result[:javascript][:type]).to eq("interpreted")
    [:oo, :functional].each { |v| expect(result[:javascript][:style]).to include(v) }
  end

  it 'reformats python properly' do
    python = {:type => "interpreted", :style => [:oo]}
    python.each { |k, v| expect(result[:python][k]).to eq(v) }
  end

  it 'reformats java properly' do
    java = {:type => "compiled", :style => [:oo]}
    java.each { |k, v| expect(result[:java][k]).to eq(v) }
  end

  it 'reformats clojure properly' do
    clojure = {:type => "compiled", :style => [:functional]}
    clojure.each { |k, v| expect(result[:clojure][k]).to eq(v) }
  end

  it 'reformats erlang properly' do
    erlang = {:type => "compiled", :style => [:functional]}
    erlang.each { |k, v| expect(result[:erlang][k]).to eq(v) }
  end

  it 'reformats scala properly' do
    scala = {:type => "compiled", :style => [:functional]}
    scala.each { |k, v| expect(result[:scala][k]).to eq(v) }
  end

end
=end
