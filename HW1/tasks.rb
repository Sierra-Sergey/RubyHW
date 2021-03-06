array = [61, -5, 7, 78, -4, 187, 3, 0, 6, 8, 87, -5, 4, 95]

p '1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
p 'p (array.each_index.map { |i| array[i] if i.even? }).compact'
p 'p (array.each_index.map { |i| array[i] if i.odd? }).compact'
p (array.each_index.map { |i| array[i] if i.even? }).compact
p (array.each_index.map { |i| array[i] if i.odd? }).compact
p '--------------------------------------------------------'

p '2. Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
p 'p array.select.with_index { |e,i| e if i.odd? }'
p 'p array.select.with_index { |e,i| e if i.even? }'
p array.select.with_index { |e, i| e if i.odd? }
p array.select.with_index { |e, i| e if i.even? }
p '--------------------------------------------------------'

p '3. Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
p 'p array.index { |e| array[0] < e && e < array[-1] } || []'
p array.index { |e| array[0] < e && e < array[-1] } || []
p '--------------------------------------------------------'

p '4. Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
p 'p array.rindex { |e| array[0] < e && e < array[-1] } || []'
p array.rindex { |e| array[0] < e && e < array[-1] } || []
p '--------------------------------------------------------'

p '5. Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
p ' array.map.with_index { |e,i| i != 0 && i != (-1) && e.even? ? e + array[0] : e }'
p array.map.with_index { |e, i| i != 0 && i != (-1) && e.even? ? e + array[0] : e }
p '--------------------------------------------------------'

p '6. Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
p 'p array.map.with_index { |e, i| i != 0 && i != (-1) && e.even? ? e + array[-1] : e }'
p array.map.with_index { |e, i| i != 0 && i != (-1) && e.even? ? e + array[-1] : e }
p '--------------------------------------------------------'

p '7. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.'
p 'p array.map.with_index { |e,i| i != 0 && i != (-1) && e.odd? ? e + array[-1] : e }'
p array.map.with_index { |e, i| i != 0 && i != (-1) && e.odd? ? e + array[-1] : e }
p '--------------------------------------------------------'

p '8. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
p 'p [array[0]] + array[1...-1].map { |e| e.odd? ? e + array[0] : e } + [array[-1]]'
p [array[0]] + array[1...-1].map { |e| e.odd? ? e + array[0] : e } + [array[-1]]
p '--------------------------------------------------------'

p '9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
p 'p array.map { |e| e.positive? ? e = array.min : e }'
p array.map { |e| e.positive? ? array.min : e }
p '--------------------------------------------------------'

p '10. Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
p 'p array.map { |e| e.positive? ? e = array.max : e }'
p array.map { |e| e.positive? ? array.max : e }
p '--------------------------------------------------------'

p '11. Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
p 'p array.map { |e| e.negative? ? e = array.min : e }'
p array.map { |e| e.negative? ? array.min : e }
p '--------------------------------------------------------'

p '12. Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
p 'p array.map { |e| e.negative? ? e = array.max : e }'
p array.map { |e| e.negative? ? array.max : e }
p '--------------------------------------------------------'

p '13. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'
p 'p array.rotate(1)'
p array.rotate(1)
p '--------------------------------------------------------'

p '14. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
p 'p array.rotate(-1)'
p array.rotate(-1)
p '--------------------------------------------------------'

p '15. Дан целочисленный массив. Найти количество его локальных максимумов.'
p 'p array.each_index.select { |i|
  i > 0 && i < array.size - 1 && array[i] > array[i - 1] && array[i] > array[i + 1]
}.count'
p array.each_index.select { |i|
  i.positive? && i < array.size - 1 && array[i] > array[i - 1] && array[i] > array[i + 1]
}.count

# def local_max_amount array
#   array_new = array.each_index.select do |i|
#     i > 0 && i < array.size-1 && array[i] > array[i-1] && array[i] > array[i+1]
#   end
#   p array_new.size
# end
# p 'local_max_amount(array)'
# local_max_amount(array)
p '--------------------------------------------------------'

p '16. Дан целочисленный массив. Найти количество его локальных минимумов.'
def local_min_amount(array)
  array_new = array.each_index.select do |i|
    i.positive? && i < array.size - 1 && array[i] < array[i - 1] && array[i] < array[i + 1]
  end
  p array_new.size
end
p 'local_min_amount(array)'
local_min_amount(array)
p '--------------------------------------------------------'

p '17. Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
def max_local_max(array)
  array_new = []
  (1...array.size - 1).each do |e|
    array_new << array[e] if array[e] > array[e - 1] && array[e] > array[e + 1]
  end
  p array_new.max
end
p 'max_local_max(array)'
max_local_max(array)
p '--------------------------------------------------------'

p '18. Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
def min_local_min(array)
  array_new = []
  (1...array.size - 1).each do |e|
    array_new << array[e] if array[e] < array[e - 1] && array[e] < array[e + 1]
  end
  p array_new.min
end
p 'min_local_min(array)'
min_local_min(array)
p '--------------------------------------------------------'

p '19. Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наиболее близок к данному числу.'
array_float = [2.34, 7.34, 76.57, 45.8, 4.35, 2.93]
num_r = 28.43
def print_element_closest_to_num(array, num)
  array_new = array.map { |e| (e - num).abs }
  p array[array_new.index(array_new.min)]
end
p 'print_element_closest_to_num(array_float, num_R)'
print_element_closest_to_num(array_float, num_r)
p '--------------------------------------------------------'

p '20. Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наименее близок к данному числу.'
array_float = [2.34, 7.34, 76.57, 45.8, 4.35, 2.93]
num_r = 28.43
def print_element_least_close_to_num(array, num)
  array_new = array.map { |e| (e - num).abs }
  p array[array_new.index(array_new.max)]
end
p 'print_element_least_close_to_num(array_float, num_R)'
print_element_least_close_to_num(array_float, num_r)
p '--------------------------------------------------------'

p '21. Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.'
def first_el_before_positive_el
  p array = Array.new(10) { |_i| rand(-10..10) }
  array_new = array.each_index.find_all { |i| array[i].positive? }
  array_new.reverse.each do |e|
    array.insert(e, array[0])
  end
  p array
end
p 'first_el_before_positive_el'
first_el_before_positive_el
p '--------------------------------------------------------'

p '22. Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.'
def first_el_before_negative_el
  p array = Array.new(10) { |_i| rand(-10..10) }
  array_new = array.each_index.find_all { |i| array[i].negative? }
  array_new.each do |e|
    array.insert(e + array_new.index(e), array[0])
  end
  p array
end
p 'first_el_before_negative_el'
first_el_before_negative_el
p '--------------------------------------------------------'

p '23. Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.'
def first_el_after_positive_el
  p array = Array.new(10) { |_i| rand(-10..10) }
  array_new = array.each_index.find_all { |i| array[i].positive? }
  array_new.reverse.each do |e|
    array.insert(e + 1, array[0])
  end
  p array
end
p 'first_el_after_positive_el'
first_el_after_positive_el
p '--------------------------------------------------------'

p '24. Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент.'
def first_el_after_negative_el
  p array = Array.new(10) { |_i| rand(-10..10) }
  array_new = array.each_index.find_all { |i| array[i].negative? }
  array_new.reverse.each do |e|
    array.insert(e + 1, array[0])
  end
  p array
end
p 'first_el_after_negative_el'
first_el_after_negative_el
p '--------------------------------------------------------'

p '25. Дан целочисленный массив. Упорядочить его по возрастанию.'
p 'p array.sort'
p array.sort
p '--------------------------------------------------------'

p '26. Дан целочисленный массив. Упорядочить его по убыванию.'
p 'p array.sort.reverse'
p array.sort.reverse
p '--------------------------------------------------------'

p '27. Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.'
p 'p array.each_with_index.sort.reverse.map { |e, i| i }'
p array.each_with_index.sort.reverse.map { |_e, i| i }
p '--------------------------------------------------------'

p '28. Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'
p 'p array.each_with_index.sort.map { |e, i| i }'
p array.each_with_index.sort.map { |_e, i| i }
p '--------------------------------------------------------'

p '29. Дан целочисленный массив. Найти индекс минимального элемента.'
p 'p array.index(array.min)'
p array.index(array.min)
p '--------------------------------------------------------'

p '30. Дан целочисленный массив. Найти индекс максимального элемента.'
p 'p array.index(array.max)'
p array.index(array.max)
p '--------------------------------------------------------'

p '31. Дан целочисленный массив. Найти индекс первого минимального элемента.'
p 'p array.index(array.min)'
p array.index(array.min)
p '--------------------------------------------------------'

p '32. Дан целочисленный массив. Найти индекс первого максимального элемента.'
p 'p array.index(array.max)'
p array.index(array.max)
p '--------------------------------------------------------'

p '33. Дан целочисленный массив. Найти индекс последнего минимального элемента.'
p 'p array.rindex(array.min)'
p array.rindex(array.min)
p '--------------------------------------------------------'

p '34. Дан целочисленный массив. Найти индекс последнего максимального элемента.'
p 'p array.rindex(array.max)'
p array.rindex(array.max)
p '--------------------------------------------------------'

p '35. Дан целочисленный массив. Найти количество минимальных элементов.'
p 'p array.count(array.min)'
p array.count(array.min)
p '--------------------------------------------------------'

p '36. Дан целочисленный массив. Найти количество максимальных элементов.'
p 'p array.count(array.max)'
p array.count(array.max)
p '--------------------------------------------------------'

p '37. Дан целочисленный массив. Найти минимальный четный элемент.'
p 'p array.select { |e| e.even? }.min'
p array.select(&:even?).min
p '--------------------------------------------------------'

p '38. Дан целочисленный массив. Найти минимальный нечетный элемент.'
p 'p array.select(&:odd?).min'
p array.select(&:odd?).min
p '--------------------------------------------------------'

p '39. Дан целочисленный массив. Найти максимальный четный элемент.'
p 'p array.select(&:even?).max'
p array.select(&:even?).max
p '--------------------------------------------------------'

p '40. Дан целочисленный массив. Найти максимальный нечетный элемент.'
p 'p array.select(&:odd?).max'
p array.select(&:odd?).max
p '--------------------------------------------------------'

p '41. Дан целочисленный массив. Найти минимальный положительный элемент.'
p 'p array.select(&:positive?).min'
p array.select(&:positive?).min
p '--------------------------------------------------------'

p '42. Дан целочисленный массив. Найти максимальный отрицательный элемент.'
p 'p array.select(&:negative?).max'
p array.select(&:negative?).max
p '--------------------------------------------------------'

p '43. Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
interval = (2..6)
p 'p array.select { |e| interval.include?(e) }.min'
p array.select { |e| interval.include?(e) }.min
p '--------------------------------------------------------'

p '44. Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
interval = (2..6)
p 'p array.select { |e| interval.include?(e) }.max'
p array.select { |e| interval.include?(e) }.max
p '--------------------------------------------------------'

p '45. Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
p 'p array.index(array.min)'
p array.index(array.min)
p '--------------------------------------------------------'

p '46. Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
p 'p array.index(array.max)'
p array.index(array.max)
p '--------------------------------------------------------'

p '47. Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.'
p 'p array.size - (array.index(array.max) + 1)'
# p array[array.index(array.max)..array.size - 2].size
p array.size - (array.index(array.max) + 1)
p '--------------------------------------------------------'

p '48. Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального.'
p 'p array.size - (array.index(array.min) + 1)'
p array.size - (array.index(array.min) + 1)
p '--------------------------------------------------------'

p '49. Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным.'
p 'p array.rindex(array.max)'
p array.rindex(array.max)
p '--------------------------------------------------------'

p '50. Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным.'
p 'p array.rindex(array.min)'
p array.rindex(array.min)
p '--------------------------------------------------------'

p '51. Дан целочисленный массив. Найти количество элементов, расположенных после последнего максимального.'
p 'p array.size - (array.rindex(array.max) + 1)'
p array.size - (array.rindex(array.max) + 1)
p '--------------------------------------------------------'

p '52. Дан целочисленный массив. Найти количество элементов, расположенных после последнего минимального.'
p 'p array.size - (array.rindex(array.min) + 1)'
p array.size - (array.rindex(array.min) + 1)
p '--------------------------------------------------------'

p '53. Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента.'
p 'p array.index(array.find { |e| e == array.min || e == array.max })'
p array.index(array.find { |e| e == array.min || e == array.max })
p '--------------------------------------------------------'

p '54. Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.'
p 'p array.rindex(array.reverse.find { |e| e == array.min || e == array.max })'
p array.rindex(array.reverse.find { |e| e == array.min || e == array.max })
p '--------------------------------------------------------'

p '55. Дан целочисленный массив. Найти количество элементов, между первым и последним минимальным.'
p 'p array.rindex(array.min) - (array.index(array.min) + 1)'
p array.rindex(array.min) - (array.index(array.min) + 1)
p '--------------------------------------------------------'

p '56. Дан целочисленный массив. Найти количество элементов, между первым и последним максимальным.'
p 'p array.rindex(array.max) - (array.index(array.max) + 1)'
p array.rindex(array.max) - (array.index(array.max) + 1)
p '--------------------------------------------------------'

p '57. Дан целочисленный массив. Найти два наибольших элемента.'
p 'p array.max(2)'
p array.max(2)
p '--------------------------------------------------------'

p '58. Дан целочисленный массив. Найти два наименьших элемента.'
p 'p array.min(2)'
p array.min(2)
p '--------------------------------------------------------'

p '59. Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.'
p 'p array.select(&:even?)'
p 'p array.select(&:odd?)'
p array.select(&:even?)
p array.select(&:odd?)
p '--------------------------------------------------------'

p '60. Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.'
p 'p array.select(&:odd?)'
p 'p array.select(&:even?)'
p array.select(&:odd?)
p array.select(&:even?)
p '--------------------------------------------------------'

p '61. Дан целочисленный массив. Проверить, чередуются ли в нем четные и нечетные числа.'
array_rotate = [1, 2, 1, 2, 1, 2, 1, 2, 1]
def check_rotate_even_odd(array)
  bool = true
  (0..array.length - 2).each do |e|
    bool = array[e].even?
    return (p 'not rotate') if array[e + 1].even? == bool
  end
  p 'rotate'
end
p 'check_rotate_even_odd array_rotate'
check_rotate_even_odd array_rotate
p '--------------------------------------------------------'

p '62. Дан целочисленный массив. Проверить, чередуются ли в нем положительные и отрицательные числа.'
array_rotate = [1, -2, 1, 2, 1, -2, 1, -2, 1]
def check_rotate_positive_negative(array)
  bool = true
  (0..array.length - 2).each do |e|
    bool = array[e].positive?
    return (p 'not rotate') if array[e + 1].positive? == bool
  end
  p 'rotate'
end
p 'check_rotate_positive_negative array_rotate'
check_rotate_positive_negative array_rotate
p '--------------------------------------------------------'

p '63. Дано вещественное число R и массив вещественных чисел. Найти два элемента массива, сумма которых наиболее близка к данному числу.'
array_float = [2.34, 7.34, 76.57, 45.8, 4.35, 2.93]
num_r = 28.43
def sum_close_to_num(array, num)
  e1 = array[0]
  e2 = array[1]
  sum = (e1 + e2).abs
  diff = (num - sum).abs

  array.each_index do |i|
    i2 = i + 1
    while i2 < array.count
      sum = array[i] + array[i2]
      if (num - sum).abs < diff
        e1 = array[i]
        e2 = array[i2]
        diff = (num - sum).abs
      end
      i2 += 1
    end
  end
  p e1
  p e2
end
p 'sum_close_to_num(array_float, num_r)'
sum_close_to_num(array_float, num_r)
p '--------------------------------------------------------'

p '64. Дано вещественное число R и массив вещественных чисел. Найти два элемента массива, сумма которых наименее близка к данному числу.'
array_float = [2.34, 7.34, 76.57, 45.8, 14.35, 12.93]
num_r = 28.43
def sum_far_to_num(array, num)
  e1 = array[0]
  e2 = array[1]
  sum = (e1 + e2).abs
  diff = (num - sum).abs

  array.each_index do |i|
    i2 = i + 1
    while i2 < array.count
      sum = array[i] + array[i2]
      if (num - sum).abs > diff
        e1 = array[i]
        e2 = array[i2]
        diff = (num - sum).abs
      end
      i2 += 1
    end
  end
  p e1
  p e2
end
p 'sum_far_to_num(array_float, num_r)'
sum_far_to_num(array_float, num_r)
p '--------------------------------------------------------'

p '65. Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз.'
p array_r = [1, 2, 2, 6, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6]
p 'p array_r.reject { |e| array_r.count(e) < 2 }'
p array_r.reject { |e| array_r.count(e) < 2 }
p '--------------------------------------------------------'

p '66. Дан целочисленный массив. Удалить все элементы, встречающиеся более двух раз.'
p 'p array_r.reject { |e| array_r.count(e) > 2 }'
p array_r.reject { |e| array_r.count(e) > 2 }
p '--------------------------------------------------------'

p '67. Дан целочисленный массив. Удалить все элементы, встречающиеся ровно два раза.'
p 'p array_r.reject { |e| array_r.count(e) == 2 }'
p array_r.reject { |e| array_r.count(e) == 2 }
p '--------------------------------------------------------'

p '68. Дан целочисленный массив. Удалить все элементы, встречающиеся ровно три раза.'
p 'p array_r.reject { |e| array_r.count(e) == 3 }'
p array_r.reject { |e| array_r.count(e) == 3 }
p '--------------------------------------------------------'

p '69. Дан целочисленный массив. Найти среднее арифметическое модулей его элементов.'
p 'p array.map(&:abs).sum.to_f / array.length'
p array.map(&:abs).sum.to_f / array.length
p '--------------------------------------------------------'

p '70. Дан целочисленный массив. Найти среднее арифметическое квадратов его элементов.'
p 'p array.map { |e| e**2 }.sum.to_f / array.length'
p array.map { |e| e**2 }.sum.to_f / array.length
p '--------------------------------------------------------'

p '71. Дано целое число. Найти сумму его цифр.'
number = 38_473
def sum(num)
  array = []
  num.to_s.each_char { |e| array << e }
  p array.map(&:to_i).sum
end
p 'sum number'
sum number
p '--------------------------------------------------------'

# p 'Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять.'
# def qwert (array)
#   array.map do |e|
#     if e < 0
#       e**2
#     elsif e > 0
#       e**3
#     else
#       e = e
#     end
#   end
# end
# p qwert(array)
# p '--------------------------------------------------------'

# p 'Дан дипапазон a..b. Получить массив из чисел, расположенных в этом диапазоне (исключая сами эти числа), в порядке их возрастания, а также размер этого массива.'
# q = Array.new()
# d = 2..7
# for el in array.each_index
#   if el > 2 && el < 7
#     q << array[el]
#   end
# end
# p q.sort
# p q.size
# p '--------------------------------------------------------'

# p 'Дано число А и натуральное число N. Найти результат следующего выражения
# 1 + А + А*2 + А*3 + … + А*N.'
# a = 9
# n = 13
# ans = 0
# for num in 1..n
#   ans += a*num
# end
# ans += 1
# p ans
# p '--------------------------------------------------------'

# p 'Дано натуральное число N. Если N - нечетное, то найти произведение 1*3*…*N; если N - четное, то найти произведение 2*4*…*N.'
# ans = 1
# for num in 1..n
#   if n.even?
#     if num.even?
#       ans = ans * num
#     end
#   elsif n.odd?
#     if num.odd?
#       ans = ans * num
#     end
#   end
# end
# p ans
# p '--------------------------------------------------------'

# p 'Дан целочисленный массив и число К. Если существует элемент, меньший К, то вывести true; в противном случае вывести false.'
# k = 7
# p array.any? {|e| e < k }
#
# p '--------------------------------------------------------'
#
#
# p 'Дан целочисленный массив и число К. Если все элементы массива меньше К, то вывести true; в противном случае вывести false.'
# p array.all? {|e| e < k}
#
# p '--------------------------------------------------------'
#
#
# p 'Дан целочисленный массив и число К. Вывести количество элементов, меньших К.'
#
# p (array.find_all {|e| e > k }).size
# p '--------------------------------------------------------'
#
#
# p 'Дан целочисленный массив и число К. Вывести индекс первого элемента, большего К.'
#
# p array.index {|e| e > k}
# p '--------------------------------------------------------'
#
#
# p 'Дан целочисленный массив. Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел.'
#
# p array.each_index.find_all {|e| array[e] < array[e-1]}
# p (array.each_index.find_all {|e| array[e] < array[e-1]}).size
# p '--------------------------------------------------------'

# p 'Дан целочисленный массив. Найти максимальное количество подряд идущих минимальных элементов.'
# array = [1, 2, 2, 1, 1, 2, 1, 2, 2, 3]
# def max_count_min_elements_in_a_row array
#   first_index_interval = nil  # индекс первого элемента в интервале одинаковых значений подряд
#   last_index_interval = nil  # индекс последнего элемента в интервале одинаковых значений подряд
#   array_sizes_intervals = []   # массив размеров интервалов одинаковых значений подряд
#   array.each_index do |i|
#    if array[i] == array.min
#      if array[i] == array[i+1] && array[i] != array[i-1]
#        first_index_interval = i
#      elsif array[i] != array[i+1] && array[i] == array[i-1]
#        last_index_interval = i
#        array_sizes_intervals << (last_index_interval - first_index_interval + 1)
#      elsif array[i] != array[i+1] && array[i] != array[i-1]
#        array_sizes_intervals << 1
#      end
#    end
#   end
#   p array_sizes_intervals.size
#   p array_sizes_intervals.max
# end
# p 'max_count_min_elements_in_a_row array'
# max_count_min_elements_in_a_row array
# p '--------------------------------------------------------'

p '________________________________________________________________'
