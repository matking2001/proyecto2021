# == Schema Information
#
# Table name: courses
#
#  id          :uuid             not null, primary key
#  descripcion :text
#  slug        :string
#  titulo      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_courses_on_slug  (slug) UNIQUE
#
require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
