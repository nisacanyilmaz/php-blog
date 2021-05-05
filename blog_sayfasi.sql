-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 May 2020, 01:06:35
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog_sayfasi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa`
--

CREATE TABLE `anasayfa` (
  `id` int(11) NOT NULL,
  `foto` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ustIcerik` varchar(6000) COLLATE utf8_turkish_ci NOT NULL,
  `link` char(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `anasayfa`
--

INSERT INTO `anasayfa` (`id`, `foto`, `ustBaslik`, `ustIcerik`, `link`) VALUES
(1, 'work-731198_1920.jpg', 'Hoşgeldin!', '<p>Bu sitede <i>Yazılım ve Kodlama</i> ile ilgili ihtiyacın olan birçok yazı bulabilirsin. Yazılara daha kolay erişebilmen için şimdiye kadarki bütün yazılar yukarıdaki<i><strong> Blog </strong></i>butonunda. Daha fazla bilgiye, tavsiyeye veya fikre ihtiyacın olan konu başlığını seçip hemen şimdi okumaya başlayabilirsin. Eğer hoşuna giden bir yazı olursa çekinmeden aşağıdaki iletişim bölümünden geribildirim vermen ve beğendiğin yazıyı arkadaşlarınla paylaşman benim için önemli. Ziyaretin için teşekkürler!</p>', 'Senin İçin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `baslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`id`, `baslik`, `ustBaslik`, `icerik`) VALUES
(9, 'PHP Nedir?', 'Nisa\'s Blog', '<p>PHP Web Tabanlı, nesne yönelimli bir programlama dilidir. Eskiden Personal Home Page (PHP) yani ‘Kişisel Anasayfa’ iken şimdilerde PHP: Hypertext Preprocessor olarak kullanıma devam edilmektedir. PHP, dinamik, kendi kendine yönetilebilir web siteleri yapılmasını sağlar. İlk olarak 1995te aslen Danimarkalı ancak Kanadada yaşayan bir yazılımcı Rasmus Lerdorf tarafından yaratılan PHP\'nin geliştirilmesi bugün PHP topluluğu tarafından sürdürülmektedir.</p><p><i><strong>PHP ile Neler Yapılır ve Kullanım Alanları ?</strong></i></p><p>PHP gibi bir web tabanlı programlama dili ile ve hızla geliştirilen web browser(tarayıcı,google chrome, internet explorer, mozilla firefox, opera vb..) sayesinde artık hayal edebildiğimiz herşeyi yapabiliriz. PHP ile basit bir blog sitesinden tutun da, Arama motoru, Facebook, Twitter, Wordpress, Joomla ve online oyunlar gibi geliştirilen ve sürekli gelişime devam edebilen web siteleri yapabilmek mümkündür.</p><p><i><strong>PHP Veritabanları ve Veritabanları İlişkileri</strong></i></p><p>PHP\'nin en güçlü ve en çok üstünde durulan özelliklerinden biri, sahip olduğu geniş ve gelişmiş veritabanı desteğidir. Veritabanlarına özgü eklentilerden birini (örn. mysql) kullanarak veya PDO gibi bir soyutlama katmanı kullanarak PHP ile veritabanı bağlantılı site sayfaları oluşturmak ya da ODBC eklentisi üzerinden bu standardı destekleyen bir bağlantı açmak son derece basittir. Diğer veritabanları için cURL eklentisi veya soketler (CouchDB gibi) kullanılabilir.Ufak yönetilebilir web siteleri için ise en sağlıklısı ‘MYSQL’ veritabanıdır. Bir kaç php komutu ve fonksiyonları ile hızlı bağlantı sağlanılabilir. Database kurgusu ve yapısı doğru hazırlandığı sürece gayet hızlı, verimli sonuçlar verir. MySQL\'de temel (ve genel) olarak yaptığımız işlemler bir tabloya veri eklemek, bu verileri çekmek, güncellemek ve silmektir.</p><p><i><strong>PHP’nin Faydaları ve Avantajları Nelerdir ?</strong></i></p><p>Php açık kaynak kodlu bir programlama dili olduğu için gelişimine herkes katkıda bulunur ve sürekli gelişirilir. PHP aslında linux tabanlıdır. Ancak sanal sunucu sayesinde tüm sunucularda sorunsuz çalışır. Herkes tarafından geliştirilip ve destek verildiği için kaynak sıkıntısı cekmezsiniz. Facebook, google, instagram, twitter gibi ünlü internet şirketlerinin API destekleri sayesinde kendi bilgileniri kullanmana olanak sağlar. Yardımcı sınıflar sayesinde bir çok dosya formatlarını okuma ve üzerinde işlemler yapılabilmesine güçlü imkanlar. Github sayesinde bir çok geliştirici ile birlikte yeni ve büyük projeler geliştirebilir. Geliştirmek istediğiniz projeye örnek projeler bulup yeni fikirler edinilebilinir. Composer, php için bağımlılık yönetim araçıdır. Projeleriniz de ihtiyaç duyduğunuz kütüphaneleri ve sınıfları sizin için kurmanızı sağlar. Composerda veriler json olarak saklanır ve paketleri oluşturulması json olarak sağlanır. Composer sayesin tüm paketler ve sınıflar kolayca otomatik yüklenir.&nbsp;</p>'),
(8, 'phpMyAdmin Nedir?', 'Nisa\'s Blog', '<p>PhpMyAdmin, php ile yazılmış, açık kaynak kodlu, web tabanlı bir veritabanı yönetim yazılımıdır. Başlıca kullanım alanı internet üzerinden mySQL veritabanı yönetimidir. Veritabanı oluşturma ve silme, tablo ekleme/değiştirme/silme, alan ekleme/değiştirme/silme, SQL sorguları çalıştırma, kullanıcıları, yetkileri ve alan anahtarlarını yönetme gibi işlevleri pratik ve hızlı bir şekilde yapabilen ücretsiz bir yazılımdır.</p><p>&nbsp;</p><p>İlk sürümünün hemen ardından döneminin en popüler PHP uygulamalarından biri olmayı başaran<i> <strong>PhpMyAdmin</strong></i>, kısa sürede büyük bir kullanıcı ve geliştirici kitlesinin ilgisini çekti. Daha sonra bir geliştirici grubu tarafından SourceForge\'te phpMyAdmin projesini oluşturup, 2001 yılında geliştirme işini üstlendiler. Şu anda toplam 62 farklı dili destekleyen phpMyAdmin\'i aşağıdaki bağlantılardan indirip kurabilirsiniz.</p>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` int(11) NOT NULL,
  `foto` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `foto`, `ustBaslik`, `baslik`, `icerik`) VALUES
(1, 'laptop-1209008_640.jpg', 'Nisa Canyılmaz', 'Hakkımda', '<p>Ben Nisa Canyılmaz. Kırıkkale Üniversitesi 3.sınıf Bilgisayar Mühendisliği öğrencisiyim. Amacım bildiklerimi ve öğrendiklerimi sizlere en etkili şekilde aktarmak. Hayatımı yazılıma adamış biri olarak PHP,JavaScript,C#,Python ve daha nice kodlama dilinde yaptığım projeleri ve öğrendiğim bilgileri paylaşacağım. Aynı zamanda bilgisayar mühendisliği temel konuları olan algoritma, big data, siber güvenlik alanlarında bilgi paylaşacağım.</p>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `kadi` char(50) NOT NULL,
  `parola` char(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kadi`, `parola`) VALUES
(17, 'ışık', 'f8f4bb66a4546384abdedf81e48fdaf4'),
(15, 'nisa', '105a9a2d46f64e147097c986076d2164');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `anasayfa`
--
ALTER TABLE `anasayfa`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `anasayfa`
--
ALTER TABLE `anasayfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
