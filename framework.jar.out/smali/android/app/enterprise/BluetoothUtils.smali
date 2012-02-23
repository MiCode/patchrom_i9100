.class public Landroid/app/enterprise/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# static fields
.field public static final BasicPrinting:Landroid/os/ParcelUuid; = null

.field public static final FTP:Landroid/os/ParcelUuid; = null

.field public static final PBAP:Landroid/os/ParcelUuid; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothUtils"

.field static final TYPE_L2CAP:I = 0x3

.field static final TYPE_RFCOMM:I = 0x1

.field static final TYPE_SCO:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/BluetoothUtils;->FTP:Landroid/os/ParcelUuid;

    .line 26
    const-string v0, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/BluetoothUtils;->PBAP:Landroid/os/ParcelUuid;

    .line 28
    const-string v0, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/BluetoothUtils;->BasicPrinting:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "device"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isHeadsetAllowedBySecurityPolicy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_0
    const-string v5, "bluetooth_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v2

    .line 125
    .local v2, service:Landroid/app/enterprise/IBluetoothPolicy;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 127
    .local v1, ids:[Landroid/os/ParcelUuid;
    const/16 v5, 0x80

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    const-string v5, "BluetoothUtils"

    const-string v6, "MDM - SPP Profile is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v1           #ids:[Landroid/os/ParcelUuid;
    .end local v2           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :goto_0
    return v3

    .line 135
    .restart local v1       #ids:[Landroid/os/ParcelUuid;
    .restart local v2       #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_0
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 138
    const-string v5, "BluetoothUtils"

    const-string v6, "MDM: HSP profile is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v1           #ids:[Landroid/os/ParcelUuid;
    .end local v2           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 156
    goto :goto_0

    .line 144
    .restart local v1       #ids:[Landroid/os/ParcelUuid;
    .restart local v2       #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_3
    :try_start_1
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 147
    const-string v5, "BluetoothUtils"

    const-string v6, "MDM: HFP profile is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static isPairingAllowedbySecurityPolicy()Z
    .locals 4

    .prologue
    .line 160
    const-string v2, "BluetoothUtils"

    const-string/jumbo v3, "isPairingBlockedbySecurityPolicy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_0
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v1

    .line 165
    .local v1, service:Landroid/app/enterprise/IBluetoothPolicy;
    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isPairingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 169
    :goto_0
    return v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z

    move-result v0

    return v0
.end method

.method public static isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z
    .locals 5
    .parameter "uuid"
    .parameter "portType"

    .prologue
    const/4 v2, 0x0

    .line 180
    const-string v3, "BluetoothUtils"

    const-string/jumbo v4, "isProfileAuthorizedBySecurityPolicy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_0
    const-string v3, "bluetooth_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v1

    .line 187
    .local v1, service:Landroid/app/enterprise/IBluetoothPolicy;
    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: Outgoing Call is Disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v1           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :goto_0
    return v2

    .line 191
    .restart local v1       #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_0
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/16 v3, 0x80

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 194
    :cond_3
    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: SPP or A2DP profile is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v1           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 197
    .restart local v1       #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_5
    :try_start_1
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAvrcpController(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const/16 v3, 0x10

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 199
    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: AVRCP profile is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_7
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getAllowBluetoothDataTransfer()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x80

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 206
    :cond_8
    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: OPP profile is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 7
    .parameter "device"
    .parameter "aPortNum"
    .parameter "aPortType"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    :try_start_0
    const-string v5, "bluetooth_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v2

    .line 46
    .local v2, service:Landroid/app/enterprise/IBluetoothPolicy;
    if-ne v4, p2, :cond_1

    invoke-interface {v2}, Landroid/app/enterprise/IBluetoothPolicy;->getAllowBluetoothDataTransfer()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x80

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 49
    :cond_0
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for spp, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v2           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :goto_0
    return v3

    .line 53
    .restart local v2       #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_1
    const/4 v5, 0x2

    if-ne v5, p2, :cond_3

    invoke-interface {v2}, Landroid/app/enterprise/IBluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 54
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for SCO, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v2           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 116
    goto :goto_0

    .line 58
    .restart local v2       #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_3
    if-eqz p0, :cond_4

    if-gez p1, :cond_5

    .line 59
    :cond_4
    :try_start_1
    const-string v3, "BluetoothUtils"

    const-string/jumbo v5, "isSocketAllowedBySecurityPolicy start : device null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 60
    goto :goto_0

    .line 64
    :cond_5
    const/16 v5, 0x40

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 65
    sget-object v5, Landroid/app/enterprise/BluetoothUtils;->FTP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v5}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    .line 66
    .local v1, lPortNum:I
    if-ne v1, p1, :cond_6

    .line 67
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for ftp, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v1           #lPortNum:I
    :cond_6
    const/4 v5, 0x4

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 73
    sget-object v5, Landroid/app/enterprise/BluetoothUtils;->PBAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v5}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    .line 74
    .restart local v1       #lPortNum:I
    if-ne v1, p1, :cond_7

    .line 75
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for pbap, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_7
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v5}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    .line 81
    if-ne v1, p1, :cond_2

    .line 82
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for pbap, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
