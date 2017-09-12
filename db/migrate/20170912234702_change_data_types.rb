class ChangeDataTypes < ActiveRecord::Migration[5.1]
	
  def change
  	change_column(:questions, :question_text, :text)
  	change_column(:questions, :options, :text)

  	change_column(:commonquestions, :question_text, :text)
  	change_column(:commonquestions, :options, :text)


  	change_column(:permitdetails, :strreply, :text)
  	change_column(:permitdetails, :question_text, :text)
  	change_column(:permitdetails, :commonquestion_text, :text)

  end
end
