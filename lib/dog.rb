require 'pry'

class Dog < ActiveRecord::Base
  # attr_accessor :name, :text

  def initialize(attributes)
    super(attributes)
  end


  def self.create(row)
    Dog.new(row)
  end

  def self.save
    self.save
  end

  def self.update(info)
    self.update(info)
  end

  def self.find_or_create_by(info)

    result =  Dog.find_by_name(info[:name])
    if result == nil
      result = Dog.new(info)
    end
    # binding.pry

  end

  def self.find_by_name(name)
    Dog.find_by(name:name)

  end

  def self.find_by_id(id)
    Dog.find(id)

  end

end
