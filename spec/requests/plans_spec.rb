require 'rails_helper'

RSpec.describe 'Plans' do
  it 'returned successfully' do
    get plan_path('3423423')
    assert_response :success
  end
end
