#!/usr/bin/env bash
/usr/bin/osmo-hlr -c /etc/osmocom/osmo-hlr.cfg -l /var/lib/osmocom/hlr.db &
/usr/bin/osmo-msc -c /etc/osmocom/osmo-msc.cfg &
/usr/bin/osmo-mgw -s -c /etc/osmocom/osmo-mgw.cfg &
/usr/bin/osmo-stp -c /etc/osmocom/osmo-stp.cfg &
/usr/bin/osmo-bsc -c /etc/osmocom/osmo-bsc.cfg -s &
/usr/bin/osmo-ggsn -c /etc/osmocom/osmo-ggsn.cfg &
/usr/bin/osmo-sgsn -c /etc/osmocom/osmo-sgsn.cfg &
/usr/bin/osmo-bts-trx -s -c /etc/osmocom/osmo-bts-trx.cfg &
/usr/bin/osmo-trx-lms -C /etc/osmocom/osmo-trx-lms.cfg &
/usr/bin/osmo-pcu -c /etc/osmocom/osmo-pcu.cfg &
/usr/bin/osmo-cbc -c /etc/osmocom/osmo-cbc.cfg &

wait -n

exit $?
