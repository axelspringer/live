#!/bin/sh

if [[ "${S3FS}" ]]; then
    echo "Enabling S3FS ..."
    yas3fs s3://${S3_BUCKET} /var/media
fi

# Start supervisord and services
exec /usr/bin/supervisord -n -c /etc/supervisord.conf