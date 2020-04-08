$Inputxml = @"
<Window x:Name="WindowsServerInfoTool" x:Class="WpfApp2.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:WpfApp2"
        mc:Ignorable="d"
        Title="Windows Server Tool" Height="350" Width="525">
    <Grid>
        <TabControl HorizontalAlignment="Left" Height="321" VerticalAlignment="Top" Width="518" Margin="0,0,0,-0.2">
            <TabItem x:Name="TabServer" Header="ServerInfo" Margin="-4,-2,3.6,0">
                <Grid Background="#FFE5E5E5" Margin="0,-2,0.8,2">


                    <Label x:Name="ServerNamelabel" Content="Server Name :" HorizontalAlignment="Left" Margin="20,23,0,0" VerticalAlignment="Top" FontSize="14" Grid.ColumnSpan="2"/>
                    <Label x:Name="ServerListlabel" Content="Choose a .txt file from c:\temp for Servers List" HorizontalAlignment="Left" Margin="20,125,0,0" VerticalAlignment="Top" Width="397" FontSize="14" Grid.ColumnSpan="2"/>
                    <CheckBox x:Name="ServerMultiServercheckBox" Content="Mulitple Servers" HorizontalAlignment="Left" Margin="20,76,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <ComboBox x:Name="ServerServerComboBox" SelectedIndex="0" HorizontalAlignment="Left" Margin="20,159,0,0" VerticalAlignment="Top" Width="482" IsEnabled="False" Height="30" Grid.ColumnSpan="2"/>
                    <TextBox x:Name="ServertextBox" HorizontalAlignment="Left" Height="23" Margin="121,29,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="254" FontSize="14"/>
                    <Button x:Name="ServerGetReportbutton" Content="Get Report" HorizontalAlignment="Left" Margin="382,222,0,0" VerticalAlignment="Top" Width="120" Height="29" FontSize="14"/>

                </Grid>
            </TabItem>
            <TabItem x:Name="TabKb" Header="KbFinder" Margin="-3.6,-2,3.8,0">
                <Grid Background="#FFE5E5E5">


                    <Label x:Name="KBServernameLabel" Content="Enter Server Name to find KB:" HorizontalAlignment="Left" Margin="10,23,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <TextBox x:Name="KBServertextBox" HorizontalAlignment="Left" Height="23" Margin="207,29,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="237" FontSize="14" Grid.ColumnSpan="2"/>
                    <Label x:Name="KBdetailLabel" Content="Enter KB name to find:" HorizontalAlignment="Left" Margin="10,69,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <TextBox x:Name="KBKBtextBox" HorizontalAlignment="Left" Height="23" Margin="207,69,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="237" FontSize="14" Grid.ColumnSpan="2"/>
                    <CheckBox x:Name="KBMultiServercheckBox" Content="Mulitple Servers" HorizontalAlignment="Left" Margin="10,147,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <Label x:Name="KBServerListlabel" Content="Choose a .txt file from c:\temp for Servers List" HorizontalAlignment="Left" Margin="10,170,0,0" VerticalAlignment="Top" Width="397" FontSize="14" Grid.ColumnSpan="2"/>
                    <ComboBox x:Name="KBServerComboBox" SelectedIndex="0" HorizontalAlignment="Left" Margin="10,204,0,0" VerticalAlignment="Top" Width="482" IsEnabled="False" Height="30" Grid.ColumnSpan="2"/>
                    <Button x:Name="KBGetReportbutton" Content="Get Report" HorizontalAlignment="Left" Margin="129.186,253,0,0" VerticalAlignment="Top" Width="120" Height="29" FontSize="14" Grid.Column="1"/>
                    <Label x:Name="KBStatusOutputLabel" Content="" HorizontalAlignment="Left" Margin="207,106,0,0" VerticalAlignment="Top" Width="171" FontStyle="Italic" FontWeight="Bold" Background="Black" Foreground="#FF16F952" HorizontalContentAlignment="Center" Grid.ColumnSpan="2"/>
                    <Label x:Name="KBStatusLabel" Content="KB Status" HorizontalAlignment="Left" Margin="10,106,0,0" VerticalAlignment="Top" Width="147" FontSize="14"/>
                    
                </Grid>
            </TabItem>
            <TabItem x:Name="TabApp" Header="ApplicationInfo" Margin="-6,-2,1.8,0">
                <Grid Background="#FFE5E5E5">

                    <Label x:Name="AppServernameLabel" Content="ServerName to find Application on it:" HorizontalAlignment="Left" Margin="10,23,0,0" VerticalAlignment="Top" FontSize="14" Grid.ColumnSpan="2"/>
                    <TextBox x:Name="AppServertextBox" HorizontalAlignment="Left" Height="23" Margin="253,29,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="237" FontSize="14" Grid.Column="1"/>
                    <CheckBox x:Name="AppMultiServercheckBox" Content="Mulitple Servers" HorizontalAlignment="Left" Margin="10,67,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <Label x:Name="AppSearchNameLabel" Content="Enter an Application to Search:" HorizontalAlignment="Left" Margin="10,172,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <TextBox x:Name="AppSearchtextBox" HorizontalAlignment="Left" Height="23" Margin="253,178,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="237" FontSize="14" IsEnabled="False"/>
                    <Label x:Name="AppServerListlabel" Content="Choose a .txt file from c:\temp for Servers List" HorizontalAlignment="Left" Margin="10,90,0,0" VerticalAlignment="Top" Width="397" FontSize="14"/>
                    <ComboBox x:Name="AppServerComboBox" SelectedIndex="0" HorizontalAlignment="Left" Margin="10,124,0,0" VerticalAlignment="Top" Width="482" IsEnabled="False" Height="30"/>
                    <Button x:Name="AppGetReportbutton" Content="Get Report" HorizontalAlignment="Left" Margin="123.39,253,0,0" VerticalAlignment="Top" Width="120" Height="29" FontSize="14" Grid.Column="1"/>
                </Grid>
            </TabItem>
            <TabItem x:Name="SpaceInfo" Header="SpaceInfo" Margin="-5.6,-2,1.6,0">
                <Grid Background="#FFE5E5E5">


                    <Label x:Name="SpaceServernameLabel" Content="ServerName to find Application on it:" HorizontalAlignment="Left" Margin="10,23,0,0" VerticalAlignment="Top" FontSize="14" Grid.ColumnSpan="2"/>
                    <TextBox x:Name="SpaceServertextBox" HorizontalAlignment="Left" Height="23" Margin="248,29,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="237" FontSize="14"/>
                    <Button x:Name="SpaceGetReportbutton" IsEnabled="False" Content="Get Report" HorizontalAlignment="Left" Margin="209.182,253,0,0" VerticalAlignment="Top" Width="120" Height="29" FontSize="14" Grid.Column="1"/>
                    <Button x:Name="SpaceGetDiskButton" Content="Get available Disks" HorizontalAlignment="Left" Margin="10,68,0,0" VerticalAlignment="Top" Width="149" Height="29" FontSize="14"/>
                    <ComboBox x:Name="SpaceComboBox" SelectedIndex="0"  HorizontalAlignment="Left" Margin="175,68,0,0" VerticalAlignment="Top" Width="113" IsEnabled="False" Height="30"/>
                    <CheckBox x:Name="SpaceMultiServercheckBox" Content="Mulitple Servers" HorizontalAlignment="Left" Margin="10,136,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <ComboBox x:Name="SpaceServerComboBox" SelectedIndex="0" HorizontalAlignment="Left" Margin="10,193,0,0" VerticalAlignment="Top" Width="482" IsEnabled="False" Height="30"/>
                    <Label x:Name="SpaceServerListlabel" Content="Choose a .txt file from c:\temp for Servers List" HorizontalAlignment="Left" Margin="10,159,0,0" VerticalAlignment="Top" Width="397" FontSize="14"/>
                    <Label x:Name="SpaceStatusOutputLabel" Content="" HorizontalAlignment="Left" Margin="308,68,0,0" VerticalAlignment="Top" Width="76" FontStyle="Italic" FontWeight="Bold" Background="Black" Foreground="#FF16F952" HorizontalContentAlignment="Center" Height="30"/>
                </Grid>
            </TabItem>
            <TabItem x:Name="TelnetInfo" Header="Telnet Tool" Margin="-5.6,-2,-12.6,0">
                <Grid Background="#FFE5E5E5">
                    <Label x:Name="TelnetServerLabel" Content="Select a ServerList from  &quot;c:\temp&quot;:" HorizontalAlignment="Left" Margin="10,92,0,0" VerticalAlignment="Top" Width="231" FontSize="14"/>
                    <ComboBox x:Name="TelnetComboBox" IsEnabled="False" HorizontalAlignment="Left" Margin="241,92,0,0" VerticalAlignment="Top" Width="257" FontSize="14" Height="29"/>
                    <Label x:Name="TelnetPortLabel" Content="Port Number:" HorizontalAlignment="Left" Margin="10,126,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <TextBox x:Name="TelnetPortTextBox" HorizontalAlignment="Left" Height="29" Margin="241,126,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="120" FontSize="14"/>
                    <Label x:Name="TelnetTarget" Content="Telnet Target (ServerName or IP):" HorizontalAlignment="Left" Margin="10,160,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <TextBox x:Name="TelnetTargetTextBox" HorizontalAlignment="Left" Height="29" Margin="241,160,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="120" FontSize="14"/>
                    <Button x:Name="TelnetButton" Content="Telnet Report" HorizontalAlignment="Left" Margin="314,218,0,0" VerticalAlignment="Top" Width="184" Height="46" FontSize="14"/>
                    <CheckBox x:Name="TelnetMultiServerCheckbox" Content="Mulitple Servers" HorizontalAlignment="Left" Margin="10,69,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <Label x:Name="TelnetSingleServerLabel" Content="Source ServerName" HorizontalAlignment="Left" Margin="10,23,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <TextBox x:Name="TelnetSingleServerTextBox" HorizontalAlignment="Left" Height="31" Margin="241,29,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="237" FontSize="14"/>
                    <Label x:Name="TelnetStatusOutputLabel" Content="" HorizontalAlignment="Left" Margin="19,218,0,0" VerticalAlignment="Top" Width="143" FontStyle="Italic" FontWeight="Bold" Background="Black" Foreground="#FF16F952" HorizontalContentAlignment="Center" Height="46"/>
                    <CheckBox x:Name="TelnetSourceCheckbox" Content="Source Server" HorizontalAlignment="Left" Margin="378,166,0,0" VerticalAlignment="Top" FontSize="14"/>
                </Grid>
            </TabItem>
            <TabItem x:Name="TabGPUpdate" Header="GPUpdate" Margin="4.4,-2,-11.8,0">
                <Grid Background="#FFE5E5E5" Margin="0,-2,0.8,2">


                    <Label x:Name="SingleServerlabelGP" Content="Server Name :" HorizontalAlignment="Left" Margin="20,23,0,0" VerticalAlignment="Top" FontSize="14" Grid.ColumnSpan="2"/>
                    <Label x:Name="ServerListlabelGP" Content="Choose a .txt file from c:\temp for Servers List" HorizontalAlignment="Left" Margin="20,109,0,0" VerticalAlignment="Top" Width="397" FontSize="14"/>
                    <CheckBox x:Name="ServerMultiServercheckBoxGP" Content="Mulitple Servers" HorizontalAlignment="Left" Margin="20,86,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <ComboBox x:Name="MultiServerComboBoxGP" SelectedIndex="0" HorizontalAlignment="Left" Margin="20,159,0,0" VerticalAlignment="Top" Width="482" IsEnabled="False" Height="30" Grid.ColumnSpan="2"/>
                    <TextBox x:Name="SingleServertextBoxGP" HorizontalAlignment="Left" Height="23" Margin="121,29,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="254" FontSize="14"/>
                    <Button x:Name="ButtonGPUpdate" Content="GP Update" HorizontalAlignment="Left" Margin="382,222,0,0" VerticalAlignment="Top" Width="120" Height="29" FontSize="14"/>

                </Grid>
            </TabItem>
            <TabItem x:Name="TabSuperCopy" Header="SuperCopy" Margin="8,-2,-15.4,0">
                <Grid Background="#FFE5E5E5" Margin="0,-2,0.8,2">
                    <Label x:Name="SourceLabelSC" Content="Source Path:" HorizontalAlignment="Left" Margin="20,21,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <TextBox x:Name="SourceTextBoxSC" HorizontalAlignment="Left" Height="23" Margin="115,21,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="381" FontSize="14"/>
                    <Label x:Name="DestinationLabelSC" Content="Destination &#xD;&#xA;Path:" HorizontalAlignment="Left" Margin="20,49,0,0" VerticalAlignment="Top" FontSize="14" Width="83" Height="54"/>
                    <TextBox x:Name="DestinationTextBoxSC" HorizontalAlignment="Left" Height="23" Margin="115,57,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="381" FontSize="14"/>
                    <CheckBox x:Name="MultiServercheckBoxSC" Content="Mulitple Servers" HorizontalAlignment="Left" Margin="20,103,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <Label x:Name="MultiServerListlabelSC" Content="Choose a .txt file from c:\temp for Servers List" HorizontalAlignment="Left" Margin="20,127,0,0" VerticalAlignment="Top" Width="397" FontSize="14"/>
                    <ComboBox x:Name="MultiServerComboBoxSC" SelectedIndex="0" HorizontalAlignment="Left" Margin="20,161,0,0" VerticalAlignment="Top" Width="482" IsEnabled="False" Height="30"/>
                    <Label x:Name="ActionComboBoxLabelSC" Content="Action" HorizontalAlignment="Left" Margin="20,198,0,0" VerticalAlignment="Top" Width="397" FontSize="14"/>
                    <ComboBox x:Name="ActionComboBoxSC" SelectedIndex="0" HorizontalAlignment="Left" Margin="86,198,0,0" VerticalAlignment="Top" Width="416" Height="30"/>
                    <Button x:Name="ButtonSuperCopySC" Content="Super Copy" HorizontalAlignment="Left" Margin="376,239,0,0" VerticalAlignment="Top" Width="120" Height="29" FontSize="14"/>
                </Grid>
            </TabItem>
             <TabItem x:Name="TabEMDB" Header="EMDB" Margin="8,-2,44.6,0">
                <Grid Background="#FFE5E5E5" Margin="0,-2,0.8,2">
                <TextBox x:Name="EMDBtextBoxSingleServer" HorizontalAlignment="Left" Height="23" Margin="209,25,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="285" FontSize="14"/>
                    <Label x:Name="EMDBlabelSingleServer" Content="Server Name" HorizontalAlignment="Left" Margin="10,22,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <CheckBox x:Name="EMDBcheckBoxMultiServer" Content="Multiple Servers" HorizontalAlignment="Left" Margin="10,53,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <Label x:Name="EMDBlabelMultiServer" Content="Select ServerList (c:\Temp)" HorizontalAlignment="Left" Margin="10,73,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <ComboBox x:Name="EMDBcomboBoxMultiServer" HorizontalAlignment="Left" Margin="209,76,0,0" VerticalAlignment="Top" Width="285" IsEnabled="False" FontSize="14"/>
                    <Label x:Name="EMDBlabelOperation" Content="Select Operation" HorizontalAlignment="Left" Margin="10,104,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <ComboBox x:Name="EMDBcomboBoxOperation" HorizontalAlignment="Left" Margin="209,107,0,0" VerticalAlignment="Top" Width="285" FontSize="14"/>
                    <Label x:Name="EMDBlabelDuration" Content="Duration (minutes)" HorizontalAlignment="Left" Margin="10,135,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <Label x:Name="EMDBlabelAproachNumber" Content="Enter Win@proach Number" HorizontalAlignment="Left" Margin="10,166,0,0" VerticalAlignment="Top" FontSize="14"/>
                    <TextBox x:Name="EMDBtextBoxDuration" HorizontalAlignment="Left" Height="23" Margin="209,137,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="285" IsEnabled="False" FontSize="14"/>
                    <TextBox x:Name="EMDBtextBoxAproachNumber" HorizontalAlignment="Left" Height="23" Margin="209,168,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="285" IsEnabled="False" FontSize="14"/>
                    <Button x:Name="EMDBbuttonStart" Content="START" HorizontalAlignment="Left" Margin="209,215,0,0" VerticalAlignment="Top" Width="143" Height="26" FontSize="16" />
                    <Button x:Name="EMDBbuttonExit" Content="EXIT" HorizontalAlignment="Left" Margin="351,215,0,0" VerticalAlignment="Top" Width="143" Height="26" IsCancel="True"  Background="#FFF9B4B4" FontSize="16"/>
                
                </Grid>
            </TabItem>

        </TabControl>

    </Grid>
</Window>
"@
$inputXML = $inputXML -replace 'mc:Ignorable="d"', '' -replace "x:N", 'N' -replace '^<Win.*', '<Window'
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML
$comp = $env:COMPUTERNAME


$reader = (New-Object System.Xml.XmlNodeReader $XAML)
try {
    $Form = [Windows.Markup.XamlReader]::Load( $reader )
}
catch { Write-Host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed." }

$xaml.SelectNodes("//*[@Name]") | % { Set-Variable -Name "WPF$($_.Name)" -Value $Form.FindName($_.Name) }


#+++++++++++++++++++++++++++++++++++++++++++++++++++Customization ServerInfo Tab

$WPFServerMultiServercheckBox.add_Checked( {
        $WPFspaceServerCombobox.items.Clear()
        $WPFServerServerComboBox.IsEnabled = $true
        $WPFServertextBox.IsEnabled = $false
        Get-ChildItem "\\$comp\C$\temp\*.txt" | select -exp Name | ForEach-Object { $WPFServerServerCombobox.AddChild($_) }
    })
$WPFServerMultiServercheckBox.add_UNChecked( {
        $WPFServerServerComboBox.Items.Clear()
        $WPFServerServerComboBox.IsEnabled = $false
        $WPFServertextBox.IsEnabled = $True
        #$ServerServers=$WPFServertextBox.Text

    })

$WPFServerGetReportbutton.Add_Click( {
        Write-Progress -Activity "In ProgresS" -Status "Running" -PercentComplete  0
        If ($WPFServerMultiServercheckBox.IsChecked) {
            $ServerServers = get-content -Path "\\$Comp\C$\temp\$($WPFServerServerComboBox.SelectedItem)"
        }
        else {
            If ($WPFServertextBox.text -eq "" ) {
                [System.Windows.Forms.MessageBox]::Show("Specify a ServerName to search")
            }
            else {
                $ServerServers = $WPFServertextBox.Text
            }
        }
        if ($ServerServers -ne "" ) {
    

            $object = @()
            $i = 0
            $Count = $ServerServers.length
            foreach ($Server in $ServerServers) {
                If ($i -lt $Count) {
                    $j = ($i / $Count) * 100
                    $j
                    Write-Progress -Activity "In Progress $server" -Status "$j% Complete" -PercentComplete  $j
                }




                ###########################IP#####################################
                If (Test-Connection $Server -Count 1 -ErrorAction SilentlyContinue) {
                Try{
                $Object+=Invoke-Command -ComputerName $server -ScriptBlock{
                    $IP = Get-NetIPAddress|where {$_.AddressFamily -eq 'IPv4'}|Select -exp IPAddress -First 1
                    ###########################ProcessorName#####################################
                    $Processor = Get-WmiObject -Class win32_Processor | select Name, NumberOfCores, NumberOfLogicalProcessors
                    $Sockets = $processor.Count
                    $ProcessorName = $processor | select -exp Name -First 1
                    $NoOfCores = $processor | select -exp NumberOfCores -First 1
                    $NoOfLogicalCores = $processor | select -exp NumberOfLogicalProcessors -First 1
                    ###########################cSpace#####################################
                    $CSpace = Get-WmiObject win32_LogicalDisk -Filter "DeviceID='c:'" | select @{n = "DriveSize"; e = { "$([math]::Round($_.Size/1GB,2))GB" } }, @{n = "FreeSpace"; e = { "$([math]::Round($_.FreeSpace/1GB))GB" } }
                    $CDriveSize = $CSpace | select -exp DriveSize
                    $CFreeSpace = $CSpace | select -exp FreeSpace
                    ###########################OSversion#####################################
                    $Win32_OS = Get-WmiObject -Class win32_OperatingSystem -ErrorAction SilentlyContinue
                    $OSVersion = "$($Win32_OS|select -exp Caption)" + "$($Win32_OS|select -exp  OSArchitecture)"
                    ###########################Uptime#####################################
                    $lastboottime = $Win32_OS.LastBootUpTime            
                    $sysuptime = (Get-Date) – [System.Management.ManagementDateTimeconverter]::ToDateTime($lastboottime)            
                    $uptime = "$($sysuptime.days)"
                    ###########################Virtual#####################################
                    $VorP = Get-WmiObject -Class win32_ComputerSystem
                    $ManuFacturer = $VorP | select -ExpandProperty Manufacturer
                    $Model = $VorP | select -ExpandProperty Model
                    $Ram = $VorP | select @{n = "RAM"; e = { "$([math]::Round($_.TotalPhysicalMemory/1GB,2))GB $($_.Manufacturer)" } } | select -exp Ram
                    ###########################CitrixPatchInstallLatest#####################################
                    $WinPatch = (Get-HotFix | sort Installedon -Descending | select -First 1)
                    $KB = $WinPatch | select -exp HotfixID
                    $WinPatchDate = $WinPatch | Select -exp InstalledOn | Get-Date -Format "dd-MM-yyyy"
                   
                    ###########################WinPatchInstallLatest#####################################
                    #$WinPAtch = (Get-HotFix -ComputerName $Server | sort Installedon -Descending | select -First 1 -ExpandProperty InstalledOn) | get-date -Format "yyyy:MM:dd"
                    ################################################################
                    $server=$env:COMPUTERNAME
                    $Props = [ordered]@{Servername = $Server
                        IPAddress                  = $IP
                        OSVersion                  = $OSVersion
                        UptimeDays                 = $uptime
                        Lastpatch                  =$WinPatchDate
                        SMftr                      = $ManuFacturer
                        SModel                       = $Model
                        PName                      = $ProcessorName
                        Cores                     = $Sockets
                        RAM                        = $Ram
                        CSize                      = $CDriveSize
                        CFree                      = $CFreeSpace
                        

                    }
                    $obj = New-object -TypeName psobject -Property $props
                    $obj
                    } -AsJob
                    }
                    catch{
                        $Server|Out-File c:\temp\sysinfoFailed.txt -Append
                    }


                }


                else {

                    $Server|Out-File c:\temp\sysinfoFailed.txt -Append
                    }
                   
                
                $i++
            }
            $object|Wait-Job
            $receivedJob=@()
            $receivedJob=$object|Receive-Job
            $receivedJob|select Servername,IPAddress,OSVersion,UptimeDays,Lastpatch,SMftr,SModel,PName,Cores,RAM,CSize,CFree|Out-GridView -Title "Server Report"
            Write-Progress -Activity "Completed" -Status "100 Complete" -PercentComplete  100
            $receivedJob|Out-File c:\temp\sysinfo.txt
            notepad c:\temp\sysinfo.txt
            if(get-item c:\temp\sysinfoFailed.txt -ErrorAction SilentlyContinue){
            notepad c:\temp\sysinfoFailed.txt
            }
            
        }

    })









#++++++++++++++++++++++++++++++++++++++++++++++++++\Customization ServerInfo Tab

#++++++++++++++++++++++++++++++++++++++++++++++Customization KBFinderTab++++++++++++++
$WPFkbMultiServercheckBox.add_Checked( {
        $WPFspaceServerCombobox.items.Clear()
        $WPFKbServerComboBox.IsEnabled = $true
        $WPFKbServertextBox.IsEnabled = $false
        Get-ChildItem "\\$comp\C$\temp\*.txt" | select -exp Name | ForEach-Object { $WPFkbServerCombobox.AddChild($_) }
    })
$WPFkbMultiServercheckBox.add_UNChecked( {
        $WPFkbServerComboBox.items.Clear()
        $WPFkbServerComboBox.IsEnabled = $false
        $WPFkbServertextBox.IsEnabled = $True
        $KbServers = $WPFkbServertextBox.Text
    })


$WPFKBGetReportbutton.Add_Click( {

        If ($WPFKBKBtextBox.text -eq "") {
            [System.Windows.Forms.MessageBox]::Show("Specify a KB to search")
        }
        else {
            $kbname = $WPFKBKBtextBox.text
            If ($WPFkbMultiServercheckBox.IsChecked) {

                $object = @()
                $kbServers = ""
                $i = 0
    
        
                $kbServers = get-content -Path "\\$Comp\C$\temp\$($WPFkbServerComboBox.SelectedItem)"
                $Count = $kbServers.length
                $objs=@()
                    
                foreach ($Server in $kbServers) {
                    Write-Progress -Activity "StartingLoop" -Status "Starting" -PercentComplete 0
                    If ($i -lt $Count) {
                        $j = ($i / $Count) * 100
         
                        Write-Progress -Activity "In Progress $server" -Status "$j% Complete" -PercentComplete  $j
                    }
                    if (Test-Connection -ComputerName $Server -Count 1 -ErrorAction SilentlyContinue) {
                        $objs+=Invoke-Command -ComputerName $server -ScriptBlock {Get-HotFix -id $args[0] -ErrorAction SilentlyContinue} -ArgumentList $kbname -AsJob

                       
                    }
                    else {

                              $Props = [ordered]@{Servername = $Server
                                KbName                     = $kbname
                                Status                     = "Unpingable"
                                KBDetail                   = "Unpingable"
                                InstalledOn                = "Unpingable"
                                InstalledBy                = "Unpingable"
                            }
                            
                            

                    $object += New-object -TypeName psobject -Property $props
                        }
                        $i++
                     }
                    $objs|Wait-Job
                    $objsfound=@()
                    $objsNotFound=$objs|Where-Object {$_.HasMoreData -eq $false}
                    $objsfounddata=$objs|Where-Object {$_.HasMoreData -eq $true}
                    $objsfound=$objsfounddata|Receive-Job 
         
                     Foreach($obj in $objsfound){
                        If($obj){
                            $Props = [ordered]@{Servername = $obj.PSComputerName
                                KbName                     = $kbname
                                Status                     = "Found"
                                KBDetail                   = $($obj.Caption)
                                InstalledOn                = $($obj.InstalledOn)
                                InstalledBy                = $($obj.InstalledBy)
                            }
                            }
                            

                    $object += New-object -TypeName psobject -Property $props
                    }
                     Foreach($obj in $objsNotFound){
                        If($obj){
                            $Props = [ordered]@{Servername = $obj.Location
                                KbName                     = $kbname
                                Status                     = $obj.HasMoreData
                                KBDetail                   = $obj.HasMoreData
                                InstalledOn                = $obj.HasMoreData
                                InstalledBy                = $obj.HasMoreData
                            }
                            }
                            

                    $object += New-object -TypeName psobject -Property $props
                    }
                    
                    

                
                Write-Progress -Activity "Completed" -Status "100 Complete" -PercentComplete  100
                $object | Out-GridView -Title "Server Report Output"    
            }
      
            else {
                if ($WPFKBServertextBox.text -eq "") {
                    [System.Windows.Forms.MessageBox]::Show("Specify a ServerName to search")
                }
                else {
                    $kbServer = $WPFKBServertextBox.Text
                    if (Get-HotFix -ComputerName $kbServer -id $kbname -ErrorAction SilentlyContinue) {
                        $WPFKBStatusOutputLabel.Content = ("Found")
                    }
                    else {
                        $WPFKBStatusOutputLabel.Content = ("NotFound")
                    }
                }
                $object | Out-GridView    
            }
        }
        
   
    })
    
<#
$object = @()
$i = 0
$Count = $ServerServers.length
foreach ($Server in $kbServers) {
    If ($i -lt $Count) {
        $j = ($i / $Count) * 100
        $j
        Write-Progress -Activity "In Progress $server" -Status "$j% Complete" -PercentComplete  $j

    }
    If (Test-Connection $Server -Count 1 -ErrorAction SilentlyContinue) {
        ###########################WinPatchInstallLatest#####################################
        $WinPatch = (Get-HotFix -ComputerName $Server | sort Installedon -Descending | select -First 1)
        $KB = $WinPatch | select -exp HotfixID
        $WinPatchDate = $WinPatch | Select -exp InstalledOn | Get-Date -Format "dd-MM-yyyy"

    }

    }

    #>

    #+++++++++++++++++++++++++++++++++++++++++++++++++\kbFinderTab+++++++++++++++++++++++++++++++++++++++++++

    #++++++++++++++++++++++++++++++++++++++++++++++Customization AppFinderTab++++++++++++++


    $WPFAppMultiServercheckBox.add_Checked( {
            $WPFAppServerCombobox.items.Clear()
            $WPFAppServerComboBox.IsEnabled = $true
            $WPFappServertextBox.IsEnabled = $false
            $WPFAppSearchtextBox.IsEnabled = $True
            Get-ChildItem "\\$comp\C$\temp\*.txt" | select -exp Name | ForEach-Object { $WPFappServerCombobox.AddChild($_) }
        })
    $WPFappMultiServercheckBox.add_UNChecked( {
            $WPFappServerComboBox.items.Clear()
            $WPFappServerComboBox.IsEnabled = $false
            $WPFappServertextBox.IsEnabled = $True
            $WPFAppSearchtextBox.IsEnabled = $False

        })


        
    $WPFAppGetReportbutton.Add_Click( {

            If ($WPFAppMultiServercheckBox.IsChecked) {
                Write-Progress -Activity "Starting...." -Status "Fetching Server details" -PercentComplete  0
                If ($WPFAppSearchtextBox.Text -eq "") {
                    [System.Windows.Forms.MessageBox]::Show("Specify a Application to Search")

                }
                else {
                    $object = @()
                    $AppServers = ""
                    $i = 0
    
        
                    $AppServers = get-content -Path "\\$Comp\C$\temp\$($WPFAppServerComboBox.SelectedItem)"
                    $Count = $AppServers.length
                    foreach ($Server in $AppServers) {
    
                        If ($i -lt $Count) {
                            $j = ($i / $Count) * 100
         
                            Write-Progress -Activity "In Progress $server" -Status "$j% Complete" -PercentComplete  $j
                        } 
                        if (Test-Connection -ComputerName $Server -Count 1 -ErrorAction SilentlyContinue) {

                            Write-Warning "Searching in Server $server"
                            $64BitApps = reg query "\\$server\HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall"
                            $32BitApps = reg query "\\$server\HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
            

                            foreach ($64BitApp in $64BitApps) {
                                $64bitapp = $64BitApp -replace "HKEY_LOCAL_MACHINE", "\\$server\hklm"
                                $64bitAppTest = (reg query $64BitApp /v Displayname 2>text.txt) -split "    Displayname    REG_SZ    " | select -First 1 -Skip 3
                                $64bitappVersion = (reg query $64BitApp /v DisplayVersion 2>text.txt) -split "    DisplayVersion    REG_SZ    " | select -First 1 -Skip 3
                                If ($64bitAppTest -match "$($WPFAppSearchtextBox.text)") {
                                    #Write-Warning "$Server inside 64"
                                    #(reg query $64BitApp /v Displayname) -split "    Displayname    REG_SZ    "|select -First 1 -Skip 3|Where-Object {$_ -match "$($WPFAppSearchtextBox.text)"}
                                    $Status = "Found"
                                    $ApplicationFound = $64bitAppTest
                                    $ApplicationVersion = $64bitappVersion
                                    break
                                }
                            }

                            If ($status -ne "Found") {
                                foreach ($32BitApp in $32BitApps) {
                                    $32bitapp = $32BitApp -replace "HKEY_LOCAL_MACHINE", "\\$server\hklm"
                                    $32bitAppTest = (reg query $32BitApp /v Displayname 2>text.txt) -split "    Displayname    REG_SZ    " | select -First 1 -Skip 3
                                    $32bitappVersion = (reg query $32BitApp /v DisplayVersion 2>text.txt) -split "    DisplayVersion    REG_SZ    " | select -First 1 -Skip 3
                                    If ($32bitAppTest -match "$($WPFAppSearchtextBox.text)") {
                                        #(reg query $32BitApp /v Displayname) -split "    Displayname    REG_SZ    "|select -First 1 -Skip 3|Where-Object {$_ -match "$($WPFAppSearchtextBox.text)"}
                                        #Write-Warning "$Server inside 32"
                                        $Status = "Found"
                                        $ApplicationFound = $32bitAppTest
                                        $ApplicationVersion = $32bitappVersion
                                        break
                                    }
                                }
                            }
                            IF ($Status -ne "Found") {
                                $status = "NotFound"
                                $ApplicationFound = "ApplicationNotFound"
                                $ApplicationVersion = "NotFound"
                            }

                            $prop = @{
                                ServerName         = $Server
                                ApplicationName    = $ApplicationFound
                                ApplicationVersion = $ApplicationVersion
                                ApplicationStatus  = $Status

                            }
                            $status = ""
                            $obj = New-Object -TypeName PsObject -Property $prop
                            $object += $obj
                        }
                        Else {
                            $prop = @{
                                ApplicationStatus  = "$Server Unpingable"
                                ServerName         = $Server
                                ApplicationName    = "Unpingable"
                                ApplicationVersion = "Unpingable"
                            }
                            $obj = New-Object -TypeName PsObject -Property $prop
                            $object += $obj
                        }

                        $i++
            


                    }
                    Write-Progress -Activity "Completed ..." -Status "Output..." -PercentComplete  100
                    $object | Out-GridView
                }
            }
            else {

                $Server = $WPFAppServertextBox.text
                If ($Server -eq "") {
                    [System.Windows.Forms.MessageBox]::Show("Specify a Servername to search")
                }
                else {
                    write-warning "Working on Server $server "
                    if (Test-Connection -ComputerName $Server -Count 1 -ea SilentlyContinue) {
        
                        $64BitApps = reg query "\\$server\HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall"
                        $32BitApps = reg query "\\$server\HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
                        $DisplayNames = @()

                        foreach ($64BitApp in $64BitApps) {
                            $64bitapp = $64BitApp -replace "HKEY_LOCAL_MACHINE", "\\$server\hklm"
                            $DisplayNames += (reg query $64BitApp /v Displayname 2>text.txt) -split "    Displayname    REG_SZ    " | select -First 1 -Skip 3 | Where-Object { $_ -notmatch "(KB*)" }
                        }

                        foreach ($32BitApp in $32BitApps) {
                            $32bitapp = $32BitApp -replace "HKEY_LOCAL_MACHINE", "\\$server\hklm"
                            $DisplayNames += (reg query $32BitApp /v Displayname 2>text.txt) -split "    Displayname    REG_SZ    " | select -First 1 -Skip 3 | Where-Object { $_ -notmatch "(KB*)" }
                        }
                        $Applications = $DisplayNames | select -Unique | Sort -Descending

                        $Applications | Out-GridView -Title "Application on $Server"
                    }
        
        
                    Else {
                        "PINGFailed" | Out-GridView -Title "Application on $Server"
                    }

                }

            }


        })

    #If Single Server is used






    #+++++++++++++++++++++++++++++++++++++++++++++++++\APPFinderTab+++++++++++++++++++++++++++++++++++++++++++
    #+++++++++++++++++++++++++++++++++++++++++++++++++SpaceFinderTab+++++++++++++++++++++++++++++++++++++++++++







    $WPFSpaceGetDiskButton.Add_Click( {
            If($WPFSpaceMultiServercheckBox.IsChecked -eq $false){
            $server = $WPFSpaceServertextBox.text
            }
            else{
            $SpaceServers = get-content -Path "\\$Comp\C$\temp\$($WPFSpaceServerComboBox.SelectedItem)"
            $server=$SpaceServers[0]
            }
            
            If ($Server -eq "") {
                [System.Windows.Forms.MessageBox]::Show("Specify a Servername to search")
            }
            else {

                if (Test-Connection -ComputerName $Server -Count 1 -ea SilentlyContinue) {
                    $WPFSpaceComboBox.IsEnabled = $true
                    Get-WmiObject win32_LogicalDisk -ComputerName $Server | select -ExpandProperty DeviceID | ForEach-Object { $WPFSpaceComboBox.AddChild($_) }
                    $WPFSpaceGetReportbutton.IsEnabled = $true
                    $WPFSpaceMultiServercheckBox.IsEnabled = $true

                }

            }
        })
    if ($($WPFSpaceComboBox.SelectedItem) -ne "") {
        $WPFSpaceMultiServercheckBox.add_Checked( {
                $WPFSpaceServerComboBox.items.Clear()
                $WPFSpaceServerComboBox.IsEnabled = $true
                $WPFSpaceServertextBox.IsEnabled = $false
        
                Get-ChildItem "\\$comp\C$\temp\*.txt" | select -exp Name | ForEach-Object { $WPFSpaceServerCombobox.AddChild($_) }
            })
        $WPFSpaceMultiServercheckBox.add_UNChecked( {
                $WPFSpaceServerComboBox.Items.Clear()
                $WPFSpaceServerComboBox.IsEnabled = $false
                $WPFSpaceServertextBox.IsEnabled = $True
        

            })
    }

    $WPFSpaceGetReportbutton.Add_Click( {
            If ($WPFSpaceMultiServercheckBox.IsChecked) {
                $object = @()
                $SpaceServers = get-content -Path "\\$Comp\C$\temp\$($WPFSpaceServerComboBox.SelectedItem)"
                #Write-Host "$SpaceServers"
                foreach ($Server in $SpaceServers) {
    
                    if (Test-Connection -ComputerName $Server -Count 1 -ErrorAction SilentlyContinue) {
 
                        Write-Warning "Searching in Server $server"
                        $Space = Get-WmiObject win32_LogicalDisk -ComputerName $Server -Filter "DeviceID='$($WPFSpaceComboBox.SelectedItem)'" | select SystemName, VolumeName, @{n = "FreeSpace"; e = { ($_.FreeSpace) / 1GB } }
                        Write-Host "$space"
                        $prop = @{Servername = $Server
                            VolumeName       = $($space.VolumeName)
                            FreeSpaceGB      = $($space.FreeSpace)
                        }
                        $obj = New-Object -TypeName PsObject -Property $prop
                        $object += $obj
                    }
                    Else {
                        $prop = @{Servername = $Server
                            VolumeName       = "Unpingable"
                            FreeSpaceGB      = "Unpingable"
                        }
                        $obj = New-Object -TypeName PsObject -Property $prop
                        $object += $obj
                    }


                }
                $object | Out-GridView -Title "Servers $($WPFSpaceServertextBox.Text) Space Infomation"
            }

            Else {
                $Space = Get-WmiObject win32_LogicalDisk -ComputerName $($WPFSpaceServertextBox.Text) -Filter "DeviceID='$($WPFSpaceComboBox.SelectedItem)'" | select @{n = "FreeSpace"; e = { ($_.FreeSpace) / 1GB } } | select -exp FreeSpace
                Write-Warning "$Space"
                $WPFSpaceStatusOutputLabel.Content = ("$space")
            }

    
    
        })
 
    #+++++++++++++++++++++++++++++++++++++++++++++++++\SpaceFinderTab+++++++++++++++++++++++++++++++++++++++++++
    #+++++++++++++++++++++++++++++++++++++++++++++++++TelnetToolTab++++++++++++++++++++++++++++++++++++++++++++
    $WPFTelnetSourceCheckbox.add_Checked( {

            $WPFTelnetSingleServerLabel.Content = "Target ServerName"
            $WPFTelnetTarget.Content = "Telnet Source (ServerName or IP)"
        })

    $WPFTelnetSourceCheckbox.add_UNChecked( {

            $WPFTelnetSingleServerLabel.Content = "Source ServerName"
            $WPFTelnetTarget.Content = "Telnet Target (ServerName or IP)"
        })

    $WPFTelnetMultiServerCheckbox.add_Checked( {

            $WPFTelnetComboBox.items.Clear()
            $WPFTelnetComboBox.IsEnabled = $true
            $WPFTelnetSingleServerTextBox.IsEnabled = $false
        
            Get-ChildItem "\\$comp\C$\temp\*.txt" | select -exp Name | ForEach-Object { $WPFTelnetCombobox.AddChild($_) }
        })
    $WPFTelnetMultiServerCheckbox.add_UNChecked( {
            $WPFTelnetComboBox.IsEnabled = $false
            $WPFTelnetSingleServerTextBox.IsEnabled = $True
        

        })
    $WPFTelnetButton.Add_Click( {
    Remove-Item "\\$comp\c$\Temp\FailedPing.txt" -Force
            Write-Progress -Activity "In ProgresS" -Status "Running" -PercentComplete  0
            [int]$PortNumber = $WPFTelnetPortTextBox.Text

            

                If ($WPFTelnetSourceCheckbox.IsChecked -eq $false) {
                IF($WPFTelnetMultiServerCheckbox.IsChecked -eq $false){
                    $servers = $WPFTelnetSingleServerTextBox.text
                    $Targetservers = $WPFTelnetTargetTextBox.Text 
                }
                Elseif($WPFTelnetMultiServerCheckbox.IsChecked -eq $True){
                    $servers = get-content -Path "\\$Comp\C$\temp\$($WPFTelnetComboBox.SelectedItem)"
                    $Targetservers = $WPFTelnetTargetTextBox.Text 
                }
            }
             elseif ($WPFTelnetSourceCheckbox.IsChecked -eq $true) {
                IF($WPFTelnetMultiServerCheckbox.IsChecked -eq $false){
                    $servers = $WPFTelnetTargetTextBox.Text
                    $Targetservers =  $WPFTelnetSingleServerTextBox.text 
                }
                Elseif($WPFTelnetMultiServerCheckbox.IsChecked -eq $True){
                    $servers = $WPFTelnetTargetTextBox.Text
                    $Targetservers = get-content -Path "\\$Comp\C$\temp\$($WPFTelnetComboBox.SelectedItem)"
                }
            }
            If ((($servers -eq "") -and ($WPFTelnetMultiServerCheckbox.IsChecked -eq $false) ) -Or ($PortNumber -eq "") -or ($Targetserver -eq "") ) {
                If (($servers -eq "") -and ($WPFTelnetMultiServerCheckbox.IsChecked -eq $false)) {
                    [System.Windows.Forms.MessageBox]::Show("Specify a Source ServerName")
                }
                elseif (($WPFTelnetMultiServerCheckbox.IsChecked -eq $True) -and ($WPFTelnetComboBox.SelectedItem -eq $null)) {
                    [System.Windows.Forms.MessageBox]::Show("Select a TextFile from Dropdown")
                }
                If ($PortNumber -eq "") {
                    [System.Windows.Forms.MessageBox]::Show("Specify a PortNumber to Telnet")
                }
                If (($Targetserver -eq "") -and ($WPFTelnetSourceCheckbox.IsChecked -eq $false)) {
                    [System.Windows.Forms.MessageBox]::Show("Specify a Target ServerName")
                }

            }
            Else{


                                                    switch ($WPFTelnetSourceCheckbox.IsChecked)
                                                                            {
                $true {
                    $obj=@()
                    $i=0
                    $Count=$Targetservers.length
                    Foreach($Server in $Targetservers){
                        If ($i -lt $Count) {
                            $j = ($i / $Count) * 100
         
                            Write-Progress -Activity "In Progress $server" -Status "$j% Complete" -PercentComplete  $j
                            }
                        IF(Test-Connection $Server -Quiet){
                              $OBJ+=Invoke-Command -ComputerName $Servers -ScriptBlock {Test-NetConnection -ComputerName $args[0] -Port $args[1]} -ArgumentList $server,$PortNumber  -AsJob
                    }
                        else{
                              $Server|Out-File "\\$comp\c$\Temp\FailedPing.txt" -Append
                    }
                    $i++
                }
                }
                
                $false {
                    $obj=@()
                    $i=0
                    $Count=$servers.length
                    Foreach($Server in $Servers){
                        If ($i -lt $Count) {
                            $j = ($i / $Count) * 100
         
                            Write-Progress -Activity "In Progress $server" -Status "$j% Complete" -PercentComplete  $j
                            }
                        IF(Test-Connection $Server -Quiet){
                            $OBJ+=Invoke-Command -ComputerName $Server -ScriptBlock {Test-NetConnection -ComputerName $args[0] -Port $args[1]} -ArgumentList $Targetservers,$PortNumber  -AsJob
                    }
                        else{
                            $Server|Out-File "\\$comp\c$\Temp\FailedPing.txt" -Append
                    }
                    $i++
                    }
                }
               
            }
                                    $obj|Wait-Job
                                    $obj+=$obj|Receive-Job
                                    Write-Progress -Activity "Completed ..." -Status "Output..." -PercentComplete  100
                                                    $Obj|Select @{n="SourceServer";e={$_.PSComputerNAme}},@{n="PORT";e={$_.RemotePort}},@{n="DestinationServer";e={$_.ComputerNAme}},@{n="PortOpenQuery";e={$_.TCPTESTSucceeded}},@{n="PingResult";e={$_.PingSucceeded}}|Out-GridView -Title "Port Query Result"
                                                    IF(Get-Item "\\$comp\c$\Temp\FailedPing.txt" -ErrorAction SilentlyContinue){
                                                    notepad.exe "\\$comp\c$\Temp\FailedPing.txt"
                                                    }
            }
        })
    
    #+++++++++++++++++++++++++++++++++++++++++++++++++\TelnetToolTab++++++++++++++++++++++++++++++++++++++++++++
    #+++++++++++++++++++++++++++++++++++++++++++++++++GPUpdateToolTab+++++++++++++++++++++++++++++++++++++++++++
    $WPFServerMultiServercheckBoxGP.add_Checked( {
        $WPFMultiServerComboBoxGP.items.Clear()
        $WPFMultiServerComboBoxGP.IsEnabled = $true
        $WPFSingleServertextBoxGP.IsEnabled = $false
        Get-ChildItem "\\$comp\C$\temp\*.txt" | select -exp Name | ForEach-Object { $WPFMultiServerComboBoxGP.AddChild($_) }
    })
    $WPFServerMultiServercheckBoxGP.add_UNChecked( {
        $WPFMultiServerComboBoxGP.IsEnabled = $false
        $WPFSingleServertextBoxGP.IsEnabled = $True
        #$ServerServers=$WPFServertextBox.Text

    })
    $WPFButtonGPUpdate.Add_Click({
      
      
                Write-Progress -Activity "In ProgresS" -Status "Running" -PercentComplete  0
        If ($WPFServerMultiServercheckBoxGP.IsChecked) {
            $Servers = get-content -Path "\\$Comp\C$\temp\$($WPFMultiServerComboBoxGP.SelectedItem)"
        }
        else {
            If ($WPFSingleServertextBoxGP.text -eq "" ) {
                [System.Windows.Forms.MessageBox]::Show("Specify a ServerName to search")
            }
            else {
                $Servers = $WPFSingleServertextBoxGP.Text
            }
        }

        if ($Servers -ne "" ) {
                    $Jobs=@()
                    $OBJ=@()
                    $i=0
                    $Count=$servers.length
                Foreach($Server in $Servers){
                If ($i -lt $Count) {
                            $j = ($i / $Count) * 100
         
                            Write-Progress -Activity "In Progress $server" -Status "$j% Complete" -PercentComplete  $j
                            }
                    Try{
                            IF(Test-Connection $Server -Quiet -Count 1){
                    $JOBS+=Invoke-Command -ComputerName $Server -ScriptBlock{GPUpdate /Force} -ErrorAction SilentlyContinue -AsJob
                    }
                                    else{
                    "############################################"|Out-File "\\$comp\c$\Temp\FailedGPUpdate.txt" -Append
                    Get-Date|Out-File "\\$comp\c$\Temp\FailedGPUpdate.txt" -Append
                    $Server|Out-File "\\$comp\c$\Temp\FailedGPUpdate.txt" -Append
                    }

                }
                    Catch{
                    "############################################"|Out-File "\\$comp\c$\Temp\FailedGPUpdate.txt" -Append
                    Get-Date|Out-File "\\$comp\c$\Temp\FailedGPUpdate.txt" -Append
                    $Server|Out-File "\\$comp\c$\Temp\FailedGPUPdate.txt" -Append

                }
                $i++
                }
                 $JOBS|Wait-Job
                                    foreach($job in $jobs){
                                        $PROP=[ordered]@{
                                            Server=$job.Location
                                        ComputerPolicyResult=$job|Receive-Job -Keep|Select-String "Computer"
                                        UserPolicyResult=$job|Receive-Job |Select-String "User"
                                        }
                                        $Obj+=New-Object -TypeName psobject -Property $PROP
                                    }
                                    $OBJ|Out-GridView
                                    Write-Progress -Activity "Completed ..." -Status "Output..." -PercentComplete  100


        }

    })
 #+++++++++++++++++++++++++++++++++++++++++++++++++/GPUpdateToolTab+++++++++++++++++++++++++++++++++++++++++++
    #+++++++++++++++++++++++++++++++++++++++++++++++++SuperCopy+++++++++++++++++++++++++++++++++++++++++++
    "CopyOnlyFiles", "CopyAll","MirrorSource","ACLOnly"|ForEach-Object { $WPFActionComboBoxSC.AddChild($_) }
    $WPFMultiServercheckBoxSC.add_Checked({
        $WPFMultiServerComboBoxSC.items.Clear()
        $WPFMultiServerComboBoxSC.IsEnabled=$true
         Get-ChildItem "\\$comp\C$\temp\*.txt" | select -exp Name | ForEach-Object { $WPFMultiServerComboBoxSC.AddChild($_) }
       })
      $WPFMultiServercheckBoxSC.add_UnChecked({
        $WPFMultiServerComboBoxSC.items.Clear()
        $WPFMultiServerComboBoxSC.IsEnabled=$false
                
       })

       $WPFButtonSuperCopySC.Add_Click({
       $flag=1
            If($WPFMultiServercheckBoxSC.IsChecked){
            If($WPFDestinationTextBoxSC.Text -match "^\D{1}:"){
              $DestinationPath=$WPFDestinationTextBoxSC.Text -replace ":","$"
            }
            else{
                [System.Windows.Forms.MessageBox]::Show("Please check if the Destination Path is an ITEM on the Server ")
                $flag=0
                }
            IF(($WPFMultiServerComboBoxSC.SelectedItem -ne $null)){
                $Servers=get-content -Path "\\$Comp\C$\temp\$($WPFMultiServerComboBoxSC.SelectedItem)"
                }
            Else{
                [System.Windows.Forms.MessageBox]::Show("Select a Server List")
                $flag=0
            }
             If(($WPFSourceTextBoxSC.Text -match "^\D{1}:") -or ($WPFSourceTextBoxSC.Text -match "^\\\\")){
              $SourcePath=$WPFSourceTextBoxSC.Text
            }
            else{
                [System.Windows.Forms.MessageBox]::Show("Please check if the Source Path is an ITEM on the Server ")
                $flag=0
                }
            If($WPFActionComboBoxSC.SelectedItem -ne $null){
              $Action=$WPFActionComboBoxSC.SelectedItem
                }
            else{
                [System.Windows.Forms.MessageBox]::Show("Please select an Action ")
                $flag=0
                }
        }
            else{
            $Servers="SingleServer"
            If(($WPFDestinationTextBoxSC.Text -match "^\D{1}:")  -or ($WPFDestinationTextBoxSC.Text -match "^\\\\")){
              $DestinationPath=$WPFDestinationTextBoxSC.Text
            }
            else{
                [System.Windows.Forms.MessageBox]::Show("Please check if the Destination Path is an ITEM on the Server ")
                $flag=0
                }
         

             If(($WPFSourceTextBoxSC.Text -match "^\D{1}:") -or ($WPFSourceTextBoxSC.Text -match "^\\\\")){
              $SourcePath=$WPFSourceTextBoxSC.Text
            }
            else{
                [System.Windows.Forms.MessageBox]::Show("Please check if the Source Path is an ITEM on the Server ")
                $flag=0
                }

             If($WPFActionComboBoxSC.SelectedItem -ne $null){
              $Action=$WPFActionComboBoxSC.SelectedItem
                }
            else{
                [System.Windows.Forms.MessageBox]::Show("Please select an Action ")
                $flag=0
                }

            }
        If($flag -ne 0){
            function Start-RCopy {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true,
            Position = 0)]
        [ValidateScript( {
                if ( -Not ($_ | Test-Path) ) {
                    throw "File or folder does not exist"
                }
                return $true
            })]
        [System.IO.FileInfo]$Source,

        [Parameter(Mandatory = $true,
            Position = 1)]
        $Destination,

        [System.IO.FileInfo]$LogPath="c:\temp\supercopylog.txt",

        [ValidateSet("CopyOnlyFiles", "CopyAll", "MirrorSource", "ACLOnly")]
        $Option = "CopyOnlyFiles"
            
    )
       
     
    switch ($Option) {
        'CopyOnlyFiles' { 
            Robocopy.exe $Source $Destination /tee /log+:$LogPath
        }
        'CopyAll' { 
            Robocopy.exe $Source $Destination /E /tee /log+:$LogPath
        }
        'MirrorSource' { 
            Robocopy.exe $Source $Destination /MIR /tee /log+:$LogPath
        }
        'ACLOnly' {  
             Robocopy.exe $Source $Destination /tee /log+:$LogPath /E /Copy:S /IS /IT  
        }
                
    }
}
            
            If($Servers -eq "SingleServer"){
             If(Test-Path "C:\temp\supercopylog.txt"){
                            Clear-Content "C:\temp\supercopylog.txt" -Confirm
                           }
                    switch ($Action)
                    {
                        'CopyOnlyFiles' {
                            Start-RCopy -Source $SourcePath -Destination $DestinationPath -Option CopyOnlyFiles
                        }
                        'CopyAll' {
                            Start-RCopy -Source $SourcePath -Destination $DestinationPath -Option CopyAll
                         }
                        'MirrorSource' {
                            Start-RCopy -Source $SourcePath -Destination $DestinationPath -Option MirrorSource
                        }
                        'ACLOnly' {
                            Start-RCopy -Source $SourcePath -Destination $DestinationPath -Option ACLOnly
                        }
                    }
                }
                
            Else{
                    $fails=@()
                    If(Test-Path "C:\temp\supercopylog.txt" -IsValid){
                            Clear-Content "C:\temp\supercopylog.txt" -Confirm
                           }
                    Foreach($Server in $Servers){
                        
                        Try{
                            If(Test-Connection -ComputerName $Server -Count 2 -Quiet -ErrorAction SilentlyContinue){
                                switch ($Action)
                                {
                                    'CopyOnlyFiles' {
                                        Start-RCopy -Source $SourcePath -Destination "\\$Server\$DestinationPath" -Option CopyOnlyFiles
                                    }
                                    'CopyAll' {
                                        Start-RCopy -Source $SourcePath -Destination "\\$server\$DestinationPath" -Option CopyAll
                                     }
                                    'MirrorSource' {
                                        Start-RCopy -Source $SourcePath -Destination "\\$Server\$DestinationPath" -Option MirrorSource
                                    }
                                    'ACLOnly' {
                                        Start-RCopy -Source $SourcePath -Destination "\\$Server\$DestinationPath" -Option ACLOnly
                                    }
                                }
                               }
                               Else{
                                $fails+="Something went wrong on $Server"
                                }
                            }
                        Catch{
                            $fails+="Something went wrong on $Server"
                        }
                            
                }
                
        
           
        }
        If($fails.Length -ge 1){
         $fails|Out-GridView -Title "Failed SuperCopy Server Report"
         }
        Get-Content C:\Temp\supercopylog.txt| Out-GridView -Title "SuperCopy Report"
        }
        })





    #+++++++++++++++++++++++++++++++++++++++++++++++++/SuperCopy+++++++++++++++++++++++++++++++++++++++++++   



    ###############################################EMDB#######################################################
    $WPFEMDBcheckBoxMultiServer.add_Checked({
        $WPFEMDBcomboBoxMultiServer.items.Clear()
        $WPFEMDBcomboBoxMultiServer.IsEnabled=$true
        $WPFEMDBtextBoxSingleServer.IsEnabled=$false
        Get-ChildItem "c:\temp\*.txt"|select -exp Name|ForEach-Object{ $WPFEMDBcomboBoxMultiServer.AddChild($_)}
        })
$WPFEMDBcheckBoxMultiServer.add_UnChecked({
        $WPFEMDBcomboBoxMultiServer.items.Clear()
        $WPFEMDBcomboBoxMultiServer.IsEnabled=$False
        $WPFEMDBtextBoxSingleServer.IsEnabled=$True
        })
##############################################################################################
"QueryMaintenance","StartMaintenance","StopMaintenance"|ForEach-Object{ $WPFEMDBcomboBoxOperation.AddChild($_)}
$WPFEMDBcomboBoxOperation.add_SelectionChanged({
    switch($WPFEMDBcomboBoxOperation.SelectedItem){
    
        'QueryMaintenance' {
            $WPFEMDBtextBoxDuration.IsEnabled=$False
            $WPFEMDBtextBoxAproachNumber.IsEnabled=$False
            $WPFEMDBtextBoxDuration.Clear()
            $WPFEMDBtextBoxAproachNumber.Clear()
        }
        'StartMaintenance' {
            $WPFEMDBtextBoxDuration.IsEnabled=$true
            $WPFEMDBtextBoxAproachNumber.IsEnabled=$true
        }
        'StopMaintenance'  {
            $WPFEMDBtextBoxDuration.IsEnabled=$False
            $WPFEMDBtextBoxAproachNumber.IsEnabled=$False
            $WPFEMDBtextBoxDuration.Clear()
            $WPFEMDBtextBoxAproachNumber.Clear()
        }
        
    }
    })

$WPFEMDBbuttonStart.Add_click({

    while($Flag -eq $false){
    try{
        $cred=Get-Credential -Message "Please enter the API EMDB Credentials"
        if(((Get-Module |select Name) -notmatch "EMDB")){
            Import-Module EMDB -ArgumentList $cred,"PRD" -ErrorAction stop
            if((Get-Module |select Name) -notmatch "EMDB"){$flag=$false}
            $flag=$true
            }

}
    Catch{
    Remove-Module EMDB -Force -ErrorAction SilentlyContinue
    $flag=$false
    }
    }

    If($WPFEMDBcheckBoxMultiServer.IsChecked -eq $true){
        $Servers=Get-Content "c:\temp\$($WPFEMDBcomboBoxMultiServer.SelectedItem)"
        }
    Else{
        $Servers=$WPFEMDBtextBoxSingleServer.Text
        }

    switch($WPFEMDBcomboBoxOperation.SelectedItem){
    'QueryMaintenance' {
            Get-EmdbMaintenanceStatus $Servers|Out-GridView -Title "EMDB Maintenance Query Result" 
        }
        'StartMaintenance' {
            IF($WPFEMDBtextBoxDuration.text -eq ""){
                [System.Windows.Forms.MessageBox]::Show("Specify a Duration")
                }
            elseif($WPFEMDBtextBoxAproachNumber.Text -eq ""){
                [System.Windows.Forms.MessageBox]::Show("Specify a WinAproach Number")
                }
            else{
                Start-EmdbMaintenance $Servers -ExpectedDuration $WPFEMDBtextBoxDuration.text -AproachNumber $WPFEMDBtextBoxAproachNumber.Text|Out-GridView -Title "EMDB Maintenance Start Result"
                } 
        }
        'StopMaintenance'  {
            Stop-EmdbMaintenance $Servers|Out-GridView -Title "EMDB Maintenance Stop Result"
        }
        }
        })


    ##############################################/EMDB#######################################################
    
    
  
  

    $Form.ShowDialog() 
 

      


    Function Get-FormVariables {
        if ($global:ReadmeDisplay -ne $true) { Write-host "If you need to reference this display again, run Get-FormVariables" -ForegroundColor Yellow; $global:ReadmeDisplay = $true }
        write-host "Found the following interactable elements from our form" -ForegroundColor Cyan
        get-variable WPF*
    }
 
    Get-FormVariables

 
    #===========================================================================
    # Actually make the objects work
    #===========================================================================
 
    #Sample entry of how to add data to a field
 
    #$vmpicklistView.items.Add([pscustomobject]@{'VMName'=($_).Name;Status=$_.Status;Other="Yes"})
 
    #===========================================================================
    # Shows the form
    #===========================================================================
    write-host "To show the form, run the following" -ForegroundColor Cyan
    '$Form.ShowDialog() | out-null'
