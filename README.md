Bu Script Ne İşe Yarıyor?
Bu araç, bilgisayarınızdaki resimleri şu şekilde düzenliyor:

Tarihe Göre Ayırma: Resimlerin çekim tarihini okuyor ve her tarih için ayrı bir klasör oluşturuyor.
Bilinmeyen Tarihler: Tarih bilgisi olmayan resimleri “Bilinmeyen Tarih” adlı bir klasöre koyuyor.
Otomatik Kopyalama: Tüm resimleri ilgili klasörlere kopyalıyor. Orijinalleriniz zarar görmüyor.
Kimler Kullanabilir?
Bilgisayarında düzeni seven herkes!
Özellikle fotoğraflarını organize etmek isteyenler.
Teknik bilgi gerektirmez; adımları takip etmeniz yeterli.
Başlamadan Önce İhtiyacınız Olanlar
Bir Linux veya Ubuntu İşletim Sistemi:
exiftool Aracı: Bu, resimlerin çekim tarihini okumamızı sağlayan bir araç. Kurmak için şunu yapabilirsiniz: sudo apt install libimage-exiftool-perl
Biraz sabır ve heyecan!

Script’i Çalıştırmaya Hazırlayın
Kaydettiğiniz dosyayı çalıştırılabilir hale getirmek için şu komutu yazın:

chmod +x organize_photos.sh
 Script’i Çalıştırın
Artık script’i çalıştırabilirsiniz! Sadece şu komutu yazın:

./organize_photos.sh
 Sonuçlara Göz Atın
İşlem tamamlandığında, tüm resimleriniz tarih sırasına göre klasörlere ayrılmış olacak.
Tarih bilgisi olmayan dosyalar “Bilinmeyen Tarih” klasöründe toplanacak.
Bu Script Neden Faydalı?
Zamandan Tasarruf: Tek tek resimlerinizi tarih bazında ayırmak yerine her şeyi otomatik yapıyor.
Düzenli Arşiv: Yıllardır biriken fotoğraflarınız artık daha düzenli olacak.
Hızlı Kullanım: Kullanması oldukça kolay. Birkaç komutla işinizi hallediyorsunuz.
Sıkça Sorulan Sorular
1. Script hangi tür dosyaları düzenliyor?
JPEG (.jpg, .jpeg) ve PNG (.png) dosyalarını düzenler. Diğer formatları da eklemek isterseniz, find komutuna bu uzantıları ekleyebilirsiniz.

2. Orijinal dosyalarıma bir şey olur mu?
Hayır, script yalnızca dosyalarınızın bir kopyasını oluşturur. Orijinallere hiçbir şey olmaz.

3. Hedef dizini değiştirebilir miyim?
Tabii ki! Yukarıdaki kodda TARGET_DIR kısmını istediğiniz bir klasöre göre düzenleyebilirsiniz.

Hepsi bu kadar! Umarım bu araç size yardımcı olur. Eğer takıldığınız bir yer olursa, yorumlarda bana ulaşabilirsiniz.

Not: Bu script, doğru bir şekilde kullanıldığında sorunsuz çalışacaktır. Ancak, düzenleme veya kullanım hatalarından kaynaklanabilecek veri kaybı ya da diğer sorunlar tamamen kullanıcının sorumluluğundadır. Bu yüzden, işlemlere başlamadan önce önemli verilerinizin yedeğini almayı unutmayın. Scriptin çalışma süresi; fotoğrafların sayısına, dosya boyutlarına ve bilgisayarınızın işlem gücüne bağlı olarak değişiklik gösterebilir. Büyük dosyalar ve daha fazla fotoğraf, işlem süresini uzatabilir, bu nedenle sabırlı olmanızı öneririz.
