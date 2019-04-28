## LayeredArchitecture.NetCore

![Resim 1](https://github.com/mertcanaksoy/LayeredArchitecture.NetCore/blob/master/Ritmus/Ritmus.ShoppingCart.MvcWebUI/Assets/img/1.jpg)<br/>
![Resim 2](https://github.com/mertcanaksoy/LayeredArchitecture.NetCore/blob/master/Ritmus/Ritmus.ShoppingCart.MvcWebUI/Assets/img/2.jpg)<br/>
![Resim 3](https://github.com/mertcanaksoy/LayeredArchitecture.NetCore/blob/master/Ritmus/Ritmus.ShoppingCart.MvcWebUI/Assets/img/3.jpg)
<br/>

### PROJE HAKKINDA
Proje .Net Core teknolojisi kullanılarak katmanlı mimari ile tasarlandı. Katmanlar sırasıyla Ritmus.Core, Ritmus.ShoppingCart.Entities, Ritmus.ShoppingCart.DAL, Ritmus.ShoppingCart.BLL, Ritmus.ShoppingCart.MvcWebUI.<br/>
Ritmus.Core, temel katmandır. Bundan sonra oluşturulan katmanların isimlendirmesi proje bazlı olarak (ShoppingCart) devam etmiştir.<br/>
Ritmus.ShoppingCart.Entities katmanında veritabanı nesneleri bulunmaktadır.<br/>
Ritmus.ShoppingCart.DAL katmanı, Insert, Update, Delete gibi veritabanı komutlarının çalıştırıldığı katmandır.<br/>
Ritmus.ShoppingCart.BLL katmanı, İş kurallarının kodlandığı ve süreçlerinin yönetildiği katmandır.<br/>
Ritmus.ShoppingCart.MvcWebUI katmanı son kullanıcının kullanımına sunulan arayüz katmanıdır.<br/>

### ÖNEMLİ NOT: 
Ürünler, veritabanında depolandığı için proje ilk açıldığında ürünlerin listelenebilmesi adına ekte verilen .sql uzantılı scriptin çalıştırılıp veritabanı tablolarının ve tabloların içindeki verilerin oluşturulması gerekmektedir.
