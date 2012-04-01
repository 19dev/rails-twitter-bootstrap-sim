# Siz ne yapacaksınız?

Size düşen ise,

	~$ git clone git@github.com:seyyah/rails-twitter-bootstrap-sim.git
	~$ cd rails-twitter-bootstrap-sim
	~$ git checkout tbsim-v1-bootswatch
	~$ bundle
	~$ rake db:migrate

stilinizi seçin, örnek `superhero` durumu için,

	$ vim app/assets/stylesheets/bootstrap_and_overrides.css.less
	// stiller: amelia cerulean cyborg  journal  readable  simplex slate
	// spacelab  spruce  superhero  united
	@import "superhero/bootswatch";
	@import "superhero/variables";

farklı stiller için deneme yapabilirsiniz.

sunucuyu başlat,

	~$ rails s --binding=192.168.140.214 --port=3003

Test için

- yerelde: http://192.168.140.214:3003/questions

# Nasıl?

talep edilen bootswatch'lar app/assets/stylesheets/ klasörü altına çekildi.

bootstrap_and_overrides.css.less dosyasında import edildi,

	$ vim app/assets/stylesheets/bootstrap_and_overrides.css.less
	// stiller: amelia cerulean cyborg  journal  readable  simplex  slate
	// spacelab  spruce  superhero  united
	@import "united/bootswatch";
	@import "united/variables";

Burada örnek olarak `united` kullanıldı siz diğer stilleri de deneyebilirsiniz.

# Kaynaklar

- http://bootswatch.com/#gallery
- https://github.com/maxim/bootswatch-rails
