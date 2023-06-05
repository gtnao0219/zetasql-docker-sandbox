# zetasql-docker-sandbox

## Getting Started

```command
docker build -t zetasql-docker-sandbox .
docker run -v `pwd`/src:/app/src -it zetasql-docker-sandbox bazel --output_user_root=/app/output run //src:example
```

### Known Issues

For editor autocompletion, we use bazel-compile-commands-extractor.  
Due to an issue when running in Docker, please install Bazel locally and run the following command.

```command
bazel run @hedron_compile_commands//:refresh_all
```

