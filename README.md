# Universal Container Image
A universal container image based on Alpine Linux with some common configurations and two different variants:
1. Base
2. JRE 21

## License
The files in this repository are licensed under the [MIT License](LICENSE).

The container images built from it also contain third-party software under
its own licenses, in particular the Alpine Linux packages (e.g. BusyBox, bash,
curl, wget) and, in the JRE variant, Eclipse Temurin (GPL-2.0 with Classpath
Exception). The images therefore carry no `org.opencontainers.image.licenses`
label; images built on top of them should set their own.
