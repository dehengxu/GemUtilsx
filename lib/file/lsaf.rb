#!/usr/bin/ruby 
require File.expand_path('./XFileHelper.rb')

def ListSubFiles(dirname)
  #Fast list file recursivly
  @subf = Dir.glob(dirname+"/**/*").reject {|fn| File.directory?(fn)}

  @subf.each {
    |f|
    #Do something on single file.
    puts File.absolute_path(f)
  }

end

xf = XFileHelper.new("../")
puts xf.subfiles

# puts File.expand_path('../test', __FILE__)

if ARGV[0] == nil then
  puts "Please add dir param like :\n./lsaf.rb ./"
else
  ListSubFiles(ARGV[0])
end

