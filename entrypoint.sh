#!/bin/sh

cmd="s3cmd"
options=""

# construct options
[ -n "$access_key" ]  && options="$options --access_key=$access_key"
[ -n "$secret_key" ]  && options="$options --secret_key=$secret_key"
[ -n "$host" ]        && options="$options --host=$host"
[ -n "$host_bucket" ] && options="$options --host-bucket=$host_bucket"
[ -n "$region" ]      && options="$options --region=$region"

$cmd $options $@
