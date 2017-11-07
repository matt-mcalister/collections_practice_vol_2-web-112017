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
    hash.each do |name, value|
      if !(result.any? {|el| el.values.include?(value)})
        result << {name: value, count: 1}
      else
        result.each do |el|
          if el.values.include?(value)
            el[:count] += 1
          end
        end
      end
    end
  end
  result
end

def merge_data(keys,values)
  result = []
  keys.each do |hash|
    hash.each do |first, name|
      values.each do |subhash|
        subhash.each do |name2, subdata|
          if name == name2
            result_hash = {first => name}
            subdata.each do |descriptor, stat|
              result_hash[descriptor] = stat
            end
            result << result_hash
          end
        end
      end
    end
  end
  result
end

def find_cool(cool)
  result = []
  cool.each do |hash|
    hash.each do |k,v|
      if v == "cool"
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
