require "kamiyama_gem/version"

module KamiyamaGem
	# 生年月日と今の年月日から年齢を計算する
	def calc_years(my_birth="19880113")
		day = Time.now
		today_year = day.strftime("%Y")
		today = day.strftime("%m%d")
		my_year = my_birth[0, 4]
		my_day = my_birth[4, 4]
		if today.to_i > my_day.to_i then
			years = (today_year.to_i) - (my_year.to_i) 
		else
			years = (today_year.to_i) - (my_year.to_i) + 1	
		end
		print("あなたの年齢は#{years}歳です")
		# return years
	end
	# 身長と体重を入力して，BMIを出す
	def calc_bmi(height=150, weight=50)
		bmi = (weight/(height.to_f/100).to_f)/(height.to_f/100).to_f
		print("あなたのBMI指数は#{sprintf( "%.2f", bmi.to_f )}です")
		# return bmi.to_f
	end
	# 年齢から生まれた日の曜日を算出
	def calc_day(my_birth="19880113")
		date = Time.local(my_birth[0, 4].to_i,  my_birth[4, 2].to_i,  my_birth[6, 2].to_i)
		wdays = ["日", "月", "火", "水", "木", "金", "土"]
		
		print("あなたの生まれた日は#{wdays[date.wday]}曜日でした")
	end

	module_function :calc_years
	module_function :calc_bmi
	module_function :calc_day
end
