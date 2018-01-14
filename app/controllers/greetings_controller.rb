class GreetingsController < ApplicationController

skip_before_action :authenticate_user!
protect_from_forgery with: :null_session

  def hello
  	#@message = "Hello, how are you today?"


  	@user_name = params[:user_name]
	@password = params[:password]

	@employee = Employee.find_by(user_name: @user_name)

	if @employee.present?
		
		if @employee.password == @password
			#output = {'Login' => 'Done'}.to_json
			#render :json => output
			render :json => @employee
		else
			output = {"id": 0}.to_json
			render :json => output
			
		end

	else 
			output = {"id":0}.to_json
			render :json => output

	end


  end


  #def update_permit

 # 	@permit = Permit.find_by (filename: params[:filename])
  #	@pemit_details = Permitdetail.find_by permit_id: @permit.id

  #	render :plain => @permit_details["id"]

#  end

  	

  	def save_permit

		if params[:filename].blank?

			@query = "select count(permitid) as c from permits" # group by category_id having "+ params[:category_id].to_s

			@connection = ActiveRecord::Base.connection
			result = @connection.exec_query(@query)

			if result.blank? 
				query_val = 1.to_s
			else
				query_val = (result.first["c"]+1).to_s
			end


			cate_val = Category.find(params[:category_id])

	# you have to manually create permitid, filename, permit, permitdetailsid, filename, questiontext, commonquestiontext
	# need to run for loop for permitdetails 

			permit_id_value = "DSM-"+params[:site_id]+"-"+cate_val["category_id_s_name"].upcase+"-"+params[:employee_id]+"-"+ query_val
			filename_value = cate_val["category_id_s_name"].upcase + "-" + query_val


	  		@permitDB = Permit.new()

	  		@permitDB.permitid = permit_id_value
	  		@permitDB.filename = filename_value
	  		@permitDB.category_id = params[:category_id]
	  		@permitDB.site_id = params[:site_id]
	  		@permitDB.employee_id = params[:employee_id]
	  		
	  		@permitDB.permit = "Work to be done."


	  		strreply_array = params[:strreply].split('`')
	  		question_id_array = params[:question_id].split('`')
	  		reply_date_array = params[:reply_date].split('`')
	  		reply_time_array = params[:reply_time].split('`')

	  		


		  	if @permitDB.save
		  		# this id will be used to save in permit details in every row

		  		strreply_array.each_with_index do |item, index|
		  			permitdetailsid = permit_id_value+"-"+question_id_array[index]
		  			strrepy = item

		  			question_obj = Question.find(question_id_array[index])
					question_text = question_obj["question_text"]

					reply_date_val = reply_date_array[index]
					reply_time_val = reply_time_array[index]
		  			
		  			permit_id = @permitDB.id
		  			question_id = question_id_array[index]


		  			@permitdetailsDB = Permitdetail.new()
		  			
		  			@permitdetailsDB.permitdetail_id = permitdetailsid
		  			@permitdetailsDB.strreply = strrepy
		  			@permitdetailsDB.question_text = question_text
		  			@permitdetailsDB.permit_id = permit_id
		  			@permitdetailsDB.question_id = question_id

		  			@permitdetailsDB.reply_date = reply_date_val
		  			@permitdetailsDB.reply_time = reply_time_val

		  			@permitdetailsDB.save
	  				
				end

		  		

				render :plain => filename_value

		  		
		  	else
		  		render :plain => 0.to_s
		  		
		  	end

		else 

			# filename already exists hence required to update only
			permit_in_u = Permit.find_by(filename: params[:filename])

			permit_in_u_id = permit_in_u["id"]
			permit_in_u_permitidvalue = permit_in_u["permitid"]
			
			#pemitdetails_in_update = Permitdetail.where(permit_id: permit_update_id)

			Permitdetail.where(permit_id: permit_in_u_id).destroy_all

			strreply_array = params[:strreply].split('`')
	  		question_id_array = params[:question_id].split('`')

	  		strreply_array.each_with_index do |item, index|
		  			permitdetailsid = permit_in_u_permitidvalue+"-"+question_id_array[index]
		  			strrepy = URI.decode(item)
		  			question_obj = Question.find(question_id_array[index])

		  			question_text = question_obj["question_text"]
		  			
		  			permit_id = permit_in_u_id
		  			question_id = question_id_array[index]


		  			@permitdetailsDB = Permitdetail.new()
		  			
		  			@permitdetailsDB.permitdetail_id = permitdetailsid
		  			@permitdetailsDB.strreply = strrepy
		  			@permitdetailsDB.question_text = question_text
		  			@permitdetailsDB.permit_id = permit_id
		  			@permitdetailsDB.question_id = question_id

		  			@permitdetailsDB.save
	  				
				end

			render :plain => params[:filename].to_s

		end 

		

	  	

  	end


	def get_quizzes

		@questions = Question.order(:question_id).all

		render :json => @questions

	end


	def get_permit_numbers
		#render :json => Permit.select("category_id, (permitid) as p").group(:category_id)

		@query = "select count(permitid) as c from permits group by category_id having category_id = 1" #+ params[:cate_id].to_s

		@connection = ActiveRecord::Base.connection
		result = @connection.exec_query(@query)
		#render :plain => @result.first
		
		render :plain => result.first["c"]


		#Permit.group(:category_id).count.having("category_id=1")


	end


	def permit_params
      params.require(:permit).permit(:permitid, :filename, :category_id, :site_id, :employee_id)
    end



end
