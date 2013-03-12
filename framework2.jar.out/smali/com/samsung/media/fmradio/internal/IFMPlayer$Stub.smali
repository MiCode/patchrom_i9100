.class public abstract Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;
.super Landroid/os/Binder;
.source "IFMPlayer.java"

# interfaces
.implements Lcom/samsung/media/fmradio/internal/IFMPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/internal/IFMPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.media.fmradio.internal.IFMPlayer"

.field static final TRANSACTION_SkipTuning_Value:I = 0x20

.field static final TRANSACTION_cancelAFSwitching:I = 0x1b

.field static final TRANSACTION_cancelScan:I = 0xc

.field static final TRANSACTION_cancelSeek:I = 0x9

.field static final TRANSACTION_disableAF:I = 0x15

.field static final TRANSACTION_disableRDS:I = 0x13

.field static final TRANSACTION_enableAF:I = 0x14

.field static final TRANSACTION_enableRDS:I = 0x12

.field static final TRANSACTION_getAFValid_th:I = 0x3d

.field static final TRANSACTION_getAF_th:I = 0x3b

.field static final TRANSACTION_getCnt_th:I = 0x34

.field static final TRANSACTION_getCnt_th_2:I = 0x37

.field static final TRANSACTION_getCurrentChannel:I = 0xa

.field static final TRANSACTION_getCurrentRSSI:I = 0x29

.field static final TRANSACTION_getLastScanResult:I = 0x1c

.field static final TRANSACTION_getMaxVolume:I = 0x26

.field static final TRANSACTION_getRSSI_th:I = 0x32

.field static final TRANSACTION_getRSSI_th_2:I = 0x35

.field static final TRANSACTION_getSNR_th:I = 0x33

.field static final TRANSACTION_getSNR_th_2:I = 0x36

.field static final TRANSACTION_getVolume:I = 0x21

.field static final TRANSACTION_isAFEnable:I = 0x1a

.field static final TRANSACTION_isAirPlaneMode:I = 0x27

.field static final TRANSACTION_isBatteryLow:I = 0x39

.field static final TRANSACTION_isBusy:I = 0x18

.field static final TRANSACTION_isHeadsetPlugged:I = 0x22

.field static final TRANSACTION_isOn:I = 0x6

.field static final TRANSACTION_isRDSEnable:I = 0x19

.field static final TRANSACTION_isScanning:I = 0xd

.field static final TRANSACTION_isSeeking:I = 0xe

.field static final TRANSACTION_isTvOutPlugged:I = 0x23

.field static final TRANSACTION_off:I = 0x5

.field static final TRANSACTION_on:I = 0x4

.field static final TRANSACTION_on_in_testmode:I = 0x38

.field static final TRANSACTION_removeListener:I = 0x2

.field static final TRANSACTION_scan:I = 0xb

.field static final TRANSACTION_searchAll:I = 0x11

.field static final TRANSACTION_searchDown:I = 0xf

.field static final TRANSACTION_searchUp:I = 0x10

.field static final TRANSACTION_seekDown:I = 0x8

.field static final TRANSACTION_seekUp:I = 0x7

.field static final TRANSACTION_setAFValid_th:I = 0x3c

.field static final TRANSACTION_setAF_th:I = 0x3a

.field static final TRANSACTION_setBand:I = 0x16

.field static final TRANSACTION_setChannelSpacing:I = 0x17

.field static final TRANSACTION_setCnt_th:I = 0x2e

.field static final TRANSACTION_setCnt_th_2:I = 0x31

.field static final TRANSACTION_setDEConstant:I = 0x28

.field static final TRANSACTION_setFMIntenna:I = 0x3e

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_setMono:I = 0x1e

.field static final TRANSACTION_setRSSI_th:I = 0x2c

.field static final TRANSACTION_setRSSI_th_2:I = 0x2f

.field static final TRANSACTION_setRecordMode:I = 0x25

.field static final TRANSACTION_setSNR_th:I = 0x2d

.field static final TRANSACTION_setSNR_th_2:I = 0x30

.field static final TRANSACTION_setSeekRSSI:I = 0x2a

.field static final TRANSACTION_setSeekSNR:I = 0x2b

.field static final TRANSACTION_setSpeakerOn:I = 0x24

.field static final TRANSACTION_setStereo:I = 0x1d

.field static final TRANSACTION_setVolume:I = 0x1f

.field static final TRANSACTION_tune:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMPlayer;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/media/fmradio/internal/IFMPlayer;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/samsung/media/fmradio/internal/IFMPlayer;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 557
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 47
    :sswitch_0
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-result-object v0

    .line 55
    .local v0, _arg0:Lcom/samsung/media/fmradio/internal/IFMEventListener;
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:Lcom/samsung/media/fmradio/internal/IFMEventListener;
    :sswitch_2
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-result-object v0

    .line 64
    .restart local v0       #_arg0:Lcom/samsung/media/fmradio/internal/IFMEventListener;
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:Lcom/samsung/media/fmradio/internal/IFMEventListener;
    :sswitch_3
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 73
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->tune(J)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:J
    :sswitch_4
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->on()Z

    move-result v2

    .line 81
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v2           #_result:Z
    :sswitch_5
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->off()Z

    move-result v2

    .line 89
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v2           #_result:Z
    :sswitch_6
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isOn()Z

    move-result v2

    .line 97
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v2           #_result:Z
    :sswitch_7
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->seekUp()J

    move-result-wide v2

    .line 105
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 111
    .end local v2           #_result:J
    :sswitch_8
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->seekDown()J

    move-result-wide v2

    .line 113
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 119
    .end local v2           #_result:J
    :sswitch_9
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->cancelSeek()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    :sswitch_a
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCurrentChannel()J

    move-result-wide v2

    .line 128
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 134
    .end local v2           #_result:J
    :sswitch_b
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->scan()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 141
    :sswitch_c
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->cancelScan()Z

    move-result v2

    .line 143
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v2           #_result:Z
    :sswitch_d
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isScanning()Z

    move-result v2

    .line 151
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v2           #_result:Z
    :sswitch_e
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isSeeking()Z

    move-result v2

    .line 159
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v2, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    .end local v2           #_result:Z
    :sswitch_f
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->searchDown()J

    move-result-wide v2

    .line 167
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 173
    .end local v2           #_result:J
    :sswitch_10
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->searchUp()J

    move-result-wide v2

    .line 175
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 181
    .end local v2           #_result:J
    :sswitch_11
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->searchAll()J

    move-result-wide v2

    .line 183
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 189
    .end local v2           #_result:J
    :sswitch_12
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->enableRDS()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 196
    :sswitch_13
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->disableRDS()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 203
    :sswitch_14
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->enableAF()V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 210
    :sswitch_15
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->disableAF()V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 217
    :sswitch_16
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setBand(I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 226
    .end local v0           #_arg0:I
    :sswitch_17
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setChannelSpacing(I)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 235
    .end local v0           #_arg0:I
    :sswitch_18
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isBusy()I

    move-result v2

    .line 237
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 243
    .end local v2           #_result:I
    :sswitch_19
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isRDSEnable()Z

    move-result v2

    .line 245
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 251
    .end local v2           #_result:Z
    :sswitch_1a
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isAFEnable()Z

    move-result v2

    .line 253
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v2, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v2           #_result:Z
    :sswitch_1b
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->cancelAFSwitching()V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 266
    :sswitch_1c
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getLastScanResult()[J

    move-result-object v2

    .line 268
    .local v2, _result:[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 274
    .end local v2           #_result:[J
    :sswitch_1d
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setStereo()V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 281
    :sswitch_1e
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setMono()V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 288
    :sswitch_1f
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 291
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setVolume(J)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 297
    .end local v0           #_arg0:J
    :sswitch_20
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->SkipTuning_Value()V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 304
    :sswitch_21
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getVolume()J

    move-result-wide v2

    .line 306
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 312
    .end local v2           #_result:J
    :sswitch_22
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isHeadsetPlugged()Z

    move-result v2

    .line 314
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v2, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 320
    .end local v2           #_result:Z
    :sswitch_23
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isTvOutPlugged()Z

    move-result v2

    .line 322
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v2, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 328
    .end local v2           #_result:Z
    :sswitch_24
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    move v0, v5

    .line 331
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSpeakerOn(Z)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_a
    move v0, v4

    .line 330
    goto :goto_1

    .line 337
    :sswitch_25
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setRecordMode(I)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 346
    .end local v0           #_arg0:I
    :sswitch_26
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getMaxVolume()J

    move-result-wide v2

    .line 348
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 354
    .end local v2           #_result:J
    :sswitch_27
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isAirPlaneMode()Z

    move-result v2

    .line 356
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v2, :cond_b

    move v4, v5

    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 362
    .end local v2           #_result:Z
    :sswitch_28
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 365
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setDEConstant(J)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 371
    .end local v0           #_arg0:J
    :sswitch_29
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCurrentRSSI()J

    move-result-wide v2

    .line 373
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 379
    .end local v2           #_result:J
    :sswitch_2a
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 382
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSeekRSSI(J)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 388
    .end local v0           #_arg0:J
    :sswitch_2b
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 391
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSeekSNR(J)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 397
    .end local v0           #_arg0:J
    :sswitch_2c
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 400
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setRSSI_th(I)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 406
    .end local v0           #_arg0:I
    :sswitch_2d
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSNR_th(I)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 415
    .end local v0           #_arg0:I
    :sswitch_2e
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 418
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setCnt_th(I)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 424
    .end local v0           #_arg0:I
    :sswitch_2f
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 427
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setRSSI_th_2(I)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 433
    .end local v0           #_arg0:I
    :sswitch_30
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 436
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSNR_th_2(I)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 442
    .end local v0           #_arg0:I
    :sswitch_31
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 445
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setCnt_th_2(I)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 451
    .end local v0           #_arg0:I
    :sswitch_32
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getRSSI_th()I

    move-result v2

    .line 453
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 459
    .end local v2           #_result:I
    :sswitch_33
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getSNR_th()I

    move-result v2

    .line 461
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 467
    .end local v2           #_result:I
    :sswitch_34
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCnt_th()I

    move-result v2

    .line 469
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 475
    .end local v2           #_result:I
    :sswitch_35
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getRSSI_th_2()I

    move-result v2

    .line 477
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 483
    .end local v2           #_result:I
    :sswitch_36
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getSNR_th_2()I

    move-result v2

    .line 485
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 491
    .end local v2           #_result:I
    :sswitch_37
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCnt_th_2()I

    move-result v2

    .line 493
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 499
    .end local v2           #_result:I
    :sswitch_38
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->on_in_testmode()Z

    move-result v2

    .line 501
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v2, :cond_c

    move v4, v5

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 507
    .end local v2           #_result:Z
    :sswitch_39
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isBatteryLow()Z

    move-result v2

    .line 509
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v2, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 515
    .end local v2           #_result:Z
    :sswitch_3a
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 518
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setAF_th(I)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 524
    .end local v0           #_arg0:I
    :sswitch_3b
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getAF_th()I

    move-result v2

    .line 526
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 532
    .end local v2           #_result:I
    :sswitch_3c
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 535
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setAFValid_th(I)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 541
    .end local v0           #_arg0:I
    :sswitch_3d
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getAFValid_th()I

    move-result v2

    .line 543
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 549
    .end local v2           #_result:I
    :sswitch_3e
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    move v0, v5

    .line 552
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setFMIntenna(Z)V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_e
    move v0, v4

    .line 551
    goto :goto_2

    .line 43
    nop

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
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
