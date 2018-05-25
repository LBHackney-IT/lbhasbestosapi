require 'rails_helper'

RSpec.describe 'Inspections' do
  it 'returned successfully' do
    get inspection_path('3423423', token: ENV['SECRET_TOKEN'])
    assert_response :success
  end
end
