#!/bin/bash
gcloud compute instances create reddit-app --zone=europe-west1-b --tags=puma-server --image=reddit-base-1554064059 --image-project=infra-235108
