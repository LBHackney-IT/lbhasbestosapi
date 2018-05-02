require 'rails_helper'

RSpec.describe 'Inspections' do
  it 'returned successfully' do
    get inspection_path('3423423')
    assert_response :success
  end
end
