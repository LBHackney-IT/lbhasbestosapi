require 'rails_helper'

RSpec.feature 'Viewing Asbestos Inspection' do
  scenario 'Viewing Inspection' do
    when_i_view_the_inspection
    then_i_should_see_the_inspection_data
  end

  private

  def when_i_view_the_inspection
    visit inspection_path('233453978', token: ENV['SECRET_TOKEN'])
  end

  def then_i_should_see_the_inspection_data
    expect(json).to include('inspection_data' => "Inspection data about 233453978")
  end

  def json
    JSON.parse(page.body)
  end
end
