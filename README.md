# JICFS Classification

See [here](https://www.dsri.jp/database_service/jicfsifdb/manufacturer.html) for more detail about JICFS.

## Public URL to use the data

- JSON
  - https://minedia.github.io/jicfs-classification/api/v1/jicfs_classification.json
- JSON (minified)
  - https://minedia.github.io/jicfs-classification/api/v1/jicfs_classification.min.json
- tsv
  - https://minedia.github.io/jicfs-classification/api/v1/jicfs_classification.tsv
- csv
  - https://minedia.github.io/jicfs-classification/api/v1/jicfs_classification.csv
- csv (sjis)
  - https://minedia.github.io/jicfs-classification/api/v1/jicfs_classification.sjis.csv


## Sample output

![image](https://user-images.githubusercontent.com/98103/77389545-dd36b380-6dd6-11ea-84f9-fb9cb445e429.png)


## Datasource

- Full data
  - https://www.dsri.jp/database_service/jicfsifdb/data/1101jicfs_bunrui-ichiran.pdf
  - Updated on: 2010/01/14
- Incremental data
  - https://www.dsri.jp/database_service/jicfsifdb/data/24otc.pdf
  - Updated on: 2014/03/20


Differences between the original data and `lib/jicfs_classification.tsv` are:

- Converted to UTF-8.
- Corrected notation distortions.
- Converted half-width kana to full-width kana.
- Removed the spaces before and after the parenthesis.
- Applied incremental [data](https://www.dsri.jp/database_service/jicfsifdb/data/24otc.pdf).


## Build

```
bash bin/build.sh
```


## Related project

- https://github.com/quzq/jicfs.pdf-to-json

