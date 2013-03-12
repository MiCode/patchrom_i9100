.class public abstract Lcom/sec/android/internal/ims/IIMSEventListener$Stub;
.super Landroid/os/Binder;
.source "IIMSEventListener.java"

# interfaces
.implements Lcom/sec/android/internal/ims/IIMSEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IIMSEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IIMSEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.internal.ims.IIMSEventListener"

.field static final TRANSACTION_handleEvent:I = 0x1

.field static final TRANSACTION_notifyEvent:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.sec.android.internal.ims.IIMSEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/internal/ims/IIMSEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSEventListener;
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
    const-string v1, "com.sec.android.internal.ims.IIMSEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/internal/ims/IIMSEventListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/sec/android/internal/ims/IIMSEventListener;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/sec/android/internal/ims/IIMSEventListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/internal/ims/IIMSEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.sec.android.internal.ims.IIMSEventListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.sec.android.internal.ims.IIMSEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 60
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 62
    .local v5, _arg4:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/sec/android/internal/ims/IIMSParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/internal/ims/IIMSParams;

    .local v6, _arg5:Lcom/sec/android/internal/ims/IIMSParams;
    :goto_1
    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/internal/ims/IIMSEventListener$Stub;->handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V

    move v0, v7

    .line 69
    goto :goto_0

    .line 66
    .end local v6           #_arg5:Lcom/sec/android/internal/ims/IIMSParams;
    :cond_0
    const/4 v6, 0x0

    .restart local v6       #_arg5:Lcom/sec/android/internal/ims/IIMSParams;
    goto :goto_1

    .line 73
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v6           #_arg5:Lcom/sec/android/internal/ims/IIMSParams;
    :sswitch_2
    const-string v0, "com.sec.android.internal.ims.IIMSEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 83
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 85
    .local v5, _arg4:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:[Ljava/lang/String;
    move-object v0, p0

    .line 86
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/internal/ims/IIMSEventListener$Stub;->notifyEvent(IIII[I[Ljava/lang/String;)V

    move v0, v7

    .line 87
    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
