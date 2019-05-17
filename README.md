
# CLIPSPY

Base repository to work with `clipspy` using docker-compose.

This repos are using `python:3.7.3-alpine3.9` base image.


## Commands

Start:

```bash
docker-compose up
```

Stop:
```bash
docker-compose down
```

#### Notes:
The clipspy is not installed with `requirements.txt` because a 
environment problems with alpine linux the alternative is use a Ubuntu/Debian Image, but it's a largest image compared to Alpine
