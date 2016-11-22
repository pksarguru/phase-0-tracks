highway = {
  car1: ['Jack', 'Jill'],
  car2: ['Anish', 'Priya'],
  car3: ['Nehru'],
  car4: ['Thurgood', 'Marshall', 'Coates', 'Simone']

}

p highway[:car2][1]
p highway['car3'.to_sym]
# p highway[car4.to_s.to_sym][3]

highway[:car3].push('Khan')
p highway[:car3]

highway2 = {
  'car1' => ['Jack', 'Jill'],
  'car2' => ['Anish', 'Priya'],
  'car3' => ['Nehru'],
  'car4' => ['Thurgood', 'Marshall', 'Coates', 'Simone']

}

p highway2['car2'][1]
p highway2[:car3.to_s.to_sym.to_s]

highway2['car3'].push('Khan')
p highway2['car3']

