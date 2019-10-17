# zappa_small_test

## Setting

### Set AWS key

```
$ $EDITOR ./config/aws.env
```

### Set S3 Bucket

```
$ $EDITOR ./zappa_settings.json
```

## Deploy

```
$ docker-compose run zappa deploy sandbox
$ docker-compose run zappa update sandbox
```

## Remove

```
$ docker-compose run zappa undeploy sandbox
```
