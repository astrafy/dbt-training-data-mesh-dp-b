# Astrafy - Data Mesh Demo
## Data Product B

This repository is a playground to learn how to use dbt with the data mesh paradigm. It contains one data product that
we will refer to as "Data Product B". This data product uses models defined in another data product named 
"Data Product A" athat is located on [this repository](https://github.com/astrafy/dbt-training-data-mesh-dp-a).


<p align="center" width="100%">
    <img width="33%" src="https://seeklogo.com/images/D/dbt-logo-500AB0BAA7-seeklogo.com.png">
    <img width="33%" src="https://cdn-images-1.medium.com/max/1200/1*0jrqkgFv3U142GxAjUYfMg.png">
</p>


## Quickstart

1. Create a python virtual environment in python 3.10.5 named "venv_dbt_data_mesh" 

2. Install ```poetry``` by running the following command:

```
pip install poetry==1.5.0
```

3. Install the required dependencies by running the following at the root of the repo:
```
poetry install
```

4. Assign the dbt profiles from this repository by running the following commands:
```
cd dbt
export DBT_PROFILES_DIR=$(pwd)
```

5. Activate your Google Cloud account by running the following command:
```
gcloud auth login
gcloud auth application-default
```

You also need to have initialized beforehand gcloud with a default account. You can do this by running
the following command:
```
gcloud init
```

6. Set the following environment variable to your Google Cloud project where the tables from this dbt repo will 
be written to:

```
export GCP_PROJECT=[Google Cloud Project ID that dbt will use]
```

7You are now ready to run dbt commands within the dbt repository.

This dbt project comes with two targets:

- **sbx** target: it will materialize the models in the sandbox datasets with your $USER prepended to the table names (either file name or alias defined in config)
- **prd** target: it will materialize the models in the prd datasets with the vanilla table names (either file name or alias defined in config)

By default, the **sbx** target is selected.

You must first run the following command in order to initialize the soruce tables:

```dbt seed```

---------------------------------------

### Elementary package:

In order to generate reports for elementary package, you need to install the elementary CLI. You can do so by running
the following command:

```
pip install elementary-data
pip install 'elementary-data[bigquery]'
```

You can then generate elementary report by going into the dbt folder and running the following command:

```
edr report
```

### Additional references

- [dbt official documentation](https://docs.getdbt.com/)
- [dbt free courses](https://courses.getdbt.com/collections)
- [dbt at scale on Google Cloud](https://medium.com/astrafy/dbt-at-scale-on-google-cloud-part-1-54f8655443a7)
- [Top dbt packages pick](https://medium.com/astrafy/our-top-dbt-packages-pick-fad02e98eac6)

dbt slack workspace:
- Join the dbt slack workspace:  https://getdbt.slack.com 


### Feedback

If you have attended a training from Astrafy on dbt with this repository as material support, please take 5 minutes to
answer a few questions via [this link](https://astrafy.typeform.com/to/mFbRuPLB#hubspot_utk=xxxxx&hubspot_page_name=xxxxx&hubspot_page_url=xxxxx).

