

# class Dog

#     attr_accessor :age, :name

#     def self.new_puppy(name)
#         new(name, 0)
#     end

#     def initialize(name, age)
#         self.name = name
#         @age = age
#     end


#     def walk
#         puts "#{self.name} is walking!"
#     end




# end

# cricket = Dog.new("cricket", 6)
# new_puppy = Dog.new_puppy("Cricket Jr.")

# puts cricket.name


# my_hash = {:firstname => "Micah"}

# # Access a value via a key
# # var = my_hash[:firstname]

# # # Setting a new key/value pair
# # my_hash[:lastname] = "Shute"
# # puts my_hash

# # #Check to see if a key exists in a hash

# # if my_hash[:no_key]
# #     puts "Key is in hash"
# # else
# #     puts "Key does not exist"
# # end


# # def self.artist_count
# #     artist_count = {}
# #     @@artists.each do |track_no|
# #         if artist_count[track_no]
# #             artist_count[track_no] += 1
# #         else
# #             artist_count[track_no] = 1
# #         end
# #     end
# #     artist_count
# # end



# class Human

#     attr_reader :name

#     def initialize(name)
#         @name = name
#     end

#     def name=(name)
#         @name = name
#     end

# end


# janice = Human.new("Janice")
# janice.name = "Supergirl"
# puts janice.name




# class Human
    
#     @@count = 0

#     def self.count
#         @@count
#     end

#     def initialize(name)
#         @name = name
#         @@count += 1
#     end


#     def name
#         @name
#     end

#     # @@count = 5

# end

# micah = Human.new("Micah")
# puts Human.count



# def square_array(a)
#     new_arr = []
#     a.each do |el|
#         new_arr << el ** 2
#     end
#     return new_arr
# end 

# test_arr = [1,2,3,4]
# my_output = square_array(test_arr)


# dog = Dog.find_by_name("Fido")

# # if dog && dog.name == "Fido"
# a = 6
# b = 5
# a = a || b

