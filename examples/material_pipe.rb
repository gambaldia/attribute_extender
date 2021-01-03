#
# Sample extender class
class MaterialPipe
  EXTENDED_ATTRIBUTES = {
    outer_diameter: { title: 'Outer Diameter', data_type: Float, default: 10, format: "%2f" },
    inner_diameter: { title: 'Inner Diameter', data_type: Float, default: 8, format: "%2f" },
    length:         { title: 'Thickness', data_type: Float, default: 100, format: "%2f" },
  }.freeze
  include AttributeExtenderModule
  extend  AttributeExtenderExtend

  def initialize(id)
    init(id, EXTENDED_ATTRIBUTES)
  end

  def size
    "OD:#{@values[:outer_diameter]} x ID:#{@values[:inner_diameter]} x L:#{@values[:length]}"
  end
end
MaterialPipe.define_methods(MaterialPipe::EXTENDED_ATTRIBUTES)
