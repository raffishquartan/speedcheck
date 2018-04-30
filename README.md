# SpeedCheck

So how fast is my broadband? We changed from one provider to another 
recently, and performance seems much much worse. They agree, and have 
made noises that they'll do something about it, but I don't trust them.

So I cabled a Raspberry Pi to my router and with the help of `cron`,
I've started collecting performance statistics using `speedcheck-cli`
and normalising for other devices using the connection with `tshark`.

Quick, dirty, but the graphs plotted by the associated Jupyter notebook
tell an interesting story. I'll add in longer-term and seasonal graphs
as the data accumulates. I'm particularly interested in a quantified
view of performance in the evening vs rest of day. More to come (in 
time).

## To use this

- Set up a raspberry pi or other device next to your router
  - Install speedtest-cli (e.g. `pip3 install --user speedtest-cli`)
  - Install tshark (cron jobs run as root but depending on the selected
    config you might need to reboot the pi)
  - Configure cron jobs, mine look like this:
    ````
    */5 * * * * /home/pi/.local/bin/speedtest-cli --timeout 60 --csv >> /home/pi/speedcheck/transfer-results.csv
    */5 * * * * /home/pi/speedcheck/check-eth0.sh
    */5 * * * * /home/pi/speedcheck/check-wlan1.sh
    ````
- Wait for data to accumulate on the pi (approx 50kb disk use / day)
- Customise the scripts (e.g. pi IP is hardcoded to 192.168.1.14)
- Run the Speedcheck.ipynb notebook

## Feedback, comments, questions, improvements

Are very welcome. Please raise an issue or a pull request.
