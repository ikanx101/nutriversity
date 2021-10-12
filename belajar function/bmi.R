# kita akan buat fungsinya
# function di R, 3 elemen:
  # 1. Input: boleh ada, boleh tidak
  # 2. Proses
  # 3. Output: single, multiple.

# fungsi pertama
hitung_bmi = function(bb,tb){
  # cara berhitung
  bmi = bb / (tb/100)^2
  # membulatkan angka bmi
  bmi = round(bmi,1)
  # proses output
  return(bmi)
}

# fungsi kedua
hitung_bmi_v2 = function(bb,tb){
  # cara menghitung BMI menggunakan function yang pertama
  bmi = hitung_bmi(bb,tb)
  # output berupa pesan
  pesan = paste0("BMI anda adalah: ",bmi)
  return(pesan)
}

# fungsi ketiga
hitung_bmi_v3 = function(){
  bb = readline(prompt = "Masukkan berat badan: ")
  tb = readline(prompt = "Masukkan tinggi badan: ")
  bb = as.numeric(bb)
  tb = as.numeric(tb)
  # cara menghitung BMI menggunakan function yang pertama
  bmi = hitung_bmi(bb,tb)
  # output berupa pesan
  pesan = paste0("BMI anda adalah: ",bmi)
  return(pesan)
}
