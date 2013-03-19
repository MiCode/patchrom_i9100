.class public abstract Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IShareShotServiceCallback.java"

# interfaces
.implements Lcom/samsung/shareshot/IShareShotServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/shareshot/IShareShotServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/shareshot/IShareShotServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.shareshot.IShareShotServiceCallback"

.field static final TRANSACTION_callbackTest:I = 0x1

.field static final TRANSACTION_onJoinInSuccess:I = 0x3

.field static final TRANSACTION_onLeaveOutSuccess:I = 0x4

.field static final TRANSACTION_onRecvEnd:I = 0x5

.field static final TRANSACTION_onServiceBinded:I = 0x2

.field static final TRANSACTION_onShareWithRequestReceived:I = 0xd

.field static final TRANSACTION_onTaskAdded:I = 0x9

.field static final TRANSACTION_onTaskEnded:I = 0xb

.field static final TRANSACTION_onTaskRemoved:I = 0xc

.field static final TRANSACTION_onTaskUpdated:I = 0xa

.field static final TRANSACTION_onUserActivated:I = 0x8

.field static final TRANSACTION_onUserChanged:I = 0x6

.field static final TRANSACTION_onUserListChanged:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/shareshot/IShareShotServiceCallback;
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
    const-string v1, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/shareshot/IShareShotServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/shareshot/IShareShotServiceCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->callbackTest(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onServiceBinded()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onJoinInSuccess()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onLeaveOutSuccess()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    :sswitch_5
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onRecvEnd(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    sget-object v4, Lcom/samsung/shareshot/User;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/shareshot/User;

    .line 94
    .local v0, _arg0:Lcom/samsung/shareshot/User;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onUserChanged(Lcom/samsung/shareshot/User;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0           #_arg0:Lcom/samsung/shareshot/User;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/samsung/shareshot/User;
    goto :goto_1

    .line 100
    .end local v0           #_arg0:Lcom/samsung/shareshot/User;
    :sswitch_7
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    sget-object v4, Lcom/samsung/shareshot/User;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 103
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    invoke-virtual {p0, v1}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onUserListChanged(Ljava/util/List;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :sswitch_8
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    sget-object v4, Lcom/samsung/shareshot/User;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/shareshot/User;

    .line 118
    .restart local v0       #_arg0:Lcom/samsung/shareshot/User;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onUserActivated(Lcom/samsung/shareshot/User;I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 115
    .end local v0           #_arg0:Lcom/samsung/shareshot/User;
    .end local v2           #_arg1:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/samsung/shareshot/User;
    goto :goto_2

    .line 125
    .end local v0           #_arg0:Lcom/samsung/shareshot/User;
    :sswitch_9
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    sget-object v4, Lcom/samsung/dmc/ux/db/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    .line 133
    .local v0, _arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onTaskAdded(Lcom/samsung/dmc/ux/db/ProcessInfo;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0           #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    goto :goto_3

    .line 139
    .end local v0           #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :sswitch_a
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    sget-object v4, Lcom/samsung/dmc/ux/db/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    .line 147
    .restart local v0       #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onTaskUpdated(Lcom/samsung/dmc/ux/db/ProcessInfo;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    .end local v0           #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    goto :goto_4

    .line 153
    .end local v0           #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :sswitch_b
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 156
    sget-object v4, Lcom/samsung/dmc/ux/db/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    .line 161
    .restart local v0       #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onTaskEnded(Lcom/samsung/dmc/ux/db/ProcessInfo;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 159
    .end local v0           #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    goto :goto_5

    .line 167
    .end local v0           #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :sswitch_c
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 170
    sget-object v4, Lcom/samsung/dmc/ux/db/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    .line 175
    .restart local v0       #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onTaskRemoved(Lcom/samsung/dmc/ux/db/ProcessInfo;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 173
    .end local v0           #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    goto :goto_6

    .line 181
    .end local v0           #_arg0:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :sswitch_d
    const-string v4, "com.samsung.shareshot.IShareShotServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->onShareWithRequestReceived(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
