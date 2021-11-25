CLOSE_EYE_PERIOD = 2000;
OPEN_EYE_PERIOD = 2000;
PIN = 0;


gpio.mode(PIN, gpio.OUTPUT);


tmr.create():alarm(CLOSE_EYE_PERIOD+OPEN_EYE_PERIOD, tmr.ALARM_AUTO, function()
    
    gpio.write(PIN, gpio.HIGH);
    tmr.create():alarm(CLOSE_EYE_PERIOD, tmr.ALARM_SINGLE, function()
        gpio.write(PIN, gpio.LOW);
    end);
end);
