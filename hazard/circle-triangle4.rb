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
  frame_rate 33
  @deg = 0
  @first_triangle = true
end

def draw
  fill 255, 200, 0, @transparency
  
  if @deg < 360
    draw_circle 
  elsif @first_triangle
    # first triangle
    point1x = (cos(radians(270))*@h/2) + @cx
    point1y = (sin(radians(270))*@h/2) + @cy
    point2x = (cos(radians(30))*@h/2) + @cx
    point2y = (sin(radians(30))*@h/2) + @cy
    point3x = (cos(radians(150))*@h/2) + @cx
    point3y = (sin(radians(150))*@h/2) + @cy
  
    fill 0, 0, 255, @transparency
    triangle point1x, point1y, point2x, point2y, point3x, point3y
    @first_triangle = false
    delay 2000
  else
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
    @deg = 0
    @first_triangle = true
  end
  
end

def draw_circle
  # draw the circle
  no_stroke
  smooth
  radius = @h/2
  angle = radians(@deg)
  x = @cx + (cos(angle) * radius)
  y = @cy + (sin(angle) * radius)
  ellipse x, y, 6, 6
  @deg += 1
end

def mouse_pressed
  no_loop
end

def mouse_released
  loop
end