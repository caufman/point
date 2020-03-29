# Development environment in docker compose

Add `point.local` to `/etc/hosts`:

```sh
# root
echo '127.0.0.1 point.local i.point.local arts.point.local' >> /etc/hosts
```

Clone the repo:

```sh
git clone https://github.com/pointim/point.git
cd point
```

Initialize:

```sh
$ ./init.sh
```

Launch:

```sh
# Launch the whole service
$ docker-compose up

# Launch individual services. See service names in the docker-compose.yml
$ docker-compose up www websocket
```

Stop all containers:

```sh
$ docker stop $(docker ps -a -q)
```

Remove all containers:

```sh
$ docker rm $(docker ps -a -q)
```

Remove all stopped images:

```sh
$ docker image prune -a
```

Open the URL in your browser:

```
https://point.local/
```

All users and XMPP bot have password `123`.
