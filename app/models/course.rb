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
class Course < ApplicationRecord
    has_many :lessons
end