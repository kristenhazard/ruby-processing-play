# draw a circle within a circle within a circle
def setup
  size 500, 500
  background 51
  @scale_by = 1
  @w = 250
  @h = 250
  @r = 30
  @g = 50
  @b = 100
end

def draw
  #scale @scale_by
  #push_matrix
  #translate 250*(1-@scale_by), -250*(1-@scale_by)
  fill @r, @g, @b
  ellipse_mode CENTER
  ellipse 250, 250, @w, @h
  @scale_by -= 0.01
  @w = @w*@scale_by
  @h = @w*@scale_by
  @r += 10
  @g += 10
  @b += 10
  #pop_matrix
  delay(500)
end