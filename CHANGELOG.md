# Changelog

## 2.2.0 (2021/05)

- Add index for dataschema content.

## 2.1.2 (2021/05)

- Copy `authority` and `publisher` fields directly to `relation`, instead of indirectly via `relation_organization` field. This may have caused problems when partially updating an object with `authority` and/or `publisher`.

## 2.1.1 (2021/04)

- Make sure the new `did_you_mean` suggester is built when a request to `/build_suggest` is done.

## 2.1.0 (2021/04)

- Changed implementation of `did_you_mean` suggester. This suggester now uses the index instead of a file on disk.

## 2.0.2 (2021/04)

- Removed the `sys_type` "catalog" value from the facet `facet_sys_type` when using the `select` requestHandler for the `donl_search` configset.

## 2.0.1 (2021/04)

- Support the `donlsync_checksum` field in the `donl_dataset` configset introduced in `ckanext-dataoverheid@2.6.1`.

## 2.0.0 (2021/03)

- Introduce a new search collection: donl_concepts. This collection contains concepts from external sources.

## 1.10.0 (2021/03)

- Explicitly defined the `fl` field when using the `select` requestHandler. The `fl` is defined as the aggregation of the `fl` fields of all the various `select_*` requestHandlers.
- Introduced a new field `user_defined_synonyms` for the `donl_search` configset. This multivalued textfield will contain ... user defined synonyms. Additionally, the field is added to the `qf` of all `select` requestHandlers.

## 1.9.0 (2021/03)

- Introduced a new field in the `donl_dataset` configset called `linked_concepts`. This field matches the new dataset property introduced in `ckanext-dataoverheid@2.6.0`.
- Introduced a new field in the `donl_search` configset called `asset_logo`. This field can contain a relative reference to a graphic which acts as the logo of the document in question.
- Introduced a new field in the `donl_search` configset called `asset_authority_logo`. This field can contain a relative reference to a graphic which acts as the logo of the authority of the document.

## 1.8.2 (2021/02)

- Delete context field from `did_you_mean` suggester.

## 1.8.1 (2021/02)

- Introduced a new field `last_modified` in the `donl_dataset` configset. This field matches the new field introduced in `ckanext-dataoverheid@2.5.2`.

## 1.8.0 (2021/02)

- All suggest requestHandlers will now provide an additional suggestion dictionary named `did_you_mean`. This dictionary will contain suggestions based on common government acronyms with their fully written name as the payload.

## 1.7.3 (2021/02)

- Add `authority_kind` field to the index.
- Add `facet_authority_kind` to Add to dataset, datarequest and dataservice select handlers.

## 1.7.2 (2021/02)

- Support for the `access_rights_reason` field introduced in `ckanext-dataoverheid@2.5.0`.
- Add missing relation field for dataservices `relation_dataservice` in the `donl_search` schema.

## 1.7.1 (2021/01)

- Add new `relation_community` field to suggester schema.

## 1.7.0 (2021/01)

- Remove `suggest.cfq` parameter from `/suggest` handlers, because it is not possible to define multiple `suggest.cfq`.

## 1.6.0 (2021/01)

- Make sure `suggest.cfq` is not overwritten by user queries to `/suggest` handlers. The `suggest.cfq` parameter is now in `appends` in each `/suggest` handler.

## 1.5.0 (2021/01)

- Add filter for `/suggest` so that it only returns suggestions without any context.

## 1.4.2 (2021/01)

- Remove catalog suggestions from `/suggest` suggester.

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
