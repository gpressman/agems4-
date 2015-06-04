# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


forms = Form.create(label: "first_name", field_type: "text_field", information_type:  "applicant_information")
forms = Form.create(label: "last_name", field_type: "text_field", information_type: "applicant_information")
forms = Form.create(label: "street_address", field_type: "text_field", information_type: "pii")
forms = Form.create(label: "state", field_type: "text_field", information_type: "applicant_information")
forms = Form.create(label: "country", field_type: "text_field", information_type: "applicant_information")
forms = Form.create(label: "zip", field_type: "text_field", information_type: "applicant_information")
forms = Form.create(label: "social_security", field_type: "text_field", information_type: "pii")
forms = Form.create(label: "gender", field_type: "radio_button", information_type: "applicant_information")






