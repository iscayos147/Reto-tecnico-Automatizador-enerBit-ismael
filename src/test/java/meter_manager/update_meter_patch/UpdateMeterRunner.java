package meter_manager.update_meter_patch;

import com.intuit.karate.junit5.Karate;

public class UpdateMeterRunner {
    @Karate.Test
    Karate testUpdateMeters(){
        return Karate.run("src/test/java/meter_manager/update_meter_patch/update_meter.feature");
    }
}
