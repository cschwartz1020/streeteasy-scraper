# streeteasy scraper

Lazy implementation to scrape streeteasy for your desired apartment, and get notifications when a new apartment matching your criteria becomes available

## Before running

Install [Docker](https://docs.docker.com/get-docker/)

Sign up for Twilio and put your credentials and origination number in the `.env` file

Navigate to streeteasy, enter your desired apartment search, copy the URL and assign to `RENT_URL_BASE` constant in `main`

Enter the phone numbers that you want to be alerted in the `PHONE_NUMBERS` constant array in `main`

## Local Usage

Start Docker desktop, and then run

```bash
make build # per code change
make run # just to run
```

cleanup

```bash
make clean
```


## Running in AWS EKS (Optional)
Enter your AWS credentials in `.env`

```bash
make infra # one-time
make deploy # per code change
```

### Cleanup
```bash
make destroy
```
