mkdir /var/log/rabbitmq
mkdir /var/lib/rabbitmq
adduser rabbitmq
chown rabbitmq:rabbitmq -R /var/log/rabbitmq
chown rabbitmq:rabbitmq -R /var/lib/rabbitmq

su rabbitmq -c sh -c "RABBITMQ_ADVANCED_CONFIG_FILE=/etc/rabbitmq/advanced.config RABBITMQ_CONFIG_FILE=/etc/rabbitmq/rabbitmq.conf RABBITMQ_CONF_ENV_FILE=/etc/rabbitmq/rabbitmq-env.conf /usr/sbin/rabbitmq-server"
