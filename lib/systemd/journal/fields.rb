module Systemd
  class Journal
    # Fields directly passed by client programs and stored in the journal.
    USER_FIELDS = %w( MESSAGE MESSAGE_ID PRIORITY CODE_FILE CODE_LINE CODE_FUNC
                      ERRNO SYSLOG_FACILITY SYSLOG_IDENTIFIER SYSLOG_PID )

    # Fields generated by the journal and added to each event.
    TRUSTED_FIELDS = %w( _PID _UID _GID _COMM _EXE _CMDLINE _AUDIT_SESSION
                         _AUDIT_LOGINUID _SYSTEMD_CGROUP _SYSTEMD_SESSION
                         _SYSTEMD_UNIT _SYSTEMD_USER_UNIT _SYSTEMD_OWNER_UID
                         _SELINUX_CONTEXT _SOURCE_REALTIME_TIMESTAMP _BOOT_ID
                         _MACHINE_ID _HOSTNAME _TRANSPORT )

    # Fields used in messages originating from the kernel.
    KERNEL_FIELDS = %w( _KERNEL_DEVICE _KERNEL_SUBSYSTEM _UDEV_SYSNAME
                        _UDEV_DEVNODE _UDEV_DEVLINK )
  end
end
