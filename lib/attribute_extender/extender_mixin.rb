# 2021-01-03
#
# Mixins
#
module AttributeExtenderModule
  attr_accessor :values
  def init(id, attribs ={})
    @values = {}
    attribs&.each do |key, hash|
      @values[key] = hash[:default]
    end
    @values[:id] = id.to_i if id
  end

  def load_yaml(varchar)
    @values = YAML.load(varchar)
  end

  def to_yaml
    return unless @values
    YAML.dump(@values)
  end
  alias :serialize :to_yaml

  def id
    @values[:id]
  end
end

module AttributeExtenderExtend
  # Set all setters and getters for the attributes
  def define_methods(attribs)
    attribs.each do |key, hash|
      define_method "#{key}" do |value = nil|
        @values[key]
      end
      define_method "#{key}=" do |value = nil|
        @values[key] = value
      end
    end
  end
  # TODO support JSON format
  # load(string_from_database, id: id_if_override, format: :yaml|:json)
  def load(varchar, options = {})
    instance = self.new(options[:id]) # normally :id is nil, it is in the database
    instance.load_yaml(varchar) # yaml version
    instance
  end
end
