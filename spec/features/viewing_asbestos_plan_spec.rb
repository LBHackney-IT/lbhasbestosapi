require 'rails_helper'

RSpec.feature 'Viewing Asbestos Plan' do
  scenario 'Viewing a Plan' do
    when_i_view_a_plan
    then_i_should_see_the_pdf_path
  end

  private

  def when_i_view_a_plan
    visit plan_path('233453978')
  end

  def then_i_should_see_the_pdf_path
    expect(json).to include('pdf_path' => 'https://example.com/my.pdf?233453978')
  end

  def json
    JSON.parse(page.body)
  end
end
