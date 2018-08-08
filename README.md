# s3cmd

https://s3tools.org/s3cmd

## Usage

### Optional inputs

Each option is set with an environment variable.

Supported option:

* *access_key* : --access_key
* *secret_key* : --secret_key
* *host* : --host
* *host_bucket* : --host-bucket
* *region* : --region
* Please PR

### Examples

* ls

    ```
    $ docker run \
        -e "access_key=ACCESS_KEY" \
        -e "secret_key=SECRET_KEY" \
        -e "host=HOSTNAME" \
        -e "host_bucket=HOST_BUCKET" \
        -e "region=REGION" \
        lulichn:s3cmd ls
    2018-08-07 16:52  s3://bucket_name
    2018-08-07 16:46  s3://another_bucket_name
    ```

    OR

    ```
    $ docker run lulichn:s3cmd ls \
        --access_key=ACCESS_KEY \
        --secret_key=SECRET_KEY \
        --host=HOSTNAME \
        --host-bucket=HOST_BUCKET \
        --region=REGION
    2018-08-07 16:52  s3://bucket_name
    2018-08-07 16:46  s3://another_bucket_name
    ```

* sync

    ```
    $ ls
    aaa
    $ docker run \
        -e "access_key=ACCESS_KEY" \
        -e "secret_key=SECRET_KEY" \
        -e "host=HOSTNAME" \
        -e "host_bucket=HOST_BUCKET" \
        -e "region=REGION" \
        -v "$PWD:/data" \
        lulichn:s3cmd sync ./ s3://bucket_name/
    upload: './aaa' -> 's3://bucket_name/aaa' (0 bytes in 0.2 seconds, -1.00 B/s) [1 of 1]
    ```
