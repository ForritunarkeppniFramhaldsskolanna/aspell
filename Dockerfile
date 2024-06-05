FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LANGUAGE=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN apt-get update && \
    apt-get install -y \
            aspell \
            aspell-is \
            aspell-en \
            aspell-de \
            aspell-et \
#            aspell-fi \
#            aspell-ka \
            aspell-lt \
            aspell-lv \
            aspell-pl \
            aspell-sv \
            aspell-uk \
            ruby3.0

COPY entry.rb /

ENTRYPOINT ["/entry.rb"]
