.class public Lcom/android/server/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final BACKUP_AGENT_FAILURE:I = 0xb07

.field public static final BACKUP_DATA_CHANGED:I = 0xb04

.field public static final BACKUP_INITIALIZE:I = 0xb0b

.field public static final BACKUP_PACKAGE:I = 0xb08

.field public static final BACKUP_RESET:I = 0xb0a

.field public static final BACKUP_START:I = 0xb05

.field public static final BACKUP_SUCCESS:I = 0xb09

.field public static final BACKUP_TRANSPORT_FAILURE:I = 0xb06

.field public static final BATTERY_DISCHARGE:I = 0xaaa

.field public static final BATTERY_LEVEL:I = 0xaa2

.field public static final BATTERY_STATUS:I = 0xaa3

.field public static final BOOT_PROGRESS_PMS_DATA_SCAN_START:I = 0xc08

.field public static final BOOT_PROGRESS_PMS_READY:I = 0xc1c

.field public static final BOOT_PROGRESS_PMS_SCAN_END:I = 0xc12

.field public static final BOOT_PROGRESS_PMS_START:I = 0xbf4

.field public static final BOOT_PROGRESS_PMS_SYSTEM_SCAN_START:I = 0xbfe

.field public static final BOOT_PROGRESS_SYSTEM_RUN:I = 0xbc2

.field public static final CACHE_FILE_DELETED:I = 0xabc

.field public static final CONNECTIVITY_STATE_CHANGED:I = 0xc364

.field public static final FREE_STORAGE_CHANGED:I = 0xab8

.field public static final FREE_STORAGE_LEFT:I = 0xaba

.field public static final IMF_FORCE_RECONNECT_IME:I = 0x7d00

.field public static final LOW_STORAGE:I = 0xab9

.field public static final NETSTATS_MOBILE_SAMPLE:I = 0xc79c

.field public static final NETSTATS_WIFI_SAMPLE:I = 0xc79d

.field public static final NOTIFICATION_CANCEL:I = 0xabf

.field public static final NOTIFICATION_CANCEL_ALL:I = 0xac0

.field public static final NOTIFICATION_ENQUEUE:I = 0xabe

.field public static final POWER_PARTIAL_WAKE_STATE:I = 0xaa9

.field public static final POWER_SCREEN_BROADCAST_DONE:I = 0xaa6

.field public static final POWER_SCREEN_BROADCAST_SEND:I = 0xaa5

.field public static final POWER_SCREEN_BROADCAST_STOP:I = 0xaa7

.field public static final POWER_SCREEN_STATE:I = 0xaa8

.field public static final POWER_SLEEP_REQUESTED:I = 0xaa4

.field public static final RESTORE_AGENT_FAILURE:I = 0xb10

.field public static final RESTORE_PACKAGE:I = 0xb11

.field public static final RESTORE_START:I = 0xb0e

.field public static final RESTORE_SUCCESS:I = 0xb12

.field public static final RESTORE_TRANSPORT_FAILURE:I = 0xb0f

.field public static final WATCHDOG:I = 0xaf2

.field public static final WATCHDOG_HARD_RESET:I = 0xaf5

.field public static final WATCHDOG_MEMINFO:I = 0xaf9

.field public static final WATCHDOG_PROC_PSS:I = 0xaf3

.field public static final WATCHDOG_PROC_STATS:I = 0xaf7

.field public static final WATCHDOG_PSS_STATS:I = 0xaf6

.field public static final WATCHDOG_REQUESTED_REBOOT:I = 0xafb

.field public static final WATCHDOG_SCHEDULED_REBOOT:I = 0xaf8

.field public static final WATCHDOG_SOFT_RESET:I = 0xaf4

.field public static final WATCHDOG_VMSTAT:I = 0xafa

.field public static final WM_NO_SURFACE_MEMORY:I = 0x7918


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "package_"
    .parameter "message"

    .prologue
    .line 280
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 281
    return-void
.end method

.method public static writeBackupDataChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "package_"

    .prologue
    .line 268
    const/16 v0, 0xb04

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 269
    return-void
.end method

.method public static writeBackupInitialize()V
    .locals 2

    .prologue
    .line 296
    const/16 v0, 0xb0b

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 297
    return-void
.end method

.method public static writeBackupPackage(Ljava/lang/String;I)V
    .locals 4
    .parameter "package_"
    .parameter "size"

    .prologue
    .line 284
    const/16 v0, 0xb08

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 285
    return-void
.end method

.method public static writeBackupReset(Ljava/lang/String;)V
    .locals 1
    .parameter "transport"

    .prologue
    .line 292
    const/16 v0, 0xb0a

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 293
    return-void
.end method

.method public static writeBackupStart(Ljava/lang/String;)V
    .locals 1
    .parameter "transport"

    .prologue
    .line 272
    const/16 v0, 0xb05

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 273
    return-void
.end method

.method public static writeBackupSuccess(II)V
    .locals 4
    .parameter "packages"
    .parameter "time"

    .prologue
    .line 288
    const/16 v0, 0xb09

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 289
    return-void
.end method

.method public static writeBackupTransportFailure(Ljava/lang/String;)V
    .locals 1
    .parameter "package_"

    .prologue
    .line 276
    const/16 v0, 0xb06

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 277
    return-void
.end method

.method public static writeBatteryDischarge(JII)V
    .locals 4
    .parameter "duration"
    .parameter "minlevel"
    .parameter "maxlevel"

    .prologue
    .line 172
    const/16 v0, 0xaaa

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 173
    return-void
.end method

.method public static writeBatteryLevel(III)V
    .locals 4
    .parameter "level"
    .parameter "voltage"
    .parameter "temperature"

    .prologue
    .line 164
    const/16 v0, 0xaa2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 165
    return-void
.end method

.method public static writeBatteryStatus(IIIILjava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "health"
    .parameter "present"
    .parameter "plugged"
    .parameter "technology"

    .prologue
    .line 168
    const/16 v0, 0xaa3

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 169
    return-void
.end method

.method public static writeBootProgressPmsDataScanStart(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 332
    const/16 v0, 0xc08

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 333
    return-void
.end method

.method public static writeBootProgressPmsReady(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 340
    const/16 v0, 0xc1c

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 341
    return-void
.end method

.method public static writeBootProgressPmsScanEnd(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 336
    const/16 v0, 0xc12

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 337
    return-void
.end method

.method public static writeBootProgressPmsStart(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 324
    const/16 v0, 0xbf4

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 325
    return-void
.end method

.method public static writeBootProgressPmsSystemScanStart(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 328
    const/16 v0, 0xbfe

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 329
    return-void
.end method

.method public static writeBootProgressSystemRun(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 320
    const/16 v0, 0xbc2

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 321
    return-void
.end method

.method public static writeCacheFileDeleted(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 212
    const/16 v0, 0xabc

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 213
    return-void
.end method

.method public static writeConnectivityStateChanged(I)V
    .locals 1
    .parameter "custom"

    .prologue
    .line 352
    const v0, 0xc364

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 353
    return-void
.end method

.method public static writeFreeStorageChanged(J)V
    .locals 1
    .parameter "data"

    .prologue
    .line 200
    const/16 v0, 0xab8

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 201
    return-void
.end method

.method public static writeFreeStorageLeft(JJJ)V
    .locals 4
    .parameter "data"
    .parameter "system"
    .parameter "cache"

    .prologue
    .line 208
    const/16 v0, 0xaba

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 209
    return-void
.end method

.method public static writeImfForceReconnectIme([Ljava/lang/Object;JI)V
    .locals 4
    .parameter "ime"
    .parameter "timeSinceConnect"
    .parameter "showing"

    .prologue
    .line 348
    const/16 v0, 0x7d00

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 349
    return-void
.end method

.method public static writeLowStorage(J)V
    .locals 1
    .parameter "data"

    .prologue
    .line 204
    const/16 v0, 0xab9

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 205
    return-void
.end method

.method public static writeNetstatsMobileSample(JJJJJJJJJJJJJ)V
    .locals 4
    .parameter "devRxBytes"
    .parameter "devTxBytes"
    .parameter "devRxPkts"
    .parameter "devTxPkts"
    .parameter "xtRxBytes"
    .parameter "xtTxBytes"
    .parameter "xtRxPkts"
    .parameter "xtTxPkts"
    .parameter "uidRxBytes"
    .parameter "uidTxBytes"
    .parameter "uidRxPkts"
    .parameter "uidTxPkts"
    .parameter "trustedTime"

    .prologue
    .line 356
    const v0, 0xc79c

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static/range {p20 .. p21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static/range {p22 .. p23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static/range {p24 .. p25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 357
    return-void
.end method

.method public static writeNetstatsWifiSample(JJJJJJJJJJJJJ)V
    .locals 4
    .parameter "devRxBytes"
    .parameter "devTxBytes"
    .parameter "devRxPkts"
    .parameter "devTxPkts"
    .parameter "xtRxBytes"
    .parameter "xtTxBytes"
    .parameter "xtRxPkts"
    .parameter "xtTxPkts"
    .parameter "uidRxBytes"
    .parameter "uidTxBytes"
    .parameter "uidRxPkts"
    .parameter "uidTxPkts"
    .parameter "trustedTime"

    .prologue
    .line 360
    const v0, 0xc79d

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static/range {p20 .. p21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static/range {p22 .. p23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static/range {p24 .. p25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 361
    return-void
.end method

.method public static writeNotificationCancel(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 4
    .parameter "pkg"
    .parameter "id"
    .parameter "tag"
    .parameter "requiredFlags"
    .parameter "forbiddenFlags"

    .prologue
    .line 220
    const/16 v0, 0xabf

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 221
    return-void
.end method

.method public static writeNotificationCancelAll(Ljava/lang/String;II)V
    .locals 4
    .parameter "pkg"
    .parameter "requiredFlags"
    .parameter "forbiddenFlags"

    .prologue
    .line 224
    const/16 v0, 0xac0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 225
    return-void
.end method

.method public static writeNotificationEnqueue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "pkg"
    .parameter "id"
    .parameter "tag"
    .parameter "notification"

    .prologue
    .line 216
    const/16 v0, 0xabe

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 217
    return-void
.end method

.method public static writePowerPartialWakeState(ILjava/lang/String;)V
    .locals 4
    .parameter "releasedoracquired"
    .parameter "tag"

    .prologue
    .line 196
    const/16 v0, 0xaa9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 197
    return-void
.end method

.method public static writePowerScreenBroadcastDone(IJI)V
    .locals 4
    .parameter "on"
    .parameter "broadcastduration"
    .parameter "wakelockcount"

    .prologue
    .line 184
    const/16 v0, 0xaa6

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 185
    return-void
.end method

.method public static writePowerScreenBroadcastSend(I)V
    .locals 1
    .parameter "wakelockcount"

    .prologue
    .line 180
    const/16 v0, 0xaa5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 181
    return-void
.end method

.method public static writePowerScreenBroadcastStop(II)V
    .locals 4
    .parameter "which"
    .parameter "wakelockcount"

    .prologue
    .line 188
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 189
    return-void
.end method

.method public static writePowerScreenState(IIJI)V
    .locals 4
    .parameter "offoron"
    .parameter "becauseofuser"
    .parameter "totaltouchdowntime"
    .parameter "touchcycles"

    .prologue
    .line 192
    const/16 v0, 0xaa8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 193
    return-void
.end method

.method public static writePowerSleepRequested(I)V
    .locals 1
    .parameter "wakelockscleared"

    .prologue
    .line 176
    const/16 v0, 0xaa4

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 177
    return-void
.end method

.method public static writeRestoreAgentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "package_"
    .parameter "message"

    .prologue
    .line 308
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 309
    return-void
.end method

.method public static writeRestorePackage(Ljava/lang/String;I)V
    .locals 4
    .parameter "package_"
    .parameter "size"

    .prologue
    .line 312
    const/16 v0, 0xb11

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 313
    return-void
.end method

.method public static writeRestoreStart(Ljava/lang/String;J)V
    .locals 4
    .parameter "transport"
    .parameter "source"

    .prologue
    .line 300
    const/16 v0, 0xb0e

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 301
    return-void
.end method

.method public static writeRestoreSuccess(II)V
    .locals 4
    .parameter "packages"
    .parameter "time"

    .prologue
    .line 316
    const/16 v0, 0xb12

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 317
    return-void
.end method

.method public static writeRestoreTransportFailure()V
    .locals 2

    .prologue
    .line 304
    const/16 v0, 0xb0f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 305
    return-void
.end method

.method public static writeWatchdog(Ljava/lang/String;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 228
    const/16 v0, 0xaf2

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 229
    return-void
.end method

.method public static writeWatchdogHardReset(Ljava/lang/String;III)V
    .locals 4
    .parameter "process"
    .parameter "pid"
    .parameter "maxpss"
    .parameter "pss"

    .prologue
    .line 240
    const/16 v0, 0xaf5

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 241
    return-void
.end method

.method public static writeWatchdogMeminfo(IIIIIIIIIII)V
    .locals 4
    .parameter "memfree"
    .parameter "buffers"
    .parameter "cached"
    .parameter "active"
    .parameter "inactive"
    .parameter "anonpages"
    .parameter "mapped"
    .parameter "slab"
    .parameter "sreclaimable"
    .parameter "sunreclaim"
    .parameter "pagetables"

    .prologue
    .line 256
    const/16 v0, 0xaf9

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 257
    return-void
.end method

.method public static writeWatchdogProcPss(Ljava/lang/String;II)V
    .locals 4
    .parameter "process"
    .parameter "pid"
    .parameter "pss"

    .prologue
    .line 232
    const/16 v0, 0xaf3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 233
    return-void
.end method

.method public static writeWatchdogProcStats(IIIII)V
    .locals 4
    .parameter "deathsinone"
    .parameter "deathsintwo"
    .parameter "deathsinthree"
    .parameter "deathsinfour"
    .parameter "deathsinfive"

    .prologue
    .line 248
    const/16 v0, 0xaf7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 249
    return-void
.end method

.method public static writeWatchdogPssStats(IIIIIIIIIII)V
    .locals 4
    .parameter "emptypss"
    .parameter "emptycount"
    .parameter "backgroundpss"
    .parameter "backgroundcount"
    .parameter "servicepss"
    .parameter "servicecount"
    .parameter "visiblepss"
    .parameter "visiblecount"
    .parameter "foregroundpss"
    .parameter "foregroundcount"
    .parameter "nopsscount"

    .prologue
    .line 244
    const/16 v0, 0xaf6

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 245
    return-void
.end method

.method public static writeWatchdogRequestedReboot(IIIIIII)V
    .locals 4
    .parameter "nowait"
    .parameter "scheduleinterval"
    .parameter "recheckinterval"
    .parameter "starttime"
    .parameter "window"
    .parameter "minscreenoff"
    .parameter "minnextalarm"

    .prologue
    .line 264
    const/16 v0, 0xafb

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 265
    return-void
.end method

.method public static writeWatchdogScheduledReboot(JIIILjava/lang/String;)V
    .locals 4
    .parameter "now"
    .parameter "interval"
    .parameter "starttime"
    .parameter "window"
    .parameter "skip"

    .prologue
    .line 252
    const/16 v0, 0xaf8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 253
    return-void
.end method

.method public static writeWatchdogSoftReset(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 4
    .parameter "process"
    .parameter "pid"
    .parameter "maxpss"
    .parameter "pss"
    .parameter "skip"

    .prologue
    .line 236
    const/16 v0, 0xaf4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 237
    return-void
.end method

.method public static writeWatchdogVmstat(JIIIII)V
    .locals 4
    .parameter "runtime"
    .parameter "pgfree"
    .parameter "pgactivate"
    .parameter "pgdeactivate"
    .parameter "pgfault"
    .parameter "pgmajfault"

    .prologue
    .line 260
    const/16 v0, 0xafa

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 261
    return-void
.end method

.method public static writeWmNoSurfaceMemory(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "window"
    .parameter "pid"
    .parameter "operation"

    .prologue
    .line 344
    const/16 v0, 0x7918

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 345
    return-void
.end method
