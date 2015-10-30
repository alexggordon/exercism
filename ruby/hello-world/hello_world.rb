#!/usr/bin/env ruby

class HelloWorld
  def self.hello name=nil
    # Ternary. Print Hello world if name, or hello #{name} if args.
    name.nil? ? "Hello, World!" : "Hello, #{name}!"
  end
end
