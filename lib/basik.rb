require "basik/version"

module Basik
  # Your code goes here...
  class BundledGem
    def initialize
      show_ruby_greeting
    end

    def show_ruby_greeting
      puts "hello from ruby"
    end
  end
end
