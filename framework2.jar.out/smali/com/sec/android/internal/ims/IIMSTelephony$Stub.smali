.class public abstract Lcom/sec/android/internal/ims/IIMSTelephony$Stub;
.super Landroid/os/Binder;
.source "IIMSTelephony.java"

# interfaces
.implements Lcom/sec/android/internal/ims/IIMSTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IIMSTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IIMSTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.internal.ims.IIMSTelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x4

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x2

.field static final TRANSACTION_endCall:I = 0x3

.field static final TRANSACTION_getCallState:I = 0xa

.field static final TRANSACTION_isIMSEnabledOnWifi:I = 0xb

.field static final TRANSACTION_isIdle:I = 0x8

.field static final TRANSACTION_isOffhook:I = 0x6

.field static final TRANSACTION_isRinging:I = 0x7

.field static final TRANSACTION_isVideoCall:I = 0x9

.field static final TRANSACTION_showCallScreen:I = 0x1

.field static final TRANSACTION_silenceRinger:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSTelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v1, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/internal/ims/IIMSTelephony;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/sec/android/internal/ims/IIMSTelephony;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/sec/android/internal/ims/IIMSTelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 51
    :sswitch_0
    const-string v1, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v3, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->showCallScreen()Z

    move-result v0

    .line 58
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v0           #_result:Z
    :sswitch_2
    const-string v1, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->cancelMissedCallsNotification()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    :sswitch_3
    const-string v3, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->endCall()Z

    move-result v0

    .line 73
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v0           #_result:Z
    :sswitch_4
    const-string v1, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->answerRingingCall()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    :sswitch_5
    const-string v1, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->silenceRinger()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    :sswitch_6
    const-string v3, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->isOffhook()Z

    move-result v0

    .line 95
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v0           #_result:Z
    :sswitch_7
    const-string v3, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->isRinging()Z

    move-result v0

    .line 103
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 109
    .end local v0           #_result:Z
    :sswitch_8
    const-string v3, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->isIdle()Z

    move-result v0

    .line 111
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0           #_result:Z
    :sswitch_9
    const-string v3, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->isVideoCall()Z

    move-result v0

    .line 119
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    .end local v0           #_result:Z
    :sswitch_a
    const-string v1, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->getCallState()I

    move-result v0

    .line 127
    .local v0, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v0           #_result:I
    :sswitch_b
    const-string v3, "com.sec.android.internal.ims.IIMSTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSTelephony$Stub;->isIMSEnabledOnWifi()Z

    move-result v0

    .line 135
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 47
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
