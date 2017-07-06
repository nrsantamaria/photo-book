require 'rails_helper'

describe User do
  it { should have_many :images}
  it { should validate_presence_of :username }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should have_attached_file(:avatar) }
  it { should validate_attachment_presence(:avatar) }
  it { should validate_attachment_content_type(:avatar).
               allowing('image/png', 'image/gif').
               rejecting('text/plain', 'text/xml') }
end
