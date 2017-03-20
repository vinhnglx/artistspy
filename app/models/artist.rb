# == Schema Information
#
# Table name: artists
#
#  id            :integer          not null, primary key
#  spotify_id    :string
#  external_urls :string
#  genres        :text             default("{}"), is an Array
#  href          :string
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Artist < ApplicationRecord
  # Validations
  validates :spotify_id, :name, :href, :external_urls, presence: true
  validates :spotify_id, :href, :external_urls, uniqueness: true
end
