require 'bio'

class Sequence < ActiveRecord::Base
  belongs_to :user

#  before_create :signup_allowed
  before_validation_on_create :identify_and_set_acid

  validates_presence_of     :data, :message => "You must enter some sequence"
  validates_presence_of     :acid, :message => "We could not determine the sequence type. You either have too little data or a character is not recogonized. If this our problem please let contact us."  
  
  def bio
    Bio::Sequence.new(self.data)
  end

  protected
  def identify_and_set_acid
    self.acid = Bio::Sequence.new(self.data).guess.to_s
  end
end