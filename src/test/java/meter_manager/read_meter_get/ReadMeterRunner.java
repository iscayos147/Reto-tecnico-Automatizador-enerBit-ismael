package meter_manager.read_meter_get;

import com.intuit.karate.junit5.Karate;

public class ReadMeterRunner {
    @Karate.Test
    Karate testReadMeters(){
        return Karate.run("src/test/java/meter_manager/read_meter_get/read_meter.feature");
    }
}
