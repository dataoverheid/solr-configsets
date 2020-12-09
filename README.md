# Solr Configsets

Repository: [github.com/dataoverheid/solr-configsets](https://github.com/dataoverheid/solr-configsets)

## Contact

- Web: [data.overheid.nl/contact](https://data.overheid.nl/contact)
- Email: [opendata@overheid.nl](mailto:opendata@overheid.nl)

## Requirements

- Apache Solr >= 8.2

## License

Licensed under the CC0 license. View the `LICENSE.md` file for more information.

## Installation

### SolrStandalone

```shell script
sudo su solr
bash /path/to/solr-configsets/bin/generate_metadata.sh
ln -s /path/to/solr-configsets/configsets/donl_dataset /path/to/solr/configsets/donl_dataset
ln -s /path/to/solr-configsets/configsets/donl_search /path/to/solr/configsets/donl_search
ln -s /path/to/solr-configsets/configsets/donl_suggester /path/to/solr/configsets/donl_suggester
ln -s /path/to/solr-configsets/configsets/donl_signals /path/to/solr/configsets/donl_signals
ln -s /path/to/solr-configsets/configsets/donl_signals_aggregated /path/to/solr/configsets/donl_signals_aggregated
```

### SolrCloud

For SolrCloud deployments, first update the `.env` file with the correct configurations, afterwards:

```shell script
sudo su solr
bash /path/to/solr-configsets/bin/update_configsets.sh
```

Alternatively, you can use a Docker container to deploy:

```shell script
bin/docker_build.sh
docker run \
  --rm \
  --name donl_solr_configsets \
  --network {zookeeper network} \
  -e TZ=Europe/Amsterdam \
  -e SOLR_INSTALLATION_PATH=/opt/solr \
  -e ZOOKEEPER_CONNECTION_STRING={zookeeper connectionstring} \
  "donl_solr_configsets:{solr-configsets version}"
```

## Usage

During core/collection creation, you now have the option to select one of the below configsets for the new Solr core/collection.

- `donl_dataset`
- `donl_search`
- `donl_signals`
- `donl_signals_aggregated`
- `donl_suggester`
