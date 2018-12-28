class Entry < ActiveRecord::Base
  has_one :question, foreign_key: 'question_id'
end