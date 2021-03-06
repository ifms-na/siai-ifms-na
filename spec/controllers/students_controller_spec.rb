require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
  before(:each) do
    @user = FactoryBot.create(:user)
    @attr = FactoryBot.attributes_for(:student).merge({course_id: FactoryBot.create(:course).id})
    @model = FactoryBot.create(:student)
    @entity = 'Student'
    @path = students_path
  end

  include_examples "permission_controller"
end
