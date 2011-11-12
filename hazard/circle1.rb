# let's draw a circle



def setup
  size 600, 200
  background(127)
  @radius = 100
  @angle2 = 0
  @frequency2 = 2
  @frequency = 2
  @angle = 0
  @x = 0
end

def draw
  background 127
  no_stroke
  fill(255)
  


  
  #ellipse(width/8, 75, @radius, @radius)
  
  px = width/8 + cos(radians(@angle))*(@radius/2)
  py = 75 + sin(radians(@angle))*(@radius/2)
  ellipse px, py, 5, 5
  @angle -= @frequency
  
  #stroke 100
  #line width/8, 75, px, py
  #stroke 200
  
  #@angle2 = 0
  
  # for i in 0..width
  #   px2 = width/8 + cos(radians(@angle2))*(@radius/2)
  #   py2 = 75 + sin(radians(@angle2))*(@radius/2)
  #   point(width/8+@radius/2+i, py2)
  #   @angle2 -= @frequency2
  # end
  

  
  # no_stroke
  # ellipse(width/8+@radius/2+@x, py, 5, 5)
  
  # @x += 1
end