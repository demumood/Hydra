class Book < ActiveFedora::Base
  has_metadata 'descMetadata', type: BookMetadata
  include Hydra::ModelMixins::RightsMetadata
  has_metadata "rightsMetadata", :type => Hydra::Datastream::RightsMetadata
  has_many :pages, :property=> :is_part_of


  delegate :title, to: 'descMetadata', unique: true
  delegate :author, to: 'descMetadata', unique: true

end
