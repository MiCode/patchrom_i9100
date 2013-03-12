.class public abstract Landroid/bluetooth/IAvrcpProxyCallback$Stub;
.super Landroid/os/Binder;
.source "IAvrcpProxyCallback.java"

# interfaces
.implements Landroid/bluetooth/IAvrcpProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IAvrcpProxyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IAvrcpProxyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IAvrcpProxyCallback"

.field static final TRANSACTION_getElementAttributes:I = 0x3

.field static final TRANSACTION_getPlayStatus:I = 0x1

.field static final TRANSACTION_getPlayerSettingVal:I = 0x6

.field static final TRANSACTION_getSupportedEvents:I = 0x2

.field static final TRANSACTION_listPlayerSettingAttrs:I = 0x4

.field static final TRANSACTION_listPlayerSettingVals:I = 0x5

.field static final TRANSACTION_setPlayerSettingVal:I = 0x7

.field static final TRANSACTION_updatePlayerSettingVals:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.bluetooth.IAvrcpProxyCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IAvrcpProxyCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.bluetooth.IAvrcpProxyCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/bluetooth/IAvrcpProxyCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IAvrcpProxyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "android.bluetooth.IAvrcpProxyCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "android.bluetooth.IAvrcpProxyCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;->getPlayStatus()Landroid/os/PlayStatusParcel;

    move-result-object v2

    .line 49
    .local v2, _result:Landroid/os/PlayStatusParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {v2, p3, v4}, Landroid/os/PlayStatusParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v2           #_result:Landroid/os/PlayStatusParcel;
    :sswitch_2
    const-string v5, "android.bluetooth.IAvrcpProxyCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;->getSupportedEvents()Landroid/os/SupportedEventsParcel;

    move-result-object v2

    .line 63
    .local v2, _result:Landroid/os/SupportedEventsParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {v2, p3, v4}, Landroid/os/SupportedEventsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v2           #_result:Landroid/os/SupportedEventsParcel;
    :sswitch_3
    const-string v3, "android.bluetooth.IAvrcpProxyCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;->getElementAttributes()[Landroid/os/ElementAttributeParcel;

    move-result-object v2

    .line 77
    .local v2, _result:[Landroid/os/ElementAttributeParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 83
    .end local v2           #_result:[Landroid/os/ElementAttributeParcel;
    :sswitch_4
    const-string v5, "android.bluetooth.IAvrcpProxyCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;->listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;

    move-result-object v2

    .line 85
    .local v2, _result:Landroid/os/PlayerSettingsParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {v2, p3, v4}, Landroid/os/PlayerSettingsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v2           #_result:Landroid/os/PlayerSettingsParcel;
    :sswitch_5
    const-string v5, "android.bluetooth.IAvrcpProxyCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 100
    .local v0, _arg0:B
    invoke-virtual {p0, v0}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;->listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;

    move-result-object v2

    .line 101
    .restart local v2       #_result:Landroid/os/PlayerSettingsParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {v2, p3, v4}, Landroid/os/PlayerSettingsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 113
    .end local v0           #_arg0:B
    .end local v2           #_result:Landroid/os/PlayerSettingsParcel;
    :sswitch_6
    const-string v5, "android.bluetooth.IAvrcpProxyCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;->getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;

    move-result-object v2

    .line 115
    .restart local v2       #_result:Landroid/os/PlayerSettingsParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {v2, p3, v4}, Landroid/os/PlayerSettingsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 121
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 127
    .end local v2           #_result:Landroid/os/PlayerSettingsParcel;
    :sswitch_7
    const-string v3, "android.bluetooth.IAvrcpProxyCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 131
    .restart local v0       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 132
    .local v1, _arg1:B
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;->setPlayerSettingVal(BB)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 138
    .end local v0           #_arg0:B
    .end local v1           #_arg1:B
    :sswitch_8
    const-string v5, "android.bluetooth.IAvrcpProxyCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;->updatePlayerSettingVals()Z

    move-result v2

    .line 140
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
