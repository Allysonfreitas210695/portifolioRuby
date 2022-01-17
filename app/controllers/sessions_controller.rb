class SessionsController < ApplicationController
  # redirencionar o usuario se show caso ele esteja logado!
  def new
    redirect_to user_path(current_user) if user_signed_in?
  end

  # aqui é da gem bcrypt que nos fornece essa funcao
  def create
    @user = User.find_by(email: params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      sign_in @user
      redirect_to user_path(@user), notice: 'Login com sucesso'
    else
      redirect_to entrar_path, notice: "Senha ou email incorreto, ou em branco!"
    end
  end
  
#  destroy a session do user
  def destroy 
    sign_out
    redirect_to entrar_path, notice: 'Usuário Precisar se Logar'
  end
end
