# Given two rectangles on a 2D graph, return the area of their intersection. 
#If the rectangles don't intersect, return 0. For example, given the following rectangles:
# { top_left: [1, 4], dimensions: [3, 3] # width, height } and
# { top_left: [0, 5], dimensions: [4, 3] # width, height } return 6.

def intersection_area(r1, r2)
    r1_maxy, r1_miny, r1_maxx, r1_minx = get_dimensions(r1)
    r2_maxy, r2_miny, r2_maxx, r2_minx = get_dimensions(r2)
    height_overlap = get_1d_overlap([r1_maxy, r1_miny], [r2_maxy, r2_miny])
    width_overlap = get_1d_overlap([r1_maxx, r1_minx],[r2_maxx, r2_minx])
    return height_overlap * width_overlap
end


def get_1d_overlap(max_min1, max_min2)
    overlap_max = [max_min1[0], max_min2[0]].min
    overlap_min = [max_min1[1], max_min2[1]].max
    return 0 if overlap_min >= overlap_max
    return (overlap_max - overlap_min).abs
end

def get_dimensions(rect)
    ymax, ymin = rect[:top_left][1], rect[:top_left][1] - rect[:dimensions][1]
    xmax, xmin = rect[:top_left][0] + rect[:dimensions][0], rect[:top_left][0]
    return [ymax, ymin, xmax, xmin]
end


r1 = { top_left: [1, 4], dimensions: [3, 3] }
r2 = { top_left: [0, 5], dimensions: [4, 3] } 
# Should return 6

r3 = { top_left: [1,3], dimensions: [1,1] }
r4 = { top_left: [3,4], dimensions: [1,3] }
# Should return 0

r5 = { top_left: [2,-2], dimensions: [1,1] }
r6 = { top_left: [1,-1], dimensions: [3,4] }
# Should return 1

r7 = { top_left: [-4,-1], dimensions: [2,2] }
r8 = { top_left: [-3,-2], dimensions: [2,2] }
# should return 1

r9 = { top_left: [1,3], dimensions: [1,1] }

require_relative './rectangle'

rect1 = Rectangle.new(r1)
rect2 = Rectangle.new(r2)
rect3 = Rectangle.new(r3)
rect4 = Rectangle.new(r4)
rect5 = Rectangle.new(r5)
rect6 = Rectangle.new(r6)
rect7 = Rectangle.new(r7)
rect8 = Rectangle.new(r8)
rect9 = Rectangle.new(r9)

# With r3 should return 1
puts "Functional Tests"
puts intersection_area(r1, r2) == 6 ? "Pass" : "Fail"
puts intersection_area(r3, r4) == 0 ? "Pass" : "Fail"
puts intersection_area(r5, r6) == 1 ? "Pass" : "Fail"
puts intersection_area(r7, r8) == 1 ? "Pass" : "Fail"
puts intersection_area(r9, r3) == 1 ? "Pass" : "Fail"
puts
puts "OOP Tests"
puts rect1.intersection_area(rect2) == 6 ? "Pass" : "Fail"
puts rect3.intersection_area(rect4) == 0 ? "Pass" : "Fail"
puts rect5.intersection_area(rect6) == 1 ? "Pass" : "Fail"
puts rect7.intersection_area(rect8) == 1 ? "Pass" : "Fail"
puts rect9.intersection_area(rect3) == 1 ? "Pass" : "Fail"

############################## With OOP ###########################################

