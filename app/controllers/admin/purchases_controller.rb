class Admin::PurchasesController < Admin::AdministrationController
	def destroy
		purchase = Purchase.find(params[:id])
		purchase.uptade_attributes(staus: 'cancelled')
	end
end
