json.array! @users do |user|
  json.id user.id
  json.first_nm user.first_nm
  json.last_nm user.last_nm
  json.age user.age
  json.gender user.gender
end
