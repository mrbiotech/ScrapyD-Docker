# ScrapyD-Docker

A containerized build of [ScrapyD](https://scrapyd.readthedocs.io/en/stable/overview.html) for running [Scrapy](https://scrapy.org/) spiders as your own microservices.

## Installation

### Building the Docker container for repeated use
1. `$ git clone https://github.com/mrbiotech/ScrapyD-Docker.git`
2. `$ cd ScrapyD-Docker`
3. `$ docker build -t mrbiotech/ScrapyD-Docker .`

## Running the new Docker container

### Disposable one-time use
`$ docker run -it --rm --name scrapyd-docker -p 6800:6800 ash`

## TODO
- [ ] Add instructions on how to import individual spiders using [scrapyd-deploy from scrapyd-client](https://github.com/scrapy/scrapyd-client).
    - scrapyd-deploy automates egg-laying and birthing to Scrapyd server.
