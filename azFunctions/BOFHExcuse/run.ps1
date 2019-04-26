function BOFHExcuse {
    # BOFH Excuse Generator
    $first = @("Temporary","Intermittant","Partial","Redundant","Total","Multiplexed","Inherent","Duplicated","Dual-Homed","Synchronous","Bidirectional","Serial","Asynchronous","Multiple","Replicated","Non-Replicated","Unregistered","Non-Specific","Generic","Migrated","Localised","Resignalled","Dereferenced","Nullified","Aborted","Serious","Minor","Major","Extraneous","Illegal","Insufficient","Viral","Unsupported","Outmoded","Legacy","Permanent","Invalid","Deprecated","Virtual","Unreportable","Undetermined","Undiagnosable","Unfiltered","Static","Dynamic","Delayed","Immediate","Nonfatal","Fatal","Non-Valid","Unvalidated","Non-Static","Unreplicatable","Non-Serious")
    $second = @("Array","Systems","Hardware","Software","Firmware","Backplane","Logic-Subsystem","Integrity","Subsystem","Memory","Comms","Integrity","Checksum","Protocol","Parity","Bus","Timing","Synchronisation","Topology","Transmission","Reception","Stack","Framing","Code","Programming","Peripheral","Environmental","Loading","Operation","Parameter","Syntax","Initialisation","Execution","Resource","Ecryption","Decryption","File","Precondition","Authentication","Paging","Swapfile","Service","Gateway","Request","Proxy","Media","Registry","Configuration","Metadata","Streaming","Retrieval","Installation","Library","Handler")
    $third = @("Interruption","Destabilisation","Destruction","Desynchronisation","Failure","Dereferencing","Overflow","Underflow","NMI","Interrupt","Corruption","Anomoly","Seizure","Override","Reclock","Rejection","Invalidation","Halt","Exhaustion","Infection","Incompatibility","Timeout","Expiry","Unavailability","Bug","Condition","Crash","Dump","Crashdump","Stackdump","Problem","Lockout")
    $forth = @("Error","Problem","Warning","Signal","Flag")
    $rnd1 = Get-Random $first
    $rnd2 = Get-Random $second
    $rnd3 = Get-Random $third
    $rnd4 = Get-Random $forth
    [boolean]$blnforth = Get-Random -Minimum -1 -Maximum 1
    if ($blnforth){
        $Global:excuse = "$($rnd1) $($rnd2) $($rnd3) $($rnd4)"
        return $Global:excuse
    } else {
        $Global:excuse = "$($rnd1) $($rnd2) $($rnd3)"
        return $Global:excuse
    }
}
$Global:excuse = $null
BOFHExcuse
$now = Get-Date
$dateTimeNow = $now.ToUniversalTime()

start-sleep -seconds 3
$result = @{excuseGenerated = $dateTimeNow; excuse = $Global:excuse} | convertTo-json
$result 
Out-File -Encoding Ascii -FilePath $res -inputObject $result
