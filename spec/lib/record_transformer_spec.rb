require 'record_transformer'
RSpec.describe RecordTransformer do
  let(:source_file) { File.join(File.dirname(__FILE__), '../fixtures/guide_card_fixture.csv')}
  let(:destination_file) { File.join(File.dirname(__FILE__), '../fixtures/destination_fixture.json')}
  let(:rt) {RecordTransformer.new(source_file, destination_file)}
  it 'can instantiate' do
    expect(rt).to be_instance_of RecordTransformer 
  end

  it 'has a source file' do
    expect(rt.source_file_location).to eq source_file 
  end

  it 'reads data from the CSV file' do
    expect(rt.csv_count).to eq 11
  end

  it 'has a destination file' do
    expect(rt.destination_file_location).to eq destination_file 
  end

  it 'writes json out' do
  end
end