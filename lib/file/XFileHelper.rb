
class XFileHelper

  attr_accessor :rootPath
  attr_accessor :subfiles
  
  def initialize(path)
    @rootPath = path
    self.ListFiles
  end

  def ListFiles
    #ListSubFiles(@rootPath)
    @subfiles = XFileHelper.ListSubFiles(@rootPath)
  end
  
  def XFileHelper.ListSubFilesRescur(dirname)
    rtn = Array.new
    
    @subf = Dir.glob(dirname+"/*")
    @subf.each {
      |f|
      
      if File.directory?(File.absolute_path(f)) then
        rtn << ListSubFiles(File.absolute_path(f))
      else
        #Do something on single file in block.
        #puts File.absolute_path(f)
        yield f
        
      end
    }
    
    return rtn
  end
  
  def XFileHelper.ListSubFiles(dirname)
    #Fast list file recursivly
    @subf = Dir.glob(dirname+"/**/*").reject {|fn| File.directory?(fn)}

    @subf.each {
      |f|
      #Do something on single file in block
      yield f
    }
    return @subf
  end
    
end

