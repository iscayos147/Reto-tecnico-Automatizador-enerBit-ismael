package meter_manager.meter_delete;

import com.intuit.karate.junit5.Karate;

public class DeleteMetersRunner {
    @Karate.Test
    Karate testDeleteMeter(){
        return Karate.run("src/test/java/meter_manager/meter_delete/meter_delete.feature");
    }
}
