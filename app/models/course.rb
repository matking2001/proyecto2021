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
class Course < ApplicationRecord
    extend FriendlyId
    friendly_id :titulo, use: :slugged
    has_many :lessons
end
