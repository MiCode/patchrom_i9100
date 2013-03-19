.class public abstract Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;
.super Landroid/os/Binder;
.source "ISysScopeListener.java"

# interfaces
.implements Lcom/sec/android/app/sysscope/service/ISysScopeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sysscope/service/ISysScopeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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
    const/4 v2, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 48
    :sswitch_0
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->onReady()V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->onStart(I)V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->onProgress(ILjava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 81
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->onComplete(ZLjava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 87
    :sswitch_5
    const-string v3, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->onError(I)V

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
