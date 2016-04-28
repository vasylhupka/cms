class ContactsController < ApplicationController

  def create
    if UserMailer.contact_message(params[:message], params[:email], params[:name] ).deliver
      flash.now[:notice] = 'Дякуємо за повідомлення'
      redirect_to :back
    else
      flash.now[:error] = 'Не вдалось надіслати повідомлення'
      redirect_to :back
    end
  end
end
