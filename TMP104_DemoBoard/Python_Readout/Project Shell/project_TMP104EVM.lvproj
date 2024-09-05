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
      <Item Name="Config_Files" Type="Folder" URL="Config_Files">
         <Property Name="NI.DISK" Type="Bool">true</Property>
      </Item>
      <Item Name="Help" Type="Folder" URL="Help">
         <Property Name="NI.DISK" Type="Bool">true</Property>
      </Item>
      <Item Name="DIG_DAQ Commands" Type="Folder" URL="../Shell Resources/DIG_DAQ Commands">
         <Property Name="NI.DISK" Type="Bool">true</Property>
      </Item>
      <Item Name="General VIs" Type="Folder" URL="../Shell Resources/General VIs">
         <Property Name="NI.DISK" Type="Bool">true</Property>
      </Item>
      <Item Name="l_pse_dll" Type="Folder" URL="../Shell Resources/l_pse_dll">
         <Property Name="NI.DISK" Type="Bool">true</Property>
      </Item>
      <Item Name="l_pse_vi" Type="Folder" URL="../Shell Resources/l_pse_vi">
         <Property Name="NI.DISK" Type="Bool">true</Property>
      </Item>
      <Item Name="Shell VIs_DO NOT EDIT" Type="Folder" URL="../Shell Resources/Shell VIs_DO NOT EDIT">
         <Property Name="NI.DISK" Type="Bool">true</Property>
      </Item>
      <Item Name="SM_DIG Commands" Type="Folder" URL="../Shell Resources/SM_DIG Commands">
         <Property Name="NI.DISK" Type="Bool">true</Property>
      </Item>
      <Item Name="Output Data" Type="Folder" URL="Output Data">
         <Property Name="NI.DISK" Type="Bool">true</Property>
      </Item>
      <Item Name="main_TMP104EVM.vi" Type="VI" URL="main_TMP104EVM.vi"/>
      <Item Name="shell_menu.rtm" Type="Document" URL="shell_menu.rtm"/>
      <Item Name="Help_w_Reg.vi" Type="VI" URL="Help_w_Reg.vi"/>
      <Item Name="Write_Single_Reg.vi" Type="VI" URL="Write_Single_Reg.vi"/>
      <Item Name="Write_All_Reg.vi" Type="VI" URL="Write_All_Reg.vi"/>
      <Item Name="TI.ico" Type="Document" URL="TI.ico"/>
      <Item Name="Read_All_Reg.vi" Type="VI" URL="Read_All_Reg.vi"/>
      <Item Name="Read_Single_Reg.vi" Type="VI" URL="Read_Single_Reg.vi"/>
      <Item Name="Global Variables.vi" Type="VI" URL="Global Variables.vi"/>
      <Item Name="Change Log.doc" Type="Document" URL="Change Log.doc"/>
      <Item Name="ReadTMP104Regs.vi" Type="VI" URL="ReadTMP104Regs.vi"/>
      <Item Name="ReadSingleTMP104Reg.vi" Type="VI" URL="ReadSingleTMP104Reg.vi"/>
      <Item Name="WriteTMP104Regs.vi" Type="VI" URL="WriteTMP104Regs.vi"/>
      <Item Name="WriteSingleTMP104Reg.vi" Type="VI" URL="WriteSingleTMP104Reg.vi"/>
      <Item Name="Dependencies" Type="Dependencies">
         <Item Name="vi.lib" Type="Folder">
            <Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
            <Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
            <Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
            <Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
            <Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
            <Item Name="Open Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Open Config Data.vi"/>
            <Item Name="Config Data RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data RefNum"/>
            <Item Name="Config Data Open Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Open Reference.vi"/>
            <Item Name="Config Data Registry Functions.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Registry Functions.ctl"/>
            <Item Name="Config Data Registry.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Registry.vi"/>
            <Item Name="Config Data.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data.ctl"/>
            <Item Name="Config Data Section.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Section.ctl"/>
            <Item Name="Config Data Set File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Set File Path.vi"/>
            <Item Name="Config Data Modify Functions.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Modify Functions.ctl"/>
            <Item Name="Config Data Modify.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Modify.vi"/>
            <Item Name="Add Quotes.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Add Quotes.vi"/>
            <Item Name="Info From Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Info From Config Data.vi"/>
            <Item Name="Config Data Read From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Read From File.vi"/>
            <Item Name="Config Data Get File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Get File Path.vi"/>
            <Item Name="String to Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/String to Config Data.vi"/>
            <Item Name="Invalid Config Data Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Invalid Config Data Reference.vi"/>
            <Item Name="Config Data Close Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Close Reference.vi"/>
            <Item Name="Write Key.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key.vi"/>
            <Item Name="Write Key (Boolean).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (Boolean).vi"/>
            <Item Name="Write Key (Double).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (Double).vi"/>
            <Item Name="Write Key (I32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (I32).vi"/>
            <Item Name="Write Key (Path).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (Path).vi"/>
            <Item Name="Specific Path to Common Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Specific Path to Common Path.vi"/>
            <Item Name="Write Key (String).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (String).vi"/>
            <Item Name="Single to Double Backslash.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Single to Double Backslash.vi"/>
            <Item Name="Remove Unprintable Chars.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Remove Unprintable Chars.vi"/>
            <Item Name="Write Key (U32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (U32).vi"/>
            <Item Name="Close Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/UTILITY/config.llb/Close Config Data.vi"/>
            <Item Name="Config Data Write To File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Write To File.vi"/>
            <Item Name="Config Data to String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data to String.vi"/>
            <Item Name="Read Key.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key.vi"/>
            <Item Name="Read Key (Boolean).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (Boolean).vi"/>
            <Item Name="Config Data Get Key Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Get Key Value.vi"/>
            <Item Name="Read Key (Double).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (Double).vi"/>
            <Item Name="Read Key (I32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (I32).vi"/>
            <Item Name="Read Key (Path).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (Path).vi"/>
            <Item Name="Remove Quotes.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Remove Quotes.vi"/>
            <Item Name="Common Path to Specific Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Common Path to Specific Path.vi"/>
            <Item Name="Read Key (String).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (String).vi"/>
            <Item Name="Parse Stored String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Parse Stored String.vi"/>
            <Item Name="Get Next Character.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Get Next Character.vi"/>
            <Item Name="Read Key (U32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (U32).vi"/>
            <Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
            <Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
            <Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
            <Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
            <Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
            <Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
            <Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
            <Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
            <Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
            <Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
            <Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
            <Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
            <Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
            <Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
            <Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
            <Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
            <Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
            <Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
            <Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
            <Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
            <Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
            <Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
            <Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
            <Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
            <Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
            <Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
            <Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
            <Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
            <Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
            <Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
            <Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
            <Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
            <Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
            <Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
            <Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
            <Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
            <Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
            <Item Name="Merge Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Merge Errors.vi"/>
            <Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
            <Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
            <Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
            <Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
            <Item Name="LVRowAndColumnUnsignedTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnUnsignedTypeDef.ctl"/>
            <Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
            <Item Name="XControlSupport.lvlib" Type="Library" URL="/&lt;vilib&gt;/_xctls/XControlSupport.lvlib"/>
            <Item Name="Version To Dotted String.vi" Type="VI" URL="/&lt;vilib&gt;/_xctls/Version To Dotted String.vi"/>
         </Item>
         <Item Name="Sm Thermometer.xctl" Type="XControl" URL="../Shell Resources/TMP Control/Temp Control/Lg Thermometer/Sm Thermometer.xctl"/>
         <Item Name="TempColor.vi" Type="VI" URL="../Shell Resources/TMP Control/subVis/TempColor.vi"/>
      </Item>
      <Item Name="Build Specifications" Type="Build">
         <Item Name="TMP104EVM" Type="Zip File">
            <Property Name="Absolute[0]" Type="Bool">false</Property>
            <Property Name="BuildName" Type="Str">TMP104EVM</Property>
            <Property Name="Comments" Type="Str"></Property>
            <Property Name="DestinationID[0]" Type="Str">{385871EA-A574-4491-9677-F54F28E3B31A}</Property>
            <Property Name="DestinationItemCount" Type="Int">1</Property>
            <Property Name="DestinationName[0]" Type="Str">Destination Directory</Property>
            <Property Name="IncludedItemCount" Type="Int">1</Property>
            <Property Name="IncludedItems[0]" Type="Ref">/My Computer</Property>
            <Property Name="IncludeProject" Type="Bool">true</Property>
            <Property Name="Path[0]" Type="Path">../../builds/project_shell+SM-USB-DIG/TMP104EVM/TMP104EVM.zip</Property>
            <Property Name="ZipBase" Type="Str">NI_zipbasedefault</Property>
         </Item>
         <Item Name="TMP104EVMEXE" Type="EXE">
            <Property Name="App_applicationGUID" Type="Str">{388B8733-83EF-40CB-819C-242DED6EEF83}</Property>
            <Property Name="App_applicationName" Type="Str">TMP104EVM.exe</Property>
            <Property Name="App_companyName" Type="Str">Texas Instruments</Property>
            <Property Name="App_fileDescription" Type="Str">TMP104EVMEXE</Property>
            <Property Name="App_fileType" Type="Int">1</Property>
            <Property Name="App_fileVersion.major" Type="Int">1</Property>
            <Property Name="App_INI_aliasGUID" Type="Str">{DE905F20-507A-46F3-A291-50A362473A55}</Property>
            <Property Name="App_INI_GUID" Type="Str">{B2CF2D99-A03C-4A67-889D-D8769ED38082}</Property>
            <Property Name="App_internalName" Type="Str">TMP104EVMEXE</Property>
            <Property Name="App_productName" Type="Str">TMP104EVMEXE</Property>
            <Property Name="Bld_buildSpecName" Type="Str">TMP104EVMEXE</Property>
            <Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
            <Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
            <Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
            <Property Name="Destination[0].destName" Type="Str">TMP104EVM.exe</Property>
            <Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/TMP104EVMEXE/internal.llb</Property>
            <Property Name="Destination[0].type" Type="Str">App</Property>
            <Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
            <Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/TMP104EVMEXE/data</Property>
            <Property Name="DestinationCount" Type="Int">2</Property>
            <Property Name="Exe_iconItemID" Type="Ref">/My Computer/TI.ico</Property>
            <Property Name="Source[0].itemID" Type="Str">{A30354CB-B6CD-4850-9616-8D76908E783A}</Property>
            <Property Name="Source[0].type" Type="Str">Container</Property>
            <Property Name="Source[1].destinationIndex" Type="Int">0</Property>
            <Property Name="Source[1].itemID" Type="Ref">/My Computer/main_TMP104EVM.vi</Property>
            <Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
            <Property Name="Source[1].type" Type="Str">VI</Property>
            <Property Name="Source[2].destinationIndex" Type="Int">0</Property>
            <Property Name="Source[2].itemID" Type="Ref">/My Computer/l_pse_dll/Tio32.dll</Property>
            <Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
            <Property Name="Source[3].destinationIndex" Type="Int">0</Property>
            <Property Name="Source[3].itemID" Type="Ref">/My Computer/l_pse_dll/tio32.ini</Property>
            <Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
            <Property Name="SourceCount" Type="Int">4</Property>
         </Item>
         <Item Name="TMP104EVM Installer" Type="Installer">
            <Property Name="arpCompany" Type="Str">Texas Instruments</Property>
            <Property Name="arpURL" Type="Str">http://www.TI.com/</Property>
            <Property Name="AutoIncrement" Type="Bool">true</Property>
            <Property Name="BuildLabel" Type="Str">TMP104EVM Installer</Property>
            <Property Name="BuildLocation" Type="Path">../../Builds/project_TMP104EVM/TMP104EVM Installer</Property>
            <Property Name="DirInfo.Count" Type="Int">4</Property>
            <Property Name="DirInfo.DefaultDir" Type="Str">{F0B7B421-8C79-422D-B7E8-3E92EFCF203D}</Property>
            <Property Name="DirInfo[0].DirName" Type="Str">TMP104EVM</Property>
            <Property Name="DirInfo[0].DirTag" Type="Str">{F0B7B421-8C79-422D-B7E8-3E92EFCF203D}</Property>
            <Property Name="DirInfo[0].ParentTag" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
            <Property Name="DirInfo[1].DirName" Type="Str">data</Property>
            <Property Name="DirInfo[1].DirTag" Type="Str">{35A86AC7-6908-4651-A6C1-28854B67C96B}</Property>
            <Property Name="DirInfo[1].ParentTag" Type="Str">{F0B7B421-8C79-422D-B7E8-3E92EFCF203D}</Property>
            <Property Name="DirInfo[2].DirName" Type="Str">Config_Files</Property>
            <Property Name="DirInfo[2].DirTag" Type="Str">{C112CEF0-DB5D-452E-8A0A-5210DF81ADB1}</Property>
            <Property Name="DirInfo[2].ParentTag" Type="Str">{F0B7B421-8C79-422D-B7E8-3E92EFCF203D}</Property>
            <Property Name="DirInfo[3].DirName" Type="Str">Help</Property>
            <Property Name="DirInfo[3].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="DirInfo[3].ParentTag" Type="Str">{F0B7B421-8C79-422D-B7E8-3E92EFCF203D}</Property>
            <Property Name="DistID" Type="Str">{A140ED3A-B969-4302-B937-3178E7EFDDC1}</Property>
            <Property Name="DistParts.Count" Type="Int">1</Property>
            <Property Name="DistPartsInfo[0].FlavorID" Type="Str">DefaultFull</Property>
            <Property Name="DistPartsInfo[0].ProductID" Type="Str">{065F29A4-D4D9-4BB9-85AF-8A878907BBD6}</Property>
            <Property Name="DistPartsInfo[0].ProductName" Type="Str">NI LabVIEW Run-Time Engine 8.5.1</Property>
            <Property Name="DistPartsInfo[0].UpgradeCode" Type="Str">{99D796C3-2E53-4839-A25B-22C26B029103}</Property>
            <Property Name="FileInfo.Count" Type="Int">26</Property>
            <Property Name="FileInfo[0].DirTag" Type="Str">{F0B7B421-8C79-422D-B7E8-3E92EFCF203D}</Property>
            <Property Name="FileInfo[0].FileName" Type="Str">TMP104EVM.exe</Property>
            <Property Name="FileInfo[0].FileTag" Type="Str">{388B8733-83EF-40CB-819C-242DED6EEF83}</Property>
            <Property Name="FileInfo[0].Type" Type="Int">3</Property>
            <Property Name="FileInfo[0].TypeID" Type="Ref">/My Computer/Build Specifications/TMP104EVMEXE</Property>
            <Property Name="FileInfo[1].DirTag" Type="Str">{F0B7B421-8C79-422D-B7E8-3E92EFCF203D}</Property>
            <Property Name="FileInfo[1].FileName" Type="Str">TMP104EVM.aliases</Property>
            <Property Name="FileInfo[1].FileTag" Type="Str">{DE905F20-507A-46F3-A291-50A362473A55}</Property>
            <Property Name="FileInfo[1].Type" Type="Int">3</Property>
            <Property Name="FileInfo[1].TypeID" Type="Ref">/My Computer/Build Specifications/TMP104EVMEXE</Property>
            <Property Name="FileInfo[10].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[10].FileTag" Type="Ref">/My Computer/Help/Reg0.rtf</Property>
            <Property Name="FileInfo[11].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[11].FileTag" Type="Ref">/My Computer/Help/Reg1.rtf</Property>
            <Property Name="FileInfo[12].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[12].FileTag" Type="Ref">/My Computer/Help/Reg10.rtf</Property>
            <Property Name="FileInfo[13].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[13].FileTag" Type="Ref">/My Computer/Help/Reg11.rtf</Property>
            <Property Name="FileInfo[14].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[14].FileTag" Type="Ref">/My Computer/Help/Reg12.rtf</Property>
            <Property Name="FileInfo[15].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[15].FileTag" Type="Ref">/My Computer/Help/Reg13.rtf</Property>
            <Property Name="FileInfo[16].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[16].FileTag" Type="Ref">/My Computer/Help/Reg14.rtf</Property>
            <Property Name="FileInfo[17].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[17].FileTag" Type="Ref">/My Computer/Help/Reg15.rtf</Property>
            <Property Name="FileInfo[18].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[18].FileTag" Type="Ref">/My Computer/Help/Reg2.rtf</Property>
            <Property Name="FileInfo[19].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[19].FileTag" Type="Ref">/My Computer/Help/Reg3.rtf</Property>
            <Property Name="FileInfo[2].DirTag" Type="Str">{F0B7B421-8C79-422D-B7E8-3E92EFCF203D}</Property>
            <Property Name="FileInfo[2].FileName" Type="Str">TMP104EVM.ini</Property>
            <Property Name="FileInfo[2].FileTag" Type="Str">{B2CF2D99-A03C-4A67-889D-D8769ED38082}</Property>
            <Property Name="FileInfo[2].Type" Type="Int">3</Property>
            <Property Name="FileInfo[2].TypeID" Type="Ref">/My Computer/Build Specifications/TMP104EVMEXE</Property>
            <Property Name="FileInfo[20].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[20].FileTag" Type="Ref">/My Computer/Help/Reg4.rtf</Property>
            <Property Name="FileInfo[21].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[21].FileTag" Type="Ref">/My Computer/Help/Reg5.rtf</Property>
            <Property Name="FileInfo[22].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[22].FileTag" Type="Ref">/My Computer/Help/Reg6.rtf</Property>
            <Property Name="FileInfo[23].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[23].FileTag" Type="Ref">/My Computer/Help/Reg7.rtf</Property>
            <Property Name="FileInfo[24].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[24].FileTag" Type="Ref">/My Computer/Help/Reg8.rtf</Property>
            <Property Name="FileInfo[25].DirTag" Type="Str">{B7BDF7B4-44E0-4E0C-845C-DB762A0BA94D}</Property>
            <Property Name="FileInfo[25].FileTag" Type="Ref">/My Computer/Help/Reg9.rtf</Property>
            <Property Name="FileInfo[3].DirTag" Type="Str">{35A86AC7-6908-4651-A6C1-28854B67C96B}</Property>
            <Property Name="FileInfo[3].FileName" Type="Str">Tio32.dll</Property>
            <Property Name="FileInfo[3].FileTag" Type="Ref">/My Computer/l_pse_dll/Tio32.dll</Property>
            <Property Name="FileInfo[3].Type" Type="Int">3</Property>
            <Property Name="FileInfo[3].TypeID" Type="Ref">/My Computer/Build Specifications/TMP104EVMEXE</Property>
            <Property Name="FileInfo[4].DirTag" Type="Str">{35A86AC7-6908-4651-A6C1-28854B67C96B}</Property>
            <Property Name="FileInfo[4].FileName" Type="Str">tio32.ini</Property>
            <Property Name="FileInfo[4].FileTag" Type="Ref">/My Computer/l_pse_dll/tio32.ini</Property>
            <Property Name="FileInfo[4].Type" Type="Int">3</Property>
            <Property Name="FileInfo[4].TypeID" Type="Ref">/My Computer/Build Specifications/TMP104EVMEXE</Property>
            <Property Name="FileInfo[5].DirTag" Type="Str">{C112CEF0-DB5D-452E-8A0A-5210DF81ADB1}</Property>
            <Property Name="FileInfo[5].FileTag" Type="Ref">/My Computer/Config_Files/Bit_Config_16b.csv</Property>
            <Property Name="FileInfo[6].DirTag" Type="Str">{C112CEF0-DB5D-452E-8A0A-5210DF81ADB1}</Property>
            <Property Name="FileInfo[6].FileTag" Type="Ref">/My Computer/Config_Files/Bit_Config_8b.csv</Property>
            <Property Name="FileInfo[7].DirTag" Type="Str">{C112CEF0-DB5D-452E-8A0A-5210DF81ADB1}</Property>
            <Property Name="FileInfo[7].FileTag" Type="Ref">/My Computer/Config_Files/first_try.txt</Property>
            <Property Name="FileInfo[8].DirTag" Type="Str">{C112CEF0-DB5D-452E-8A0A-5210DF81ADB1}</Property>
            <Property Name="FileInfo[8].FileTag" Type="Ref">/My Computer/Config_Files/Table_Config.csv</Property>
            <Property Name="FileInfo[9].DirTag" Type="Str">{C112CEF0-DB5D-452E-8A0A-5210DF81ADB1}</Property>
            <Property Name="FileInfo[9].FileTag" Type="Ref">/My Computer/Config_Files/USB_DAQ.ini</Property>
            <Property Name="InstSpecVersion" Type="Str">8508002</Property>
            <Property Name="LicenseFile" Type="Ref"></Property>
            <Property Name="OSCheck" Type="Int">0</Property>
            <Property Name="OSCheck_Vista" Type="Bool">false</Property>
            <Property Name="ProductName" Type="Str">TMP104EVM</Property>
            <Property Name="ProductVersion" Type="Str">1.0.2</Property>
            <Property Name="ReadmeFile" Type="Ref"></Property>
            <Property Name="ShortcutInfo.Count" Type="Int">1</Property>
            <Property Name="ShortcutInfo[0].DirTag" Type="Str">{B9E310F1-839C-48B7-8CAE-33000780C26E}</Property>
            <Property Name="ShortcutInfo[0].FileTag" Type="Str">{388B8733-83EF-40CB-819C-242DED6EEF83}</Property>
            <Property Name="ShortcutInfo[0].FileTagDir" Type="Str">{F0B7B421-8C79-422D-B7E8-3E92EFCF203D}</Property>
            <Property Name="ShortcutInfo[0].Name" Type="Str">TMP104EVM</Property>
            <Property Name="ShortcutInfo[0].SubDir" Type="Str">TMP104EVM</Property>
            <Property Name="UpgradeCode" Type="Str">{49AA7575-7F7C-44DE-A6DC-2D825FC6DB73}</Property>
            <Property Name="WindowMessage" Type="Str">Welcome to the TMP104EVM installer.</Property>
            <Property Name="WindowTitle" Type="Str"> Welcome</Property>
         </Item>
      </Item>
   </Item>
</Project>
