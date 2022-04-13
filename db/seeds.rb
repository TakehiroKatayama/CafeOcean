User.create!(name: '管理者', email: 'admin@example.com', phonenumber: '0700000000', password: 'test1111', password_confirmation: 'test1111', role: 1)
puts '管理者のテストデータ挿入'

10.times do |i|
  sun = Date.today + i * 7 + 3
  mon = Date.today + i * 7 + 4
  tue = Date.today + i * 7 + 5
  wed = Date.today + i * 7 + 6
  thu = Date.today + i * 7
  fri = Date.today + i * 7 + 1
  sat = Date.today + i * 7 + 2
  # データを投入する曜日によって+の後ろの数字を変える(当日の曜日が+なし)

  Capacity.create(start_time: sun, status: 'closed')
  Capacity.create(start_time: mon, status: 'closed')
  Capacity.create(start_time: tue)
  Capacity.create(start_time: wed)
  Capacity.create(start_time: thu)
  Capacity.create(start_time: fri)
  Capacity.create(start_time: sat)
end
puts 'Capacityのテストデータ挿入'
