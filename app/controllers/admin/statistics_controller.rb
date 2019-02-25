class Admin::StatisticsController < Admin::AdministrationController

	def index
		@purchases = Purchase.all
	end

end