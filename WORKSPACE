workspace(name = "zetasql-docker-sandbox")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
  name = "com_google_absl",
  # Commit from 2022-01-19
  url = "https://github.com/abseil/abseil-cpp/archive/fbbb5865a562c9a9167d71c1cf56b82025a8f065.tar.gz",
  sha256 = "18aadf5b16743399d37e3d2880c181f57ef0d0cef8ed6086f53fd254c8cff6c2",
  strip_prefix = "abseil-cpp-fbbb5865a562c9a9167d71c1cf56b82025a8f065",
)

http_archive(
  name = "com_google_googletest",
  # Commit from 2022-01-12
  url = "https://github.com/google/googletest/archive//2d07f12b607c528b21795ab672cff3afaf64f7a1.tar.gz",
  sha256 = "219132fd586a870ebde5df6007d7f81dbd4b4a411466569301b3a0f55a207b37",
  strip_prefix = "googletest-2d07f12b607c528b21795ab672cff3afaf64f7a1",
)

http_archive(
  name = "com_google_zetasql",
  url = "https://github.com/google/zetasql/archive/2022.02.1.tar.gz",
  strip_prefix = "zetasql-2022.02.1",
)

load("@com_google_zetasql//bazel:zetasql_deps_step_1.bzl", "zetasql_deps_step_1")

zetasql_deps_step_1()

load("@com_google_zetasql//bazel:zetasql_deps_step_2.bzl", "zetasql_deps_step_2")

zetasql_deps_step_2()

load("@com_google_zetasql//bazel:zetasql_deps_step_3.bzl", "zetasql_deps_step_3")

zetasql_deps_step_3()

load("@com_google_zetasql//bazel:zetasql_deps_step_4.bzl", "zetasql_deps_step_4")

zetasql_deps_step_4()

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Hedron's Compile Commands Extractor for Bazel
# https://github.com/hedronvision/bazel-compile-commands-extractor
http_archive(
  name = "hedron_compile_commands",
  # Replace the commit hash in both places (below) with the latest, rather than using the stale one here.
  # Even better, set up Renovate and let it do the work for you (see "Suggestion: Updates" in the README).
  url = "https://github.com/hedronvision/bazel-compile-commands-extractor/archive/2e8b7654fa10c44b9937453fa4974ed2229d5366.tar.gz",
  strip_prefix = "bazel-compile-commands-extractor-2e8b7654fa10c44b9937453fa4974ed2229d5366",
  # When you first run this tool, it'll recommend a sha256 hash to put here with a message like: "DEBUG: Rule 'hedron_compile_commands' indicated that a canonical re     producible form can be obtained by modifying arguments sha256 = ..."
)
load("@hedron_compile_commands//:workspace_setup.bzl", "hedron_compile_commands_setup")
hedron_compile_commands_setup()

