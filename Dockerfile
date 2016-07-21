#FROM erlang:17
#FROM correl/erlang:R16
FROM correl/erlang:R15

ADD ./ katja
WORKDIR /katja

RUN rm -rf deps ebin logs
#RUN make deps
#RUN make compile
