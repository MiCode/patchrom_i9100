.class public abstract Landroid/app/enterprise/IDeviceInfo$Stub;
.super Landroid/os/Binder;
.source "IDeviceInfo.java"

# interfaces
.implements Landroid/app/enterprise/IDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IDeviceInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IDeviceInfo"

.field static final TRANSACTION_addCallsCount:I = 0x19

.field static final TRANSACTION_clearCallingLog:I = 0x28

.field static final TRANSACTION_clearSMSLog:I = 0x20

.field static final TRANSACTION_dataUsageTimerActivation:I = 0x38

.field static final TRANSACTION_enableCallingCapture:I = 0x23

.field static final TRANSACTION_enableSMSCapture:I = 0x1b

.field static final TRANSACTION_getAvailableCapacityExternal:I = 0x5

.field static final TRANSACTION_getAvailableCapacityInternal:I = 0x7

.field static final TRANSACTION_getAvailableRamMemory:I = 0x21

.field static final TRANSACTION_getBytesReceivedNetwork:I = 0x34

.field static final TRANSACTION_getBytesReceivedWiFi:I = 0x32

.field static final TRANSACTION_getBytesSentNetwork:I = 0x33

.field static final TRANSACTION_getBytesSentWiFi:I = 0x31

.field static final TRANSACTION_getDataCallLog:I = 0x2c

.field static final TRANSACTION_getDataCallLoggingEnabled:I = 0x2a

.field static final TRANSACTION_getDataCallStatisticsEnabled:I = 0x2e

.field static final TRANSACTION_getDataUsageTimer:I = 0x37

.field static final TRANSACTION_getDeviceMaker:I = 0x10

.field static final TRANSACTION_getDeviceName:I = 0xa

.field static final TRANSACTION_getDeviceOS:I = 0x11

.field static final TRANSACTION_getDeviceOSVersion:I = 0x12

.field static final TRANSACTION_getDevicePlatform:I = 0x13

.field static final TRANSACTION_getDeviceProcessorSpeed:I = 0x15

.field static final TRANSACTION_getDeviceProcessorType:I = 0x14

.field static final TRANSACTION_getDroppedCallsCount:I = 0x16

.field static final TRANSACTION_getInboundSMSCaptured:I = 0x1e

.field static final TRANSACTION_getIncomingCallingCaptured:I = 0x26

.field static final TRANSACTION_getMissedCallsCount:I = 0x17

.field static final TRANSACTION_getModelName:I = 0x8

.field static final TRANSACTION_getModelNumber:I = 0x9

.field static final TRANSACTION_getModemFirmware:I = 0xd

.field static final TRANSACTION_getOutboundSMSCaptured:I = 0x1d

.field static final TRANSACTION_getOutgoingCallingCaptured:I = 0x25

.field static final TRANSACTION_getPlatformSDK:I = 0xe

.field static final TRANSACTION_getPlatformVersion:I = 0xf

.field static final TRANSACTION_getPlatformVersionName:I = 0xc

.field static final TRANSACTION_getSerialNumber:I = 0xb

.field static final TRANSACTION_getSuccessCallsCount:I = 0x18

.field static final TRANSACTION_getTotalCapacityExternal:I = 0x4

.field static final TRANSACTION_getTotalCapacityInternal:I = 0x6

.field static final TRANSACTION_getTotalRamMemory:I = 0x22

.field static final TRANSACTION_getWifiStatisticEnabled:I = 0x30

.field static final TRANSACTION_isCallingCaptureEnabled:I = 0x24

.field static final TRANSACTION_isDeviceCompromised:I = 0x3

.field static final TRANSACTION_isDeviceLocked:I = 0x2

.field static final TRANSACTION_isDeviceSecure:I = 0x1

.field static final TRANSACTION_isSMSCaptureEnabled:I = 0x1c

.field static final TRANSACTION_resetCallsCount:I = 0x1a

.field static final TRANSACTION_resetDataCallLogging:I = 0x2b

.field static final TRANSACTION_resetDataUsage:I = 0x35

.field static final TRANSACTION_setDataCallLoggingEnabled:I = 0x29

.field static final TRANSACTION_setDataCallStatisticsEnabled:I = 0x2d

.field static final TRANSACTION_setDataUsageTimer:I = 0x36

.field static final TRANSACTION_setWifiStatisticEnabled:I = 0x2f

.field static final TRANSACTION_storeCalling:I = 0x27

.field static final TRANSACTION_storeSMS:I = 0x1f

.field static final TRANSACTION_updateDataUsageState:I = 0x39


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IDeviceInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IDeviceInfo;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/app/enterprise/IDeviceInfo$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IDeviceInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 535
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 45
    :sswitch_0
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isDeviceSecure()Z

    move-result v6

    .line 52
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v6, :cond_0

    move v0, v9

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v6           #_result:Z
    :sswitch_2
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isDeviceLocked()Z

    move-result v6

    .line 60
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_1

    move v0, v9

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v6           #_result:Z
    :sswitch_3
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isDeviceCompromised()Z

    move-result v6

    .line 68
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v6, :cond_2

    move v0, v9

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v6           #_result:Z
    :sswitch_4
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getTotalCapacityExternal()J

    move-result-wide v6

    .line 76
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 82
    .end local v6           #_result:J
    :sswitch_5
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getAvailableCapacityExternal()J

    move-result-wide v6

    .line 84
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 90
    .end local v6           #_result:J
    :sswitch_6
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getTotalCapacityInternal()J

    move-result-wide v6

    .line 92
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 98
    .end local v6           #_result:J
    :sswitch_7
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getAvailableCapacityInternal()J

    move-result-wide v6

    .line 100
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 106
    .end local v6           #_result:J
    :sswitch_8
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getModelName()Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getModelNumber()Ljava/lang/String;

    move-result-object v6

    .line 116
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    .line 124
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    .line 132
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getPlatformVersionName()Ljava/lang/String;

    move-result-object v6

    .line 140
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getModemFirmware()Ljava/lang/String;

    move-result-object v6

    .line 148
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getPlatformSDK()I

    move-result v6

    .line 156
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v6           #_result:I
    :sswitch_f
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getPlatformVersion()Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceMaker()Ljava/lang/String;

    move-result-object v6

    .line 172
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceOS()Ljava/lang/String;

    move-result-object v6

    .line 180
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v6

    .line 188
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_13
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDevicePlatform()Ljava/lang/String;

    move-result-object v6

    .line 196
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceProcessorType()Ljava/lang/String;

    move-result-object v6

    .line 204
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceProcessorSpeed()Ljava/lang/String;

    move-result-object v6

    .line 212
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDroppedCallsCount()I

    move-result v6

    .line 220
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v6           #_result:I
    :sswitch_17
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getMissedCallsCount()I

    move-result v6

    .line 228
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 234
    .end local v6           #_result:I
    :sswitch_18
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getSuccessCallsCount()I

    move-result v6

    .line 236
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 242
    .end local v6           #_result:I
    :sswitch_19
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->addCallsCount(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 251
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_1a
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->resetCallsCount()Z

    move-result v6

    .line 253
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v6, :cond_3

    move v0, v9

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v6           #_result:Z
    :sswitch_1b
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    move v1, v9

    .line 262
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->enableSMSCapture(Z)Z

    move-result v6

    .line 263
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v6, :cond_4

    move v0, v9

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_5
    move v1, v0

    .line 261
    goto :goto_1

    .line 269
    :sswitch_1c
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isSMSCaptureEnabled()Z

    move-result v6

    .line 271
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v6, :cond_6

    move v0, v9

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v6           #_result:Z
    :sswitch_1d
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getOutboundSMSCaptured()Ljava/util/List;

    move-result-object v8

    .line 279
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 285
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1e
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getInboundSMSCaptured()Ljava/util/List;

    move-result-object v8

    .line 287
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 293
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1f
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    move v4, v9

    .line 302
    .local v4, _arg3:Z
    :goto_2
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/enterprise/IDeviceInfo$Stub;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v4           #_arg3:Z
    :cond_7
    move v4, v0

    .line 301
    goto :goto_2

    .line 308
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_20
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->clearSMSLog()Z

    move-result v6

    .line 310
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-eqz v6, :cond_8

    move v0, v9

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 316
    .end local v6           #_result:Z
    :sswitch_21
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getAvailableRamMemory()J

    move-result-wide v6

    .line 318
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 324
    .end local v6           #_result:J
    :sswitch_22
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getTotalRamMemory()J

    move-result-wide v6

    .line 326
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 332
    .end local v6           #_result:J
    :sswitch_23
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    move v1, v9

    .line 335
    .local v1, _arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->enableCallingCapture(Z)Z

    move-result v6

    .line 336
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v6, :cond_9

    move v0, v9

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_a
    move v1, v0

    .line 334
    goto :goto_3

    .line 342
    :sswitch_24
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isCallingCaptureEnabled()Z

    move-result v6

    .line 344
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    if-eqz v6, :cond_b

    move v0, v9

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 350
    .end local v6           #_result:Z
    :sswitch_25
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getOutgoingCallingCaptured()Ljava/util/List;

    move-result-object v8

    .line 352
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 358
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_26
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getIncomingCallingCaptured()Ljava/util/List;

    move-result-object v8

    .line 360
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 366
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_27
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 372
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 374
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c

    move v5, v9

    .local v5, _arg4:Z
    :goto_4
    move-object v0, p0

    .line 377
    invoke-virtual/range {v0 .. v5}, Landroid/app/enterprise/IDeviceInfo$Stub;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v5           #_arg4:Z
    :cond_c
    move v5, v0

    .line 376
    goto :goto_4

    .line 383
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_28
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->clearCallingLog()Z

    move-result v6

    .line 385
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v6, :cond_d

    move v0, v9

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 391
    .end local v6           #_result:Z
    :sswitch_29
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_f

    move v1, v9

    .line 394
    .local v1, _arg0:Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->setDataCallLoggingEnabled(Z)Z

    move-result v6

    .line 395
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v6, :cond_e

    move v0, v9

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_f
    move v1, v0

    .line 393
    goto :goto_5

    .line 401
    :sswitch_2a
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDataCallLoggingEnabled()Z

    move-result v6

    .line 403
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    if-eqz v6, :cond_10

    move v0, v9

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 409
    .end local v6           #_result:Z
    :sswitch_2b
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->resetDataCallLogging(Ljava/lang/String;)Z

    move-result v6

    .line 413
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v6, :cond_11

    move v0, v9

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 419
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_2c
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDataCallLog(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 423
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 429
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2d
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_13

    move v1, v9

    .line 432
    .local v1, _arg0:Z
    :goto_6
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->setDataCallStatisticsEnabled(Z)Z

    move-result v6

    .line 433
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v6, :cond_12

    move v0, v9

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_13
    move v1, v0

    .line 431
    goto :goto_6

    .line 439
    :sswitch_2e
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDataCallStatisticsEnabled()Z

    move-result v6

    .line 441
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v6, :cond_14

    move v0, v9

    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 447
    .end local v6           #_result:Z
    :sswitch_2f
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_16

    move v1, v9

    .line 450
    .restart local v1       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->setWifiStatisticEnabled(Z)Z

    move-result v6

    .line 451
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v6, :cond_15

    move v0, v9

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_16
    move v1, v0

    .line 449
    goto :goto_7

    .line 457
    :sswitch_30
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getWifiStatisticEnabled()Z

    move-result v6

    .line 459
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v6, :cond_17

    move v0, v9

    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 465
    .end local v6           #_result:Z
    :sswitch_31
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getBytesSentWiFi()J

    move-result-wide v6

    .line 467
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 473
    .end local v6           #_result:J
    :sswitch_32
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getBytesReceivedWiFi()J

    move-result-wide v6

    .line 475
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 481
    .end local v6           #_result:J
    :sswitch_33
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getBytesSentNetwork()J

    move-result-wide v6

    .line 483
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 489
    .end local v6           #_result:J
    :sswitch_34
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getBytesReceivedNetwork()J

    move-result-wide v6

    .line 491
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 497
    .end local v6           #_result:J
    :sswitch_35
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->resetDataUsage()V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 504
    :sswitch_36
    const-string v10, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 507
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDeviceInfo$Stub;->setDataUsageTimer(I)Z

    move-result v6

    .line 508
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v6, :cond_18

    move v0, v9

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 514
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_37
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDataUsageTimer()I

    move-result v6

    .line 516
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 522
    .end local v6           #_result:I
    :sswitch_38
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->dataUsageTimerActivation()V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 529
    :sswitch_39
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->updateDataUsageState()V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
