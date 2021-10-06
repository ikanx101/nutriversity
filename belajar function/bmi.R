# kita akan buat fungsinya
# function di R, 3 elemen:
  # 1. Input: boleh ada, boleh tidak
  # 2. Proses
  # 3. Output: single, multiple.

hitung_bmi = function(bb,tb){
  # cara berhitung
  bmi = bb / (tb/100)^2
  # membulatkan angka bmi
  bmi = round(bmi,1)
  # proses output
  return(bmi)
}

