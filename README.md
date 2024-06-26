[![Backers on Open Collective](https://opencollective.com/node-db-migrate/backers/badge.svg)](#backers) [![Sponsors on Open Collective](https://opencollective.com/node-db-migrate/sponsors/badge.svg)](#sponsors)
[![Build Status](https://github.com/db-migrate/mongo/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/db-migrate/mongo/actions/workflows/ci.yml)
[![Documentation Status](https://readthedocs.org/projects/db-migrate/badge/?version=latest)](https://readthedocs.org/projects/db-migrate/?badge=latest)

# mongodb

mongodb driver for db-migrate

Breaking Changes:
- The response payload schema for _getCollectionNames has changed
    - We noticed that the property name `collectionName` is now just `name`
    - Also MongoDB 3.0 deprecates direct access to the system.indexes collection, so tests looking for this collection no longer do

