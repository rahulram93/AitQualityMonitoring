# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

AirQualityIndex.create([
  { category: "Good",  start_index: 0,  end_index: 50, color: "#00B459"}, 
  { category: "Satisfactory", start_index: 51, end_index: 100, color: "#90D462"},
  { category: "Moderate", start_index: 101, end_index: 200, color: "#F7FF5B"},
  { category: "Poor", start_index: 201, end_index: 300, color: "#FC9A48"},
  { category: "Very Poor", start_index: 301, end_index: 400, color: "#FC003C"},
  { category: "Severe", start_index: 401, end_index: 500, color: "#BE002B" }
])
