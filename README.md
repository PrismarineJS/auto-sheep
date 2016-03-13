auto-sheep
==========

Automatically update and start dazed-sheep without a githook either on a [DigitalOcean](https://digitalocean.com) server (or any VPS) or on [heroku](https://heroku.com)


## Heroku setup
We've done most of the hard work for you, all you need to do is make sure you've got a [heroku](https://heroku.com) account and a [ngrok](https://ngrok.com) account then,

- Create an app on heroku, and add your ngrok API key as a enviroment variable called `NGROK_API_TOKEN`
- Run `heroku git:remote -a app-name` and `git push heroku master`

## DigitalOcean / VPS setup
Firstly, you'll want to
    
    ./bin/install.sh

Then you'll need to add `bin/update.sh` to cron so that the server can update