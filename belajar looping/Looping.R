# belajar looping 
bilangan = 1000

# saya ingin bilangan dibagi 2 terus menerus

# =======================================================
# for itu khusus looping dengan batasan iterasi DIKETAHUI
for(i in 0:20){
  print(paste0("iterasi ke ",i,
               " menghasilkan: ",bilangan))
  bilangan = bilangan / 2
}

# while digunakan jika kita tidak tahu batasan iterasi
# kita hanya tahu kondisi yang diharapkan
# saya akan bagi 2 bilangannya,
  # tapi akan stop saat bilangan < 4

bilangan_new = 1000
i = 0
while(bilangan_new > 2){
  print(paste0("iterasi ke ",i,
               " menghasilkan: ",bilangan_new))
  bilangan_new = bilangan_new / 2
  i = i + 1
}