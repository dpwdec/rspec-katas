class CapacityChecker
  
  class InvalidFileCapacityError < StandardError
  end
  
  class InvalidInputFile < StandardError
  end
  
  def initialize(file_sizes: [-1], capacity: -1)
    @files = file_sizes
    @capacity = capacity
  end
  
  def storage_check
    if !capacity_valid? 
      raise InvalidFileCapacityError, "Storage capacity #{@capacity} is invalid. Storage capacity must be greater than 0."
    end
    
    if !valid_files?
      raise InvalidInputFile.new("Input file size is invalid. File size must be greater than 0")
    end
    
    stored = 0
    stored_size = 0
    @files.sort.each do |size|
      stored_size += size
      break if stored_size > @capacity
      stored += 1
    end
    return stored
  end
  
  def capacity_valid?
    @capacity > 0
  end
  
  def valid_files?
    @files.each do |size|
      if size <= 0 
        return false
      end
    end
    return true
  end
end