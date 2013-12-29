require 'spec_helper'

describe Organization do

  before do
    @organization = create(:organization)
    @user = create(:user)
    @member = create(:member, :user_id => @user.id, :organization_id => @organization.id)
  end
  it 'should has_many members' do
    @organization.members.should == [@member]
    #@organization.users.should == [@user]
  end
end
