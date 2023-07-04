package meter_manager.create_meter_post;

import com.intuit.karate.junit5.Karate;

public class CreateMeterRunner {
    @Karate.Test
    Karate testCreateMeter(){
        return Karate.run("src/test/java/meter_manager/create_meter_post/create_meter.feature");
    }
}
