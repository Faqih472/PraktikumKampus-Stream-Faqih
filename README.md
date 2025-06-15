📚 Flutter State Management dengan Streams Repositori ini berisi tugas-tugas praktikum Pemrograman Streams pada Flutter, berdasarkan materi perkuliahan Aplikasi Mobile Lanjutan.

🚀 Getting Started Proyek ini merupakan titik awal untuk memahami konsep Streams programming dalam Flutter. Setiap soal berisi penjelasan, cuplikan kode, serta hasil output berupa screenshot atau GIF.

📝 Daftar Soal

✅ Soal 1 
📸 Hasil:
![s1](https://github.com/user-attachments/assets/78023b51-5ab4-4816-a46e-b9475a253ce2)

✅ Soal 2
📸 Hasil:
![s2](https://github.com/user-attachments/assets/c7057329-992d-429a-b5ae-ebaac86416a6)

✅ Soal 3
1.  yield* merupakan delegating statement dalam konteks generator function. Secara singkat, fungsinya mirip seperti return, tetapi yield* meneruskan semua nilai dari generator lain, satu per satu, ke dalam aliran saat ini.
2.  Kode tersebut memerintahkan agar semua warna yang ada di dalam list diteruskan ke dalam stream satu per satu, dengan jeda 1 detik antar warna, secara berulang.

✅ Soal 4
📸 Hasil:
![s4](https://github.com/user-attachments/assets/bf298c1c-c53c-4ae0-9162-d7882feff70f)

✅ Soal 5
-Tidak ada perbedaan signifikan dalam fungsionalitas jika menggunakan .listen() tanpa async, karena .listen() tidak perlu ditunggu hasilnya. Namun, jika kita menggunakan await, seperti pada await for, maka fungsi tersebut harus ditandai sebagai async. Ini karena await hanya bisa digunakan di dalam fungsi async.

✅ Soal 6
-Langkah 8 (initState), untuk memuat data awal dari stream, mengatur koneksi stream, dan mendengarkan datanya agar UI bisa diperbarui setiap kali stream mengirim angka baru.
-Langka 10 (addRandomNumber), berfungsi untuk membuat angka random dengan batas maksimal 9, karena "random.nextInt(10)" menghasilkan angka dari 0 sampai kurang dari 10.
📸 Hasil:
![s6](https://github.com/user-attachments/assets/ab611b7c-c78b-47c8-afbf-c0e5c5bbe5b7)

✅ Soal 7
Langkah 13 (addError),berfungsi untuk mengirimkan error ke dalam stream. Ketika dipanggil, stream akan men-trigger listener-nya untuk menangani error tersebut melalui onError. Fungsi ini tidak berfungsi sebagai validator input, tetapi sebagai mekanisme pelaporan error dalam sistem stream.

Langkah 15 (Edit Method addRandomNumber), agar error bisa berfungsi maka perlu di uji dengan komentari 2 baris addNumberRandom

✅ Soal 8
Langkah 1 (initialized StreamTransformer), berfungsi untuk menginisialisasi variabel sebelum dibuat struktur function kode nya.

Langkah 2 (menambahkan variabel transformer => initState), berfungsi untuk memanipulasi data yg kemudian di ubah oleh "handleData", menangani eror "handleError", dan menutup sink saat stream selesai "handleDone".

Langkah 3 (Edit stream), berfungsi sebagai listener agar data yg sebelumnya telah dimanipulasi bisa ditampilkan
📸 Hasil:
![s8](https://github.com/user-attachments/assets/ef3925de-7dbc-45b3-8ab3-b6ee98221d75)

✅ Soal 9
Langkah 2 (subscription),untuk melakukan langganan (subscription) terhadap stream, sekaligus memproses data yang masuk. Stream tersebut dimanipulasi menggunakan transformer, lalu hasil akhirnya akan didengarkan oleh listen(). Di dalam listen, setiap data yang masuk akan diolah dan ditampilkan ke UI melalui setState.

Langkah 6 (dispose subscription.camcel), untuk menghentikan aliran data dan membersihkan sumber daya (resource) ketika widget sudah tidak aktif. numberStream.close() akan menutup StreamController, sedangkan subscription.cancel() akan menghentikan proses langganan terhadap stream. Ini penting untuk menghindari kebocoran memori (memory leak).

Langkah 8 (edit addRandomNumber), untuk menambahkan angka acak ke dalam stream. Jika StreamController masih terbuka (belum ditutup), maka angka akan dikirimkan ke stream. Namun, jika sudah ditutup, maka akan ditampilkan nilai -1 sebagai tanda bahwa data tidak bisa lagi dikirimkan.


📸 Hasil:
![s9](https://github.com/user-attachments/assets/b6e5acfa-0f1a-4047-8b77-29bde8f40e66)


