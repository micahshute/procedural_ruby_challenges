class Rectangle

    attr_accessor :top_left, :bottom_right

    def initialize(data)
        @top_left, @bottom_right = data[:top_left], [data[:top_left][0] + data[:dimensions][0], data[:top_left][1] - data[:dimensions][1]]
    end

    def max_y 
        @top_left[1]
    end

    def min_y
        @bottom_right[1]
    end

    def max_x
        @bottom_right[0]
    end

    def min_x
        @top_left[0]
    end

    ## These between the comments aren't really necessary bu they should probably exist
    ## in a rectangle class
    def width
        (@top_left[0] - @bottom_right[0]).abs
    end

    def height
        (@top_left[1] - @bottom_right[1]).abs
    end

    def area
        width * height
    end
    ### Now ending the unecessary but appropriate methods

    def intersection_area(rect)
        height_overlap = overlap(rect, :y)
        width_overlap = overlap(rect, :x)
        return height_overlap * width_overlap
    end

    private

    def overlap(rect, dimension)
        throw ArgumentError.new('dimeinson must be either :x or :y') unless (dimension == :x || dimension == :y)

        overlap_max = [self.send("max_#{dimension}"), rect.send("max_#{dimension}")].min
        overlap_min = [self.send("min_#{dimension}"), rect.send("min_#{dimension}")].max
        return 0 if overlap_min >= overlap_max
        return (overlap_max - overlap_min).abs
    end


end