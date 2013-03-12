.class public abstract Lcom/android/internal/app/IUsageStatsWatcher$Stub;
.super Landroid/os/Binder;
.source "IUsageStatsWatcher.java"

# interfaces
.implements Lcom/android/internal/app/IUsageStatsWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IUsageStatsWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IUsageStatsWatcher$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IUsageStatsWatcher"

.field static final TRANSACTION_notePauseComponent:I = 0x2

.field static final TRANSACTION_noteResumeComponent:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.app.IUsageStatsWatcher"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IUsageStatsWatcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStatsWatcher;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.android.internal.app.IUsageStatsWatcher"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IUsageStatsWatcher;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/internal/app/IUsageStatsWatcher;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/android/internal/app/IUsageStatsWatcher$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IUsageStatsWatcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 46
    :sswitch_0
    const-string v3, "com.android.internal.app.IUsageStatsWatcher"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.android.internal.app.IUsageStatsWatcher"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 60
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 66
    .local v1, _arg1:Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IUsageStatsWatcher$Stub;->noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    .line 64
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/Intent;
    goto :goto_2

    .line 72
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/Intent;
    :sswitch_2
    const-string v3, "com.android.internal.app.IUsageStatsWatcher"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 80
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IUsageStatsWatcher$Stub;->notePauseComponent(Landroid/content/ComponentName;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
