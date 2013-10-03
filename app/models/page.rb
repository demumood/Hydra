class Page < ActiveFedora::Base
  has_metadata 'descMetadata', type: PageMetadata
  has_file_datastream "pageContent"
  
  belongs_to :book, :property=> :is_part_of
  
  delegate :number, to: 'descMetadata', unique: :true
  delegate :text, to: 'descMetadata', unique: :true
  
end

