def setup
  @w = 400
  @h = 400
  @r = 30
  @g = 50
  @b = 100
  @cx = 400
  @cy = 400
  size @w*2, @h*2
  background 51
  
  
  
  fill @r, @g, @b
  ellipse_mode CENTER
  ellipse @cx, @cy, @w, @h
  
  # first triangle
  point2x = (cos(radians(30))*@h/2) + @w
  point2y = (sin(radians(30))*@h/2) + @h
  point3x = (cos(radians(150))*@h/2) + @w
  point3y = (sin(radians(150))*@h/2) + @h
  # puts "X=#{point2x}"
  # puts "Y=#{point2y}"
  
  
  #fill 255, 255, 255
  #ellipse @w, @h/2, 5, 5
  # blue point
  #fill 0, 255, 255
  #ellipse point2x, point2y, 5, 5
  # yellow point
  
  #ellipse point3x, point3y, 5, 5
  
  # second triangle
  point5x = (cos(radians(330))*@h/2) + @w
  point5y = (sin(radians(330))*@h/2) + @h
  point6x = (cos(radians(210))*@h/2) + @w
  point6y = (sin(radians(210))*@h/2) + @h
  fill 255, 255, 0
  triangle @w, @h+@h/2, point5x, point5y, point6x, point6y
  fill 0, 0, 255
  triangle @w, @h/2, point2x, point2y, point3x, point3y
  
  # second circle
  @scale_by = 0.3333333
  @cy2 = @cy - (@h - @h*@scale_by)/2
  @w2 = @w*@scale_by
  @h2 = @h*@scale_by
  fill 255, 255, 255, 200
  ellipse @cx, @cy2, @w2, @h2
end

def draw

end