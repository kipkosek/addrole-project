require 'rails_helper'
require 'cancan/matchers'

describe Canard::Abilities, '#assistants' do
  let(:acting_assistant) { FactoryGirl.create(:user, :assistant) }
  subject(:assistant_ability) { Ability.new(acting_assistant) }

  describe 'on User' do
    let(:user) { FactoryGirl.create(:user) }

    it { is_expected.to be_able_to(:destroy, user) }
  end
  # on User
end
