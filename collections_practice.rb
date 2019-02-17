require 'pry'
def begins_with_r(array)
  first_letter = []
  array.collect{|i| first_letter << i[0]}
  first_letter.all? {|i| i == "r"}
end

def contain_a(array)
  words_with_a = []
  array.collect do |i|
    if i.include?("a")
      words_with_a << i
    end
  end
  words_with_a
end

def first_wa(array)
  array.find{|i| i[0] == "w" && i[1] == "a" }
end

def remove_non_strings(array)
  array.delete_if{|i| i.class != String}
  array
end

def count_elements(array)
  hash_count = []
  array.each do |name|
    hash_count << {:count => array.count(name), :name => name[:name]}
  end
  return hash_count.uniq!
end

def merge_data(array1, array2)
  final_array = []
  array1.each do |person|
    first_name = person[:first_name]
    array2_ppl = array2[0]
    array2_person  = array2_ppl[first_name]
     mid_hash = {person, array2_person}
     final_array << mid_hash
  end
end

def find_cool(hashes)
  cool_hashes = {}
  hashes.each do |person|
    if person.include?("cool")
      cool_hashes << person
  end
end
  return cool_hashes
end
