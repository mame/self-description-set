#!/usr/bin/env ruby

# usage: runghc gen.hs | ruby plot.rb

require "cairo"

cells = $<.read.scan(/\((-?\d+),(-?\d+)\)/).map {|x, y| [x.to_i, y.to_i] }

x_min, x_max = cells.map {|x, y| x }.minmax
y_min, y_max = cells.map {|x, y| y }.minmax

width = (x_max - x_min + 1) * 3 + 100
height = (y_max - y_min + 1) * 3 + 100
surface = Cairo::ImageSurface.new(width, height)
ctx = Cairo::Context.new(surface)

ctx.set_source_rgb(1, 1, 1)
ctx.rectangle(0, 0, width, height)
ctx.fill

ctx.translate(32, 100 - 32)
ctx.scale(3, -3)
ctx.translate(x_min, -y_max - 1)

ctx.set_source_rgb(0, 0, 0.5)
cells.each do |x, y|
  ctx.rectangle(x, y, 1, 1)
  ctx.fill
end

ctx.set_source_rgb(0, 0, 0)
ctx.line_width = 0.5
ctx.move_to(x_min - 12, 0)
ctx.line_to(x_max + 10, 0)
ctx.stroke
ctx.line_to(x_max +  7, -3)
ctx.line_to(x_max + 10,  0)
ctx.line_to(x_max +  7,  3)
ctx.stroke
ctx.move_to(0, y_min - 10)
ctx.line_to(0, y_max + 10)
ctx.stroke
ctx.line_to(-3, y_max +  7)
ctx.line_to( 0, y_max + 10)
ctx.line_to( 3, y_max +  7)
ctx.stroke

ctx.select_font_face("Raleway")
ctx.font_size = 8

e = ctx.text_extents("O")
ctx.move_to(-e.width - 3, -e.height - 3)
ctx.save do
  ctx.scale(1, -1)
  ctx.show_text("O")
end

e = ctx.text_extents("x")
ctx.move_to(x_max + 14, -e.height / 2)
ctx.save do
  ctx.scale(1, -1)
  ctx.show_text("x")
end

e = ctx.text_extents("y")
ctx.move_to(-e.width / 2, y_max + 14)
ctx.save do
  ctx.scale(1, -1)
  ctx.show_text("y")
end

ctx.line_width = 0.3
ctx.font_size = 5

ctx.move_to(x_max, 0)
ctx.line_to(x_max + 5, -5)
ctx.stroke
e = ctx.text_extents(x_max.to_s)
ctx.move_to(x_max + 6, -e.height - 6)
ctx.save do
  ctx.scale(1, -1)
  ctx.show_text(x_max.to_s)
end

ctx.move_to(0, y_max)
ctx.line_to(5, y_max + 5)
ctx.stroke
e = ctx.text_extents(y_max.to_s)
ctx.move_to(6, y_max + 6)
ctx.save do
  ctx.scale(1, -1)
  ctx.show_text(y_max.to_s)
end

ctx.move_to(0, y_min)
ctx.line_to(5, y_min - 5)
ctx.stroke
e = ctx.text_extents(y_min.to_s)
ctx.move_to(6, y_min - 6 - e.height / 2)
ctx.save do
  ctx.scale(1, -1)
  ctx.show_text(y_min.to_s)
end

surface.write_to_png("self-description-set.png")
