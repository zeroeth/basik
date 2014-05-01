require "basik/version"

module Basik
  # Your code goes here...
  class BundledGem
    def initialize
      show_ruby_greeting
      show_cext_greeting
    end

    def show_ruby_greeting
      puts "hello from ruby greeting"
    end
  end
end
