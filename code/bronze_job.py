from pyspark.sql import SparkSession

spark = SparkSession.builder.appName('SparkApp').getOrCreate()

censo = spark \
	.read \
	.format('csv') \
	.option('header',True) \
	.option('inferSchema', True) \
	.option('delimiter', '|') \
	.load('s3://educalake-bronze/')

censo \
	.write \
	.mode('overwrite') \
    .partitionBy("REGIAO") \
	.parquet('s3://educalake-silver/')