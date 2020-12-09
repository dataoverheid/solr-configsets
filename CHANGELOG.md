# Changelog

## 1.4.1 (2020/12)

- Temporarily reintroduced `communities` field in the `donl_dataset` configset for CKAN installations not yet running version `2.4.2` or higher.

## 1.4.0 (2020/12)

- Add new request handler for dataservices: `select_dataservice`.
- Add new suggester for dataservices: `suggest_dataservice`.
- Add new label field for which synonyms are managed.

## 1.3.2 (2020/11)

- Removed unused suggestion dictionaries from `suggest_datarequest`.
- Introduced request handler for building all the suggester dictionaries in one request.

## 1.3.1 (2020/11)

- Added additional suggester fields, components and handlers.

## 1.3.0 (2020/11)

- Added `subject`, `handler`, `count`, `type` and `timeframe` fields to schema of aggregated signals collection.

## 1.2.2 (2020/10)

- Changed the configset `metadata` file to `metadata.txt` so that the Solr web interface can render it in its file explorer.

## 1.2.1 (2020/10)

- Removed several fields from the `donl_dataset` schema to match the changes made in `ckanext-dataoverheid@2.4.2`.

## 1.2.0 (2020/10)

- Introduced the `donl_signals_aggregated` configset which is intended for storing aggregated signals.

## 1.1.1 (2020/09)

- Added Docker support.
- Added Gitlab CI pipeline to create Docker images based on `master` branch.

## 1.1.0 (2020/09)

- Introduced `donl_signals` configset used for aggregating response signals.

## 1.0.1 (2020/09)

- Updated `README.md` to include updated installation and usage instructions.

## 1.0.0 (2020/09)

- Initial port of the Solr configsets from the `ckanext-dataoverheid` project.
- Included several shell scripts to make deploying changes to a SolrCloud installation easier.
