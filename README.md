# public-ip-slack-notifier
Simple Docker Container which regurarly checks the public IP and notifies using a Slack Webhook if the IP changed.

## Usage

### Docker run command:

`docker run -e SLACK_WEBHOOK="https://some.slack.webhook" muyajil/public-ip-slack-notifier:latest`

### Docker compose config:

```
version: "3.5"

services:
  public-ip-monitor:
    image: muyajil/public-ip-slack-notifier:latest
    environment:
      SLACK_WEBHOOK: ${SLACK_WEBHOOK}
```