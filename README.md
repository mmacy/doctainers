![Doctainers logo](readme-heading.png)

Doctainers allows you to quickly document your libraries in a container, and subsequently host the documentation in a cloud service. It is a set of [Docker](https://www.docker.com/) [Dockerfiles](https://docs.docker.com/engine/reference/builder/), that are running [DocFX](https://dotnet.github.io/docfx/) inside them.

## Building an image

You can build an image by simply calling:

```bash
docker build --build-arg LIBRARY=@azure/cosmos --build-arg LIBRARY_FOLDER=src .
```

This command can be executed directly from the folder with the `Dockerfile`. For the `LIBRARY` argument, you need to pass the library ID the same way it is indexed on `npm`. For `LIBRARY_FOLDER` you need to specify the library folder that needs to be documented - the default will always be `src`.

## Running an image

Once you get the image created, you can run it with the help of:

```bash
docker run -p 80:1900 -i {image-id}
```

This will map your local port 80 to port 1900 from the running container. You will be able to access the hosted site by going to `http://localhost`.

![Launch animation](demo-animation.gif)

Of course, you can make adjustments to change the target port.

## FAQ

### Can I map the tool to a different port?

Yes. You can change the `docker run` port mapping target. Keep in mind that you also need to update the `Dockefile` to change what `socat` uses as the target port.

### Why does `socat` run when I start the container?

By default, DocFX serves the site on `127.0.0.1` - this would mean that we wouldn't be able to access the site from outside the container (the connection will always be reset). To prevent that, we use [`socat`](https://linux.die.net/man/1/socat) as a relay.

## Logo

Logo is derived from work of [Kokota on IconFinder](https://www.iconfinder.com/icons/792241/box_cargo_cart_deliver_package_warehouse_icon), as well as [bamikon on IconFinder](https://www.iconfinder.com/icons/2824439/book_note_paper_school_icon).