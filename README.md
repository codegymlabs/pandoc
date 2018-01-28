# Dockerized pandoc executable

Based on [`Debian`](https://store.docker.com/images/debian)`:stretch-slim`.

Usage:

```bash
docker run --rm \
  -v ${input-file-parent}:/docs \
  -v ${output-file-parent}:/docs/out \
  codegymlabs/pandoc ${input-file} -o out/${out-put-file} [other agurments]
```

For PDF, use `pdf` tag.

For PDF with math formulars, use `pdf-math` tag.

Notes: never bind `${input-file-parent}` to other somewhere otherwhise `/docs`. Refs
`https://github.com/jgm/pandoc/issues/3752`.

Sample:

```bash
docker run --rm \
  -v $PWD:/docs \
  -v $PWD/outs:/docs/out \
  codegymlabs/pandoc hello-world.md \
  -o out/hello.pdf \
  -V papersize:a4 \
  --latex-engine=xelatex \
  --dpi=144
