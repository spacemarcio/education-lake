import sys
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job

## @params: [JOB_NAME]
args = getResolvedOptions(sys.argv, ['JOB_NAME'])

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args['JOB_NAME'], args)

censo = spark \
	.read \
	.format('csv') \
	.option('header',True) \
	.option('inferSchema', True) \
	.option('delimiter', '|') \
	.load('s3://educalake-raw/')

censo \
	.write \
	.mode('overwrite') \
    .partitionBy("CO_REGIAO") \
	.parquet('s3://educalake-staging/CENSO.parquet')