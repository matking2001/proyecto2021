# == Schema Information
#
# Table name: courses
#
#  id          :uuid             not null, primary key
#  descripcion :text
#  titulo      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
