.class Landroid/app/ApplicationThreadProxy;
.super Ljava/lang/Object;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# instance fields
.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 638
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    .line 640
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 6
    .parameter "packageName"
    .parameter "info"
    .parameter
    .parameter "testName"
    .parameter "profileName"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .parameter "testArgs"
    .parameter "testWatcher"
    .parameter "debugMode"
    .parameter "openGlTrace"
    .parameter "restrictedBackupMode"
    .parameter "persistent"
    .parameter "config"
    .parameter "compatInfo"
    .parameter
    .parameter "coreSettings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 903
    .local p3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p16, services:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 904
    .local v1, data:Landroid/os/Parcel;
    const-string v2, "android.app.IApplicationThread"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 906
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 907
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 908
    if-nez p4, :cond_0

    .line 909
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    :goto_0
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 915
    if-eqz p6, :cond_1

    .line 916
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    const/4 v2, 0x1

    invoke-virtual {p6, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 921
    :goto_1
    if-eqz p7, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 923
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 924
    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    if-eqz p11, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    if-eqz p12, :cond_4

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    if-eqz p13, :cond_5

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    const/4 v2, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 929
    const/4 v2, 0x0

    move-object/from16 v0, p15

    invoke-virtual {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 930
    move-object/from16 v0, p16

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 931
    move-object/from16 v0, p17

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 932
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 935
    return-void

    .line 911
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 919
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 921
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 925
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 926
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 927
    :cond_5
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public clearDnsCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 983
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 984
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 987
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 5
    .parameter "cmd"
    .parameter "packages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1117
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1120
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1124
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "token"
    .parameter "prefix"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1156
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1158
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1159
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1163
    return-void
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1228
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1230
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1231
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1233
    return-void
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1219
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1221
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1224
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .parameter "managed"
    .parameter "path"
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1139
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1140
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1142
    if-eqz p3, :cond_1

    .line 1143
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    invoke-virtual {p3, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1148
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1151
    return-void

    :cond_0
    move v1, v3

    .line 1140
    goto :goto_0

    .line 1146
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public dumpLooper(Ljava/io/FileDescriptor;)V
    .locals 5
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1168
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1170
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1172
    return-void
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;ZZ[Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .locals 6
    .parameter "fd"
    .parameter "checkin"
    .parameter "all"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1202
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1203
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IApplicationThread"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1205
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1206
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1208
    iget-object v3, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1209
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1210
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 1211
    .local v1, info:Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1213
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1214
    return-object v1

    .end local v1           #info:Landroid/os/Debug$MemoryInfo;
    :cond_0
    move v3, v5

    .line 1205
    goto :goto_0

    :cond_1
    move v4, v5

    .line 1206
    goto :goto_1
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "token"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1021
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1023
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1024
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1027
    return-void
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "token"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1010
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1012
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1013
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1014
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1016
    return-void
.end method

.method public getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
    .locals 5
    .parameter "outInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1106
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1107
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IApplicationThread"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1108
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1110
    invoke-virtual {p1, v1}, Landroid/os/Debug$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1113
    return-void
.end method

.method public processInBackground()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1001
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1002
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1005
    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .locals 5
    .parameter "start"
    .parameter "path"
    .parameter "fd"
    .parameter "profileType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1080
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1081
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1082
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1084
    if-eqz p3, :cond_1

    .line 1085
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    invoke-virtual {p3, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1090
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1093
    return-void

    :cond_0
    move v1, v3

    .line 1081
    goto :goto_0

    .line 1088
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public requestDelayJITCompilation(J)V
    .locals 5
    .parameter "delaySeconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1245
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1247
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1249
    return-void
.end method

.method public final requestThumbnail(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 956
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 958
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 961
    return-void
.end method

.method public final scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1057
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1059
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1062
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 5
    .parameter "token"
    .parameter "intent"
    .parameter "rebind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 847
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.app.IApplicationThread"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 849
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 850
    if-eqz p3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 854
    return-void
.end method

.method public final scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 966
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 967
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 968
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 5
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1128
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1130
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1134
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 5
    .parameter "app"
    .parameter "compatInfo"
    .parameter "backupMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 812
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 814
    invoke-virtual {p2, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 815
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 819
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .parameter "token"
    .parameter "info"
    .parameter "compatInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 835
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 837
    invoke-virtual {p2, v0, v2}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 838
    invoke-virtual {p3, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 839
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 5
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 783
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 785
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    return-void

    .line 785
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .parameter "app"
    .parameter "compatInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 824
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 826
    invoke-virtual {p2, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 827
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    return-void
.end method

.method public final scheduleExit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 939
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 940
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 943
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V
    .locals 6
    .parameter "intent"
    .parameter "token"
    .parameter "ident"
    .parameter "info"
    .parameter "curConfig"
    .parameter "compatInfo"
    .parameter "state"
    .parameter
    .parameter
    .parameter "notResumed"
    .parameter "isForward"
    .parameter "profileName"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 721
    .local p8, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p9, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 722
    .local v1, data:Landroid/os/Parcel;
    const-string v2, "android.app.IApplicationThread"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 723
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 724
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 725
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 727
    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 728
    const/4 v2, 0x0

    invoke-virtual {p6, v1, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 729
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 730
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 731
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 732
    if-eqz p10, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    if-eqz p11, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 735
    if-eqz p13, :cond_2

    .line 736
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    const/4 v2, 0x1

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 741
    :goto_2
    if-eqz p14, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    return-void

    .line 732
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 733
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 739
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 741
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public final scheduleLowMemory()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1048
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1049
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1052
    return-void
.end method

.method public scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 5
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 771
    .local p1, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 772
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 774
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 775
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 778
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 4
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 649
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 651
    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    if-eqz p3, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 657
    return-void

    :cond_1
    move v1, v3

    .line 651
    goto :goto_0
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 5
    .parameter "intent"
    .parameter "info"
    .parameter "compatInfo"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "map"
    .parameter "sync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 796
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.app.IApplicationThread"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 798
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 799
    invoke-virtual {p3, v0, v1}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 800
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 803
    if-eqz p7, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 807
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 5
    .parameter "receiver"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "dataStr"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1033
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1034
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1035
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1036
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1039
    if-eqz p6, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    if-eqz p7, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    return-void

    :cond_1
    move v1, v3

    .line 1039
    goto :goto_0
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 5
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 752
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 754
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 755
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 756
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    if-eqz p5, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    if-eqz p6, :cond_1

    .line 759
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    invoke-virtual {p6, v0, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 764
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 767
    return-void

    :cond_0
    move v1, v3

    .line 757
    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "isForward"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 696
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 698
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 702
    return-void

    .line 698
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 5
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 706
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 707
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 709
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 710
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 713
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 5
    .parameter "token"
    .parameter "taskRemoved"
    .parameter "startId"
    .parameter "flags"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 870
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 872
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    if-eqz p5, :cond_1

    .line 876
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    invoke-virtual {p5, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 881
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 884
    return-void

    :cond_0
    move v1, v3

    .line 872
    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "sleeping"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 685
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 687
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 691
    return-void

    .line 687
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 5
    .parameter "token"
    .parameter "showWindow"
    .parameter "configChanges"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 662
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 664
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 669
    return-void

    .line 664
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 889
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 891
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 894
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 947
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 951
    return-void
.end method

.method public scheduleTrimMemory(I)V
    .locals 5
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1193
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1197
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 5
    .parameter "token"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 859
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 861
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 862
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 865
    return-void
.end method

.method public final scheduleWindowStatusChanged(Landroid/os/IBinder;II)V
    .locals 5
    .parameter "token"
    .parameter "windowMode"
    .parameter "windowInfoChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1068
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1070
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1075
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "showWindow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 674
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 676
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    return-void

    .line 676
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 5
    .parameter "coreSettings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1176
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1178
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1179
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "proxy"
    .parameter "port"
    .parameter "exclList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 991
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 994
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 995
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 997
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 5
    .parameter "group"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1097
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1102
    return-void
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 5
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1237
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1239
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1241
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .parameter "pkg"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1184
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1186
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1187
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1189
    return-void
.end method

.method public updateTimeZone()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 975
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    return-void
.end method
