<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="hestonEuro" name="hestonEuro_hls">
    <files>
        <file name="../../hestonEuro_tb.cpp" sc="0" tb="1" cflags="-I../../common -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="common/volatilityData.cpp" sc="0" tb="false" cflags="-I./common" csimflags="" blackbox="false"/>
        <file name="common/stockData.cpp" sc="0" tb="false" cflags="-I./common" csimflags="" blackbox="false"/>
        <file name="common/RNG.cpp" sc="0" tb="false" cflags="-I./common" csimflags="" blackbox="false"/>
        <file name="hestonEuro.cpp" sc="0" tb="false" cflags="-I./common" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="true" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

