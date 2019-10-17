import logging
import datetime
from dateutil.relativedelta import relativedelta

def lambda_handler(event=None, context=None):
    today = datetime.date(year=2016, month=1, day=1)
    return str(today + relativedelta(years=1))
