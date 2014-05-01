require "basik/version"
require "basik/basik" # Native extension

module Basik
  # Your code goes here...
  class BundledGem
    def initialize
      puts show_ruby_greeting
      puts show_cext_greeting
    end

    def show_ruby_greeting
      "hello from ruby greeting"
    end
  end
end
