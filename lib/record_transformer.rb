require 'byebug'
require 'CSV'

class RecordTransformer
  attr_accessor :source_file_location, :destination_file_location
  def initialize(source_file, destination_file)
    @source_file_location=source_file
    @destination_file_location=destination_file
  end

  def csv_count
    csv_data = CSV.parse(File.read(@source_file_location), headers: true)
    csv_data.size
  end
end