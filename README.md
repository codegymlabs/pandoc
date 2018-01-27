# Dockerized pandoc executable

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

docker run --rm -v $PWD:/docs/in -v $PWD/outs:/docs/out codegymlabs/pandoc -i in/hello.md -o out/hello.pdf -V papersize:a4