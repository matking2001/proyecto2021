# == Schema Information
#
# Table name: posts
#
#  id          :uuid             not null, primary key
#  descripcion :text
#  slug        :string
#  titulo      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :uuid
#
# Indexes
#
#  index_posts_on_slug     (slug) UNIQUE
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Post < ApplicationRecord
  belongs_to :user
end
