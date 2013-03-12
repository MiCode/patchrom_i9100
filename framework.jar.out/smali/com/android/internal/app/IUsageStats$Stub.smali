.class public abstract Lcom/android/internal/app/IUsageStats$Stub;
.super Landroid/os/Binder;
.source "IUsageStats.java"

# interfaces
.implements Lcom/android/internal/app/IUsageStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IUsageStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IUsageStats"

.field static final TRANSACTION_getAllPkgUsageStats:I = 0x6

.field static final TRANSACTION_getPkgUsageStats:I = 0x5

.field static final TRANSACTION_noteLaunchTime:I = 0x3

.field static final TRANSACTION_notePauseComponent:I = 0x2

.field static final TRANSACTION_noteResumeComponent:I = 0x1

.field static final TRANSACTION_setUsageStatsWatcher:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IUsageStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IUsageStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;
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
    const-string v1, "com.android.internal.app.IUsageStats"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IUsageStats;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/app/IUsageStats;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/app/IUsageStats$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IUsageStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 56
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 62
    .local v1, _arg1:Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IUsageStats$Stub;->noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    .line 60
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/Intent;
    goto :goto_2

    .line 68
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/Intent;
    :sswitch_2
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 76
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IUsageStats$Stub;->notePauseComponent(Landroid/content/ComponentName;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .line 82
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 91
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IUsageStats$Stub;->noteLaunchTime(Landroid/content/ComponentName;I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .line 98
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IUsageStatsWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStatsWatcher;

    move-result-object v0

    .line 101
    .local v0, _arg0:Lcom/android/internal/app/IUsageStatsWatcher;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IUsageStats$Stub;->setUsageStatsWatcher(Lcom/android/internal/app/IUsageStatsWatcher;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 107
    .end local v0           #_arg0:Lcom/android/internal/app/IUsageStatsWatcher;
    :sswitch_5
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 110
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 115
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IUsageStats$Stub;->getPkgUsageStats(Landroid/content/ComponentName;)Lcom/android/internal/os/PkgUsageStats;

    move-result-object v2

    .line 116
    .local v2, _result:Lcom/android/internal/os/PkgUsageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v2, :cond_5

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v2, p3, v3}, Lcom/android/internal/os/PkgUsageStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 113
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_result:Lcom/android/internal/os/PkgUsageStats;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_5

    .line 122
    .restart local v2       #_result:Lcom/android/internal/os/PkgUsageStats;
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_result:Lcom/android/internal/os/PkgUsageStats;
    :sswitch_6
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/app/IUsageStats$Stub;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v2

    .line 130
    .local v2, _result:[Lcom/android/internal/os/PkgUsageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
