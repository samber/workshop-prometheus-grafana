
# Run

## Generate some metrics

Open 3 tmux sessions and execute:

```sh
# 2xx
./infinite-200-req.sh
```

```sh
# 4xx
./infinite-404-req.sh
```

```sh
# inserts data into pg
./infinite-pg-insert.sh
```
