#!/usr/bin/env ruby
# coding: utf-8
#
# Test script for AttributeExtender Mixin
# Execute this in the app root or in ./examples folder
#
APP_ROOT = File.dirname(__FILE__)
$LOAD_PATH << "#{APP_ROOT}"
$LOAD_PATH << "#{APP_ROOT}/examples"
$LOAD_PATH << "#{APP_ROOT}/../lib"
$LOAD_PATH << "#{APP_ROOT}/lib"
require "attribute_extender"
require "material_plate"
require "material_pipe"
require 'yaml'
# require 'pry'
# binding.pry

metal_plate = MaterialPlate.new(10001)
metal_pipe = MaterialPipe.new(10002)

metal_plate.width = 1000.0
metal_plate.height = 500.0
metal_plate.thickness = 2

metal_pipe.length = 1200.0

material_database = [ metal_plate, metal_pipe ]
material_database.each do |material|
  puts "#{material.id}: #{material.class}: #{material.size}"
end

serialized = metal_plate.to_yaml
p serialized
another_plate = MaterialPlate.load(serialized)
another_plate.thickness = 5
p another_plate