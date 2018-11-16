require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Code Goes Here

Pry.start
