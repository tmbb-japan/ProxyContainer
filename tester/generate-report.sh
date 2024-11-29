#!/bin/sh

artillery run --output /app/reports/report.json test-script.yml
artillery report --output /app/reports/report.html /app/reports/report.json