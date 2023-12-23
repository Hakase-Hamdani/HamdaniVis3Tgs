# Aplikasi Manajemen Surat Keluar

Homework only, not meant for production. The code is badly written, full of bad implementations and workaround, very, very insecure. Just all around a very bad code meant to score some scores for my college assignment.


> **modulDB.pas** : Modul koneksi.
> 
> **pasLogin.pas** : Modul untuk login.
> 
> **PasSignIn.pas** : Modul untuk mendaftar.
> 
>> **PasAdmin.pas** : Modul untuk pengguna level 'admin.'
>> 
>>> *FrxrepAdminUser* : Melihat daftar Staff dan Akun Terkait.
>>> *FrxrepSuratList* : Melihat daftar Surat keluar.
>>> 
>>> PasInputSurat.pas : Modul untuk input surat baru.
>>> 
>>>>> *FrxrepSurat* : Melihat surat yang akan di cetak.
>>>>> 
>>> PasUserAdmin.pas : Modul untuk manajemen user.
>>> 
>>> PasStafAdmin.pas : Modul untuk manajemen staf.
>>> 
>>>> *FrxrepDsStafView* : Melihat daftar Staf dan Divisinya.
>>>> 
>>> PasDivAdmin.pas : Modul untuk manajemen divisi.
>>> 
>>> PasTujuanAdmin.pas : Modul untuk manajemen tujuan surat.
>>>> *FrxrepTujuanView* : Melihat daftar Tujuan surat yang tersedia.
>>>> 
>>> PasKlasAdmin.pas : Modul untuk manajemen klasifikasi surat.
>>> 
>>> **pasRegUser.pas** : Modul untuk pengguna level 'user.'
>>>> PasTujuanAdmin.pas : Modul untuk manajemen tujuan surat.
>>>> PasInputSurat.pas : Modul untuk input surat baru.
>>>> 
>>>>> *FrxrepSurat* : Melihat surat yang akan di cetak.
>>>>> 