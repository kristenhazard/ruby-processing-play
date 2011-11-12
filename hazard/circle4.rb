# draw a circle within a circle within a circle
# keep it anchored at top
def setup
  size 500, 500
  background 51
  @scale_by = 1
  @w = 250
  @h = 250
  @r = 30
  @g = 50
  @b = 100
  @cx = 250
  @cy = 250
end

def draw
  fill @r, @g, @b
  ellipse_mode CENTER
  ellipse @cx, @cy, @w, @h
  @scale_by -= 0.1
  @r += 10
  @g += 10
  @b += 10
  @cy -= (@h - @h*@scale_by)/2
  @w = @w*@scale_by
  @h = @h*@scale_by
  delay(500)
end