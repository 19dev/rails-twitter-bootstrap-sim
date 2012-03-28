# Siz ne yapacaksınız?

Size düşen ise,

	~$ git clone git@github.com:seyyah/rails-twitter-bootstrap-sim.git
	~$ cd rails-twitter-bootstrap-sim/
	~$ git checkout cancan/
	~$ bundle
	~$ rake db:migrate
	~$ rails s --binding=192.168.140.214 --port=3003

Test için

- yerelde: http://192.168.140.214:3003/questions

- herokuda: http://tbsim-v1.herokuapp.com/questions

# Nasıl?
Kullanılan komutlar,

	~$ rails new rails-twitter-bootstrap-sim
	~$ cd rails-twitter-bootstrap-sim/

	~$ vim Gemfile
	gem 'execjs'
	gem 'therubyracer'
	group :assets do
		...
		gem 'twitter-bootstrap-rails'
	end

	~$ bundle
	~$ git init
	~$ git add .
	~$ git commit -a -m ilk

	~$ rails g scaffold question title:string type:string media:string description:text question:string options:text answer:string --skip-stylesheets
	~$ git add .
	~$ git commit -a -m scaffold

	~$ rake db:migrate
	~$ git add .
	~$ git commit -a -m migrate

	~$ rails g bootstrap:install
	~$ git add .
	~$ git commit -a -m "boostrap:install"

	~$ rails g bootstrap:themed questions -f
	~$ git add .
	~$ git commit -a -m "bootstrap:themed"

	~$ vim app/views/layouts/application.html.erb
	seyhunak'dan alıntı
	~$ git add .
	~$ git commit -a -m layout

	~$ vim app/assets/stylesheets/bootstrap_and_overrides.css.less
	body { padding-top: 60px; }
	~$ git commit -a -m css

Can't mass-assign protected attributes: type ile ilgili üretilen hatayı çözmek
için (TODO/FIXME: ileride bunu STI da düzelteceğiz)

	~$ vim app/models/question.rb
	def self.attributes_protected_by_default
		# default is ["id","type"]
		["id"]
	end
	~$ git commit -a -m model

	~$ vim Gemfile
	group :development, :test do
		gem 'sqlite3'
	end
	group :production do
		gem 'pg', '0.12.2'
	end
	~$ git commit -a -m bugfix:sqlite3

	~$ bundle
	~$ git add .
	~$ git commit -a -m pg-bundle

`type` sütun ismi sorun çıkartmaya devam ediyor. Çözmek için geçici olarak
rename ediyoruz,

	~$ rails generate migration TypeColumnRename
	~$ vim db/migrate/...type_column_rename.rb
	def up
		rename_column :questions, :type, :qtype
	end
	~$ git add .
	~$ git commit -a -m "migrate: type column rename"

	~$ rails s --binding=192.168.140.214 --port=3003

Github,

	~$ git remote add origin git@github.com:seyyah/rails-twitter-bootstrap-sim.git
	~$ git push -u origin master

Heroku,

	~$ heroku create xlsim --stack cedar
	~$ git push heroku master
	~$ heroku run rake db:migrate

# Ortam

Versiyonlar şöyledir,

	seyyah@ror:~$ rails -v
	Rails 3.2.2
	seyyah@ror:~$ ruby -v
	ruby 1.9.3p0 (2011-10-30 revision 33570) [i486-linux]
	seyyah@ror:~$ gem -v
	1.8.11
	seyyah@ror:~$

# Twitter Bootstrap Demo

Twitter Bootstrap can help make beautiful web apps quickly by providing you
with useful CSS and JavaScript. Here you will learn how to include it into
Rails with the twitter-bootstrap-rails gem.

Kaynak: http://railscasts.com/episodes/328-twitter-bootstrap-basics

# Kaynaklar

- https://github.com/seyhunak/twitter-bootstrap-rails

- http://railscasts.com/episodes/328-twitter-bootstrap-basics
