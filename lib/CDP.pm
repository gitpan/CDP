package CDP;
our $VERSION = '0.03';

use 5.008006;
use strict;
use warnings;

use CDP::backupTask		qw /:ALL/;
use CDP::diskSafe		qw /:ALL/;
use CDP::mySQL			qw /:ALL/;
use CDP::taskRun 		qw /:ALL/;
use CDP::volume			qw /:ALL/;
use CDP::Connect		qw /:ALL/;
use CDP::host 			qw /:ALL/;
use CDP::storagepool	qw /:ALL/;
use CDP::user 			qw /:ALL/;
use CDP::Dump 			qw /:ALL/;

our (@ISA, @EXPORT, @EXPORT_OK, %EXPORT_TAGS, );

require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader AutoLoader);
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use CDP ':ALL';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
@EXPORT = qw/

/;

@EXPORT_OK = qw/
	OpenCDP
	dumpARef
    dumpHRef

    editBackupTask
    getScheduledTaskIdsByHost
    runNow
    scheduleBackupTask
    scheduleMinutelyBackupTask

    addDiskSafe
    addDiskSafeWithEncryption
    deleteDiskSafe
    getActiveDiskSafe
    getActiveDiskSafeAsMap
    getActiveDiskSafeID
    getCompressionLevel
    getDiskSafe
    getDiskSafeAsMap
    getDiskSafeIDs
    getMaxFreeSpace
    getStorageDiskID
    getTimeCreated
    isEncryptionInitDone
    runEncryptionSetup
    setCompressionLevel
    setPassphrase

    addAdmin
    addBackupUser
    addFullControlUser
    addHost
    addHostWithDescription
    addLinuxControlPanelHost
    addLinuxHost
    addLinuxHostWithDescription
    addRestoreUser
    addUnknownHost
    addUnknownHostWithDescription
    addUser
    addWindowsHost
    addWindowsHostWithDescription
    deleteHost
    getDescription
    getHost
    getHostAsMap
    getHostByDescription
    getHostByHostname
    getHostIds
    getHostIdsByVolume
    getHostname
    getHostType
    getLastFinishedBackupTaskInfo
    getQuota
    getRemotePort
    getTimeout
    isCdpForMySqlAddonEnabled
    isControlPanelModuleEnabled
    isEnabled
    isHostDiscoveryFinished
    removeUser
    runHostDiscovery
    setDescription
    setEnabled
    setHostname
    setHostType
    setLinuxHostType
    setQuota
    setRemotePort
    setsCdpForMySqlAddonEnabled
    setsControlPanelModuleEnabled
    setTimeout
    setWindowsHostType

    addLocalMySQLInstance
    addRemoteMySQLInstance
    deleteMySQLInstance
    getMySQLInstance
    getMySQLInstanceIds
    setCustomInnoDBDataDirectory
    setCustomInnoDBLogDirectory
    setCustomMySQLDataDirectory
    setDescription
    setMySQLHost
    setMySQLPass
    setMySQLPort
    setMySQLSocketPath
    setMySQLUser

    getStoragePool
    getStoragePoolByName
    getStoragePoolIDByName
    getStoragePoolIDs

    getTaskLogs
    getTaskRun

    addAdmin
    addBasicUser
    addSuperUser
    addUser
    deleteUser
    getMe
    getMyId
    getUser
    getUserByUsername
    getUserIds
    removeAdmin
    removeAllUserAdminPrivileges
    setCanAddHost
    setCanAddUser
    setCanChangePassword
    setEmailAddress
    setEnabled
    setIsSuperUser
    setMustChangePassword
    setPassword
    setUsername

    addUser
    addVolume
    deleteVolume
    getAllowedScheduleFrequencies
    getVolume
    getVolumeByName
    getVolumeIds
    removeUser
    setAllowedScheduleFrequencies
    setControlPanelModuleEnabled
    setMaxCdpForMySqlAddons
    setMaxLinuxHosts
    setMaxWindowsHosts
    setQuota
    setStoragePool
    setVolumeName
/;


%EXPORT_TAGS = ( 
	'ALL' 	=> \@EXPORT_OK,
	'CONST'	=> [qw//],
);


# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

CDP - Perl extension for blah blah blah

=head1 SYNOPSIS

  use CDP;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for CDP, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

jon, E<lt>jon@E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011 by jon

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
