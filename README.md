# Siz ne yapacaksınız?

Size düşen ise,

	~$ git clone git@github.com:seyyah/rails-twitter-bootstrap-sim.git
	~$ cd rails-twitter-bootstrap-sim/
	~$ git checkout ckeditor/
	~$ bundle
	~$ rake db:migrate
	~$ rake db:seed
	~$ rails s --binding=192.168.140.214 --port=3003

Test için

- yerelde: http://192.168.140.214:3003/

- herokuda: http://tbsim-v3.herokuapp.com/

Seed edilen kullanıcılar (ad:parola yetki),

        geek:secret         Read
        moderator:secret    Read + Create
        admin:secret        Read + Create + Update
        superadmin:secret   Read + Create + Update + Destroy

# Nasıl?

Komutlar,

      $ git checkout cancan-role/
      $ git checkout -b ckeditor
      $ vim Gemfile
      gem "ckeditor", :git => "git://github.com/galetahub/ckeditor.git"
      gem "carrierwave"
      gem "mini_magick"
      $ bundle

      $ mkdir public/javascripts

Bir bugdan dolayı bu klasör oluşturulması tavsiye olunuyordu [fxposter] fakat
yeterli olmadı. Elle daha önce çalıştığından emin olduğum depodan kopyalama
yaptım,

      $ cp -r CKEDITOR_CALISAN_DEPO/public/javascripts/ckeditor public/javascripts/

**hatalı**: ÇALIŞMADI/Düzeltildi [fxposter]

      X rails generate ckeditor:install
      X rails generate ckeditor:models --orm=active_record --backend=carrierwave

**Doğrusu**: [galetahub]

      $ rails generate ckeditor:install --orm=active_record --backend=carrierwave

      $ rake db:migrate

      $ vim app/views/layouts/application.html.erb
      <%= javascript_include_tag "/javascripts/ckeditor/ckeditor.js" %>
      $ vim app/views/questions/_form.html.erb
      <%= f.cktext_area :description %>

      $ rails s --binding=1.2.3.4 --port=3001

Testler

- yerelde: http://1.2.3.4:3001

- herokuda: http://tbsim-v3.herokuapp.com

Seed edilen kullanıcılar (ad:parola yetki),

    geek:secret         Read
    moderator:secret    Read + Create
    admin:secret        Read + Create + Update
    superadmin:secret   Read + Create + Update + Destroy

# Daha fazlası

- twitter-bootstrap + questions + auth + cancan + cancan-role:
  https://github.com/seyyah/rails-twitter-bootstrap-sim/blob/cancan-role/README.md

- ckeditor + carrierwave:
  https://github.com/seyyah/ckeditor-carrierwave/blob/master/README.rdoc

- How to build this app from scratch:
  https://github.com/fxposter/rails_3_1_with_ckeditor_and_carrierwave/blob/master/README.rdoc

- ckeditor + rails: https://github.com/galetahub/ckeditor
