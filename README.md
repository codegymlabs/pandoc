# Dockerized pandoc executable

Based on [`Debian`](https://store.docker.com/images/debian)`:stable-slim`.

Usage:

```bash
docker run --rm \
  -v ${input-file-parent}:/docs/in:ro \
  -v ${output-file-parent}:/docs/out \
  codegymlabs/pandoc -i in/${input-file} -o out/${out-put-file} [other agurments]
```

Sample:

```bash
docker run --rm \
  -v $PWD:/docs/in:ro \
  -v $PWD/outs:/docs/out \
  codegymlabs/pandoc -i in/hello.md -o out/hello.pdf -V papersize:a4
```
