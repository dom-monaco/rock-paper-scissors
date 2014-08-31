RockPaperScissors::Application.routes.draw do
  post :throws, :controller => :signs, :action => :throws
  root :controller => :signs, :action => :index
end
