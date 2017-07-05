require 'rails_helper'

descripe Image do
  it { should validate_presence_of :name}
  it { should validate_presence_of :description}
end
