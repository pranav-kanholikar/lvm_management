class RegistrationsController < Devise::RegistrationsController
    
      private
    
      def sign_up_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :phone_no, :role, :address, :active, :date_of_birth)
      end
    
      def account_update_params
        params.require(:user).permit(:first_name, :last_name, :phone_no, :role, :address, :active, :date_of_birth)
      end
    end