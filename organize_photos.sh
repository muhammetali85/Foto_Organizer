#!/bin/bash

# Hedef dizin (resimlerin organize edileceği yer Target_dır "" arasını değitirin)
TARGET_DIR="/media/disk/tarih_sirali"
UNKNOWN_DIR="$TARGET_DIR/Bilinmeyen_Tarih"

# Dizin kontrolü, eğer yoksa oluştur
mkdir -p "$TARGET_DIR"
mkdir -p "$UNKNOWN_DIR"

# Tüm .jpg, .jpeg ve .png dosyalarını bulma ve sayma
photo_count=$(find /media/muhammet/maa -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) 2>/dev/null | wc -l)

# İşlemleri başlat
if [ "$photo_count" -eq 0 ]; then
    echo "Hiç fotoğraf bulunamadı. Lütfen dizini kontrol edin."
    exit 1
fi

echo "Toplam $photo_count fotoğraf bulundu. İşlem başlıyor..."

# İşlem sayacı
i=0
copied_photos=0

# Her fotoğraf için döngü
find /media/muhammet/maa -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) 2>/dev/null | while read -r photo; do
    # Çekim tarihini al
    date_taken=$(exiftool -d "%Y-%m-%d" -DateTimeOriginal -s -s -s "$photo" 2>/dev/null)

    if [ -n "$date_taken" ]; then
        # Tarihe göre klasör oluştur
        folder_name="$TARGET_DIR/$date_taken"
        mkdir -p "$folder_name"
        
        # Fotoğrafın bir kopyasını ilgili klasöre taşı
        cp "$photo" "$folder_name/"
        echo "Kopyalandı: $photo -> $folder_name/"
        copied_photos=$((copied_photos + 1))
    else
        echo "Tarih alınamadı, bilinmeyen tarihe kopyalanıyor: $photo"
        cp "$photo" "$UNKNOWN_DIR/"
        copied_photos=$((copied_photos + 1))
    fi

    # İlerleme çubuğu
    i=$((i + 1))
    progress=$(( (i * 100) / photo_count ))
    echo -ne "İlerleme: $progress%\r"
done

echo -e "\nKopyalanan toplam fotoğraf sayısı: $copied_photos"
echo "Tüm işlemler başarıyla tamamlandı."
echo "Bitti."
