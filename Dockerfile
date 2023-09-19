# Support setting various labels on the final image
ARG COMMIT=""
ARG VERSION=""
ARG BUILDNUM=""

# Build gbeatsin a stock Go builder container
FROM golang:1.17-alpine as builder

RUN apk add --no-cache gcc musl-dev linux-headers git

ADD . /go-Beats
RUN cd /go-Beats && go run build/ci.go install ./cmd/gbeats

# Pull gbeatsinto a second stage deploy alpine container
FROM alpine:latest

RUN apk add --no-cache ca-certificates
COPY --from=builder /go-Beats/build/bin/gbeats /usr/local/bin/

EXPOSE 8545 8546 30305 30305/udp
ENTRYPOINT ["gbeats"]

# Add some metadata labels to help programatic image consumption
ARG COMMIT=""
ARG VERSION=""
ARG BUILDNUM=""

LABEL commit="$COMMIT" version="$VERSION" buildnum="$BUILDNUM"
