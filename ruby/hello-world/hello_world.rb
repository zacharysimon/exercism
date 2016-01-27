class HelloWorld
  def self.hello(input)
    name = input 
    if !!name  
      "Hello, #{input}!"
    else "Hello, World!"
    end
  end
end