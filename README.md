# zetasql-docker-sandbox

## Usage

```command
docker build -t zetasql-docker-sandbox .
```

```command
docker run -it zetasql-docker-sandbox bazel --output_user_root=/app/output run //src:example
```

