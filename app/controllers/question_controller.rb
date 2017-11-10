class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @name = params[:name]
    @content = params[:ask]
    
    
    # if params[:who] == "1"
    #   @name = "익명"
    # else
    #   @name
    # end
    
    Question.create(
      name: @name,
      content: @content
    )

    redirect_to :back #뒤로 돌아감
  end
  
  def sign_up
    
  end
  
  def sign_up_process
    @email = params[:email]
    @name = params[:name]
    @password = params[:password]
    
    User.create(
      email: @email,
      name: @name,
      password: @password
    )
    
  end
  
  def login
  end
  
  def login_process
    @email = params[:email]
    @password = params[:password]
    @message = ""
    
    
    #유저인증
    user = User.find_by(email: @email)
    # 유저 없으면 nil값 들어가있음
    # 해당하는 email을 가진 유저가 있다면
    if user
      if user.password == @password
        session[:user_email] = user.email
        redirect_to '/'
      else
        @message = "비밀번호가 틀렸어"
      end
    else
      @message = "가입하지 않았거나 이메일이 틀렸어"
    end
  end
  
  def logout
    session.clear
    redirect_to '/'
  end
  
end
