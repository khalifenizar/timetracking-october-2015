class Entry < ActiveRecord::Base
  belongs_to :project

  validates(:hours, { numericality: true })
  validates(:minutes, { numericality: true })

  validates(:date, { presence: true })
  validates(:hours, { presence: true })
  validates(:minutes, { presence: true })

  validates(:project_id, { presence: true })
end
