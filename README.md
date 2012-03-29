# Siz ne yapacaksınız?

Size düşen ise,

	~$ git clone git@github.com:seyyah/rails-twitter-bootstrap-sim.git
	~$ cd rails-twitter-bootstrap-sim/
	~$ git checkout auth/
	~$ bundle
	~$ rake db:migrate
	~$ rake db:seed
	~$ rails s --binding=192.168.140.214 --port=3003

Test için

- yerelde: http://192.168.140.214:3003/login

- herokuda: http://tbsim-v2.herokuapp.com/

Seed edilen kullanıcılar (ad:parola yetki),

        geek:secret         Read
        moderator:secret    Read + Create
        admin:secret        Read + Create + Update
        superadmin:secret   Read + Create + Update + Destroy

# Daha fazlası

- twitter-bootstrap + questions: https://github.com/seyyah/rails-twitter-bootstrap-sim/blob/tbsim-v1/README.md

- Simple auth:
  http://jeremyjbarth.blogspot.com/2011/10/rails-31-simple-custom-authentication.html
