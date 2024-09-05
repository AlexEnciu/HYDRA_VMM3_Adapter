<?xml version='1.0'?>
<Project Type="Project" LVVersion="8508002">
   <Item Name="My Computer" Type="My Computer">
      <Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.tcp.enabled" Type="Bool">false</Property>
      <Property Name="server.tcp.port" Type="Int">0</Property>
      <Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
      <Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="specify.custom.address" Type="Bool">false</Property>
      <Item Name="Sm Thermometer.xctl" Type="XControl" URL="Temp Control/Lg Thermometer/Sm Thermometer.xctl"/>
      <Item Name="TempColor.vi" Type="VI" URL="subVis/TempColor.vi"/>
      <Item Name="TempData_Sort.vi" Type="VI" URL="subVis/TempData_Sort.vi"/>
      <Item Name="32Bit_SignExtend Single.vi" Type="VI" URL="subVis/32Bit_SignExtend Single.vi"/>
      <Item Name="Dependencies" Type="Dependencies">
         <Item Name="vi.lib" Type="Folder">
            <Item Name="XControlSupport.lvlib" Type="Library" URL="/&lt;vilib&gt;/_xctls/XControlSupport.lvlib"/>
            <Item Name="Version To Dotted String.vi" Type="VI" URL="/&lt;vilib&gt;/_xctls/Version To Dotted String.vi"/>
         </Item>
      </Item>
      <Item Name="Build Specifications" Type="Build"/>
   </Item>
</Project>
