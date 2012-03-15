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

	~$ rails s --binding=192.168.140.214 --port=3003

Github,

	~$ git remote add origin git@github.com:seyyah/rails-twitter-bootstrap-sim.git
	~$ git push -u origin master

Heroku,

	~$ heroku create xlsim --stack cedar
	~$ git push heroku master
	~$ heroku run rake db:migrate

# Kaynaklar

- https://github.com/seyhunak/twitter-bootstrap-rails

- http://railscasts.com/episodes/328-twitter-bootstrap-basics
