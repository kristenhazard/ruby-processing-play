def setup
  @w = 750
  @h = 750
  @r = 30
  @g = 50
  @b = 100
  @cx = 400
  @cy = 400
  size 800, 800
  @transparency = 255
  background 255
  frame_rate 1
end

def draw
  #fill @r, @g, @b, @transparency
  fill 255, 255, 0, @transparency
  ellipse_mode CENTER
  ellipse @cx, @cy, @w, @h
  # first triangle
  point1x = (cos(radians(270))*@h/2) + @cx
  point1y = (sin(radians(270))*@h/2) + @cy
  point2x = (cos(radians(30))*@h/2) + @cx
  point2y = (sin(radians(30))*@h/2) + @cy
  point3x = (cos(radians(150))*@h/2) + @cx
  point3y = (sin(radians(150))*@h/2) + @cy
  
  fill 0, 0, 255, @transparency
  triangle point1x, point1y, point2x, point2y, point3x, point3y

  # delay 2000
  # second triangle
  point4x = (cos(radians(90))*@h/2) + @cx
  point4y = (sin(radians(90))*@h/2) + @cy
  point5x = (cos(radians(330))*@h/2) + @cx
  point5y = (sin(radians(330))*@h/2) + @cy
  point6x = (cos(radians(210))*@h/2) + @cx
  point6y = (sin(radians(210))*@h/2) + @cy
  fill 0, 0, 200, @transparency
  triangle point4x, point4y, point5x, point5y, point6x, point6y

  
  # second circle
  @scale_by = 0.3333333
  @cy = @cy - (@h - @h*@scale_by)/2
  @w = @w*@scale_by
  @h = @h*@scale_by
  @transparency -= 50
  #delay 2000
  # fill 255, 255, 255, 200
  # ellipse @cx, @cy2, @w2, @h2
end

def mouse_pressed
  no_loop
end

def mouse_released
  loop
end