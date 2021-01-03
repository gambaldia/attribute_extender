#
# Sample extender class
class MaterialPlate
  EXTENDED_ATTRIBUTES = {
    width: { title: 'Width', data_type: Float, default: 1, format: "%2f" },
    height: { title: 'Height', data_type: Float, default: 1, format: "%2f" },
    thickness: { title: 'Thickness', data_type: Float, default: 1, format: "%2f" },
  }.freeze
  include AttributeExtenderModule
  extend  AttributeExtenderExtend

  def initialize(id)
    init(id, EXTENDED_ATTRIBUTES)
  end

  def size
    "W:#{@values[:width]} x H:#{@values[:height]} x L:#{@values[:thickness]}"
  end
end
MaterialPlate.define_methods(MaterialPlate::EXTENDED_ATTRIBUTES)
