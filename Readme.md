# Download
- https://downloads.paessler.com/prtgmpprobe/linux/prtgmpprobe_aarch64.deb
- https://downloads.paessler.com/prtgmpprobe/linux/prtgmpprobe_amd64.deb
- https://downloads.paessler.com/prtgmpprobe/linux/prtgmpprobe_armhf.deb

---
```
OPTIONS:
- -a, --access-key <access-key>    Access key to validate for PRTG core [env: PRTGMPPROBE_ACCESS_KEY=][default:multi-platform-probe]
-     --momo-dir <dir>             Directory where the monitoring modules' `.dll` or `.so` are stored [env:PRTGMPPROBE_MOMO_DIR=][default: MonitoringModules/]
-     --heartbeat <heartbeat>      Interval [sec] in which heartbeat messages are sent to the NATS server [env:PRTGMPPROBE_HEARTBEAT=][default: 30]
-     --id <id>                    Persistent ID of the probe itself [env: PRTGMPPROBE_ID=][default: 936da01f-9abd-4d9d-80c7-02af85c822a8]
- -l, --log-level <level>          The log level that is written in the log file [env: PRTGMPPROBE_LOG_LEVEL=][default: info]
-     --log-dir <log-dir>          Directory where the log files are written [env: PRTGMPPROBE_LOG_DIR=][default:probe_logs/]
-     --name <name>                Human readable name of the probe [env: PRTGMPPROBE_NAME=][default: multi-platform-probe]
- -i, --nats-ip <nats-ip>          IP address of the NATS server [env: PRTGMPPROBE_NATS_IP=][default: 127.0.0.1]
- -p, --nats-port <nats-port>      Port the NATS server listens to [env: PRTGMPPROBE_NATS_PORT=][default: 23561]
- -w, --nats-pwd <nats-pwd>        Password of the NATS user [env: PRTGMPPROBE_NATS_PWD=][default: PRTG]
-     --nats-url <nats-url>        The complete URL of the NATS server. When this is set IP and port are ignored [env:NEXT_NATS_URL=]
- -u, --nats-user <nats-user>      NATS user account [env: PRTGMPPROBE_NATS_USER=][default: PRTG]
-     --momo-timeout <timeout>     Timeout for momo sensor scans in [sec] [env: PRTGMPPROBE_MOMO_TIMEOUT=][default:900]
```
---
# Usage
`docker run -d --net mynet --name prtg-mpp -e PRTGMPPROBE__NATS__URL=nats://nats -e PRTGMPPROBE__ACCESS_KEY=multi-platform-probe -e PRTGMPPROBE__NAME=multi-platform-probe-docker -e PRTGMPPROBE__NATS__AUTHENTICATION__USER=PRTG -e PRTGMPPROBE__NATS__AUTHENTICATION__PASSWORD=PRTG -e PRTGMPPROBE__ID="bf6e8daf-0b06-4285-b755-7b5b2f6a5989" zimbres/prtg-multi-platform-probe`
---
### Options
- Access key to validate for PRTG core [env: PRTGMPPROBE__ACCESS_KEY=]
- Persistent ID of the probe itself [env: PRTGMPPROBE__ID=]
- Human readable name of the probe [env: PRTGMPPROBE__NAME=]
- The complete URL of the NATS server. [env: PRTGMPPROBE__NATS__URL=]
- NATS user account [env: PRTGMPPROBE__NATS__AUTHENTICATION__USER=]
- Password of the NATS user [env: PRTGMPPROBE__NATS__AUTHENTICATION__PASSWORD=]


---
* prtgmpprobe 1.0.0+10193-1