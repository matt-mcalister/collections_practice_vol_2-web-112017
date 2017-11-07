require "pry"

def begins_with_r(array)
  array.all? {|el| el.downcase.start_with?("r")}
end

def contain_a(array)
  array.select {|el| el.downcase.include?("a")}
end

def first_wa(array)
  array.find {|el| el.to_s.downcase.start_with?("wa")}
end

def remove_non_strings(array)
  array.reject! {|el| el.class != String}
end

def count_elements(array)
  result = []
  array.each do |hash|
    sub_hash = {}
    hash.each do |name, value|
      if result.empty?
        sub_hash = {name => value, :count => 1}
        result << sub_hash
      else
        result.each do |subhash|
          if subhash.values.include?(value)
            subhash[:count] += 1
          else
            sub_hash = {name => value, :count => 1}
            result << sub_hash
          end
        end
      end
    end
  end
result
end

def merge_data(keys,values)
end

def find_cool(cool)
  result = []
  cool.each do |hash|
    hash.each do |k,v|
      if v.include?("cool")
        result << hash
      end
    end
  end
  result
end

def organize_schools(schools)
  result = {}
  school_name = nil
  schools.each do |school,data|
    school_name = school
    data.each do |key, location|
      if result[location].class == Array
        result[location] << school_name
      else
        result[location] = [school_name]
      end
    end
  end
  result
end
