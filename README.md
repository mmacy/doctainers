![Doctainers logo](readme-heading.png)

Doctainers allows you to quickly document your libraries in a container, and subsequently host the documentation in a cloud service. It is a set of [Docker](https://www.docker.com/) [Dockerfiles](https://docs.docker.com/engine/reference/builder/), that are running [DocFX](https://dotnet.github.io/docfx/) inside them.

## Building an image

You can build an image by simply calling:

```bash
docker build --build-arg LIBRARY=@azure/cosmos --build-arg LIBRARY_FOLDER=src .
```

This command can be executed directly from the folder with the `Dockerfile`.