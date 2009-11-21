helpers do
  
  # Usage: partial :foo
  def partial(page, options={})
    erb page, options.merge!(:layout => false)
  end
  
end