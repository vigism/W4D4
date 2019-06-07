# == Schema Information
#
# Table name: albums
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  year       :integer          not null
#  live       :boolean
#  band_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ApplicationRecord  

  belongs_to :band,
    foreign_key: :band_id,
    class_name: :Band

end
