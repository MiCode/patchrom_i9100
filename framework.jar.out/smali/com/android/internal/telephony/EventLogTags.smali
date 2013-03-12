.class public Lcom/android/internal/telephony/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final BAD_IP_ADDRESS:I = 0xc3c5

.field public static final CALL_DROP:I = 0xc3ba

.field public static final CDMA_DATA_DROP:I = 0xc3bf

.field public static final CDMA_DATA_SETUP_FAILED:I = 0xc3be

.field public static final CDMA_DATA_STATE_CHANGE:I = 0xc3c3

.field public static final CDMA_SERVICE_STATE_CHANGE:I = 0xc3c4

.field public static final DATA_NETWORK_REGISTRATION_FAIL:I = 0xc3bb

.field public static final DATA_NETWORK_STATUS_ON_RADIO_OFF:I = 0xc3bc

.field public static final DATA_STALL_RECOVERY_CLEANUP:I = 0xc3c7

.field public static final DATA_STALL_RECOVERY_GET_DATA_CALL_LIST:I = 0xc3c6

.field public static final DATA_STALL_RECOVERY_RADIO_RESTART:I = 0xc3c9

.field public static final DATA_STALL_RECOVERY_RADIO_RESTART_WITH_PROP:I = 0xc3ca

.field public static final DATA_STALL_RECOVERY_REREGISTER:I = 0xc3c8

.field public static final GSM_DATA_STATE_CHANGE:I = 0xc3c1

.field public static final GSM_RAT_SWITCHED:I = 0xc3c0

.field public static final GSM_SERVICE_STATE_CHANGE:I = 0xc3c2

.field public static final NITZ_INFORMATION:I = 0x1005f5

.field public static final PDP_BAD_DNS_ADDRESS:I = 0xc3b4

.field public static final PDP_CONTEXT_RESET:I = 0xc3b7

.field public static final PDP_NETWORK_DROP:I = 0xc3bd

.field public static final PDP_RADIO_RESET:I = 0xc3b6

.field public static final PDP_RADIO_RESET_COUNTDOWN_TRIGGERED:I = 0xc3b5

.field public static final PDP_REREGISTER_NETWORK:I = 0xc3b8

.field public static final PDP_SETUP_FAIL:I = 0xc3b9


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeBadIpAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "ipAddress"

    .prologue
    .line 154
    const v0, 0xc3c5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 155
    return-void
.end method

.method public static writeCallDrop(III)V
    .locals 4
    .parameter "cause"
    .parameter "cid"
    .parameter "networkType"

    .prologue
    .line 110
    const v0, 0xc3ba

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

    .line 111
    return-void
.end method

.method public static writeCdmaDataDrop(II)V
    .locals 4
    .parameter "cid"
    .parameter "networkType"

    .prologue
    .line 130
    const v0, 0xc3bf

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

    .line 131
    return-void
.end method

.method public static writeCdmaDataSetupFailed(III)V
    .locals 4
    .parameter "cause"
    .parameter "cid"
    .parameter "networkType"

    .prologue
    .line 126
    const v0, 0xc3be

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

    .line 127
    return-void
.end method

.method public static writeCdmaDataStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "oldstate"
    .parameter "newstate"

    .prologue
    .line 146
    const v0, 0xc3c3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 147
    return-void
.end method

.method public static writeCdmaServiceStateChange(IIII)V
    .locals 4
    .parameter "oldstate"
    .parameter "olddatastate"
    .parameter "newstate"
    .parameter "newdatastate"

    .prologue
    .line 150
    const v0, 0xc3c4

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

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 151
    return-void
.end method

.method public static writeDataNetworkRegistrationFail(II)V
    .locals 4
    .parameter "opNumeric"
    .parameter "cid"

    .prologue
    .line 114
    const v0, 0xc3bb

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

    .line 115
    return-void
.end method

.method public static writeDataNetworkStatusOnRadioOff(Ljava/lang/String;I)V
    .locals 4
    .parameter "dcState"
    .parameter "enable"

    .prologue
    .line 118
    const v0, 0xc3bc

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 119
    return-void
.end method

.method public static writeDataStallRecoveryCleanup(I)V
    .locals 1
    .parameter "outPacketCount"

    .prologue
    .line 162
    const v0, 0xc3c7

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 163
    return-void
.end method

.method public static writeDataStallRecoveryGetDataCallList(I)V
    .locals 1
    .parameter "outPacketCount"

    .prologue
    .line 158
    const v0, 0xc3c6

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 159
    return-void
.end method

.method public static writeDataStallRecoveryRadioRestart(I)V
    .locals 1
    .parameter "outPacketCount"

    .prologue
    .line 170
    const v0, 0xc3c9

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 171
    return-void
.end method

.method public static writeDataStallRecoveryRadioRestartWithProp(I)V
    .locals 1
    .parameter "outPacketCount"

    .prologue
    .line 174
    const v0, 0xc3ca

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 175
    return-void
.end method

.method public static writeDataStallRecoveryReregister(I)V
    .locals 1
    .parameter "outPacketCount"

    .prologue
    .line 166
    const v0, 0xc3c8

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 167
    return-void
.end method

.method public static writeGsmDataStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "oldstate"
    .parameter "newstate"

    .prologue
    .line 138
    const v0, 0xc3c1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 139
    return-void
.end method

.method public static writeGsmRatSwitched(III)V
    .locals 4
    .parameter "cid"
    .parameter "networkFrom"
    .parameter "networkTo"

    .prologue
    .line 134
    const v0, 0xc3c0

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

    .line 135
    return-void
.end method

.method public static writeGsmServiceStateChange(IIII)V
    .locals 4
    .parameter "oldstate"
    .parameter "oldgprsstate"
    .parameter "newstate"
    .parameter "newgprsstate"

    .prologue
    .line 142
    const v0, 0xc3c2

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

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 143
    return-void
.end method

.method public static writeNitzInformation(Ljava/lang/String;)V
    .locals 1
    .parameter "nitzString"

    .prologue
    .line 178
    const v0, 0x1005f5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 179
    return-void
.end method

.method public static writePdpBadDnsAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "dnsAddress"

    .prologue
    .line 86
    const v0, 0xc3b4

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 87
    return-void
.end method

.method public static writePdpContextReset(I)V
    .locals 1
    .parameter "outPacketCount"

    .prologue
    .line 98
    const v0, 0xc3b7

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 99
    return-void
.end method

.method public static writePdpNetworkDrop(II)V
    .locals 4
    .parameter "cid"
    .parameter "networkType"

    .prologue
    .line 122
    const v0, 0xc3bd

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

    .line 123
    return-void
.end method

.method public static writePdpRadioReset(I)V
    .locals 1
    .parameter "outPacketCount"

    .prologue
    .line 94
    const v0, 0xc3b6

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 95
    return-void
.end method

.method public static writePdpRadioResetCountdownTriggered(I)V
    .locals 1
    .parameter "outPacketCount"

    .prologue
    .line 90
    const v0, 0xc3b5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 91
    return-void
.end method

.method public static writePdpReregisterNetwork(I)V
    .locals 1
    .parameter "outPacketCount"

    .prologue
    .line 102
    const v0, 0xc3b8

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 103
    return-void
.end method

.method public static writePdpSetupFail(III)V
    .locals 4
    .parameter "cause"
    .parameter "cid"
    .parameter "networkType"

    .prologue
    .line 106
    const v0, 0xc3b9

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

    .line 107
    return-void
.end method
