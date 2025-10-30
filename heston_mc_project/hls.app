<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="heston_mc_project" top="heston_mc_kernel">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="true" ldflags="" mflags=""/>
    </Simulation>
    <files>
        <file name="../../heston_mc_tb.cpp" sc="0" tb="1" cflags="-std=c++11 -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="Mersenne_Twister.h" sc="0" tb="false" cflags="-std=c++11" csimflags="" blackbox="false"/>
        <file name="Mersenne_Twister.cpp" sc="0" tb="false" cflags="-std=c++11" csimflags="" blackbox="false"/>
        <file name="heston_mc.h" sc="0" tb="false" cflags="-std=c++11" csimflags="" blackbox="false"/>
        <file name="heston_mc.cpp" sc="0" tb="false" cflags="-std=c++11" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

