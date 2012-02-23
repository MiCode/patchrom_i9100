.class public Landroid/app/enterprise/DeviceInventory;
.super Ljava/lang/Object;
.source "DeviceInventory.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "DeviceInventory"

    sput-object v0, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "device_info"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    .line 20
    return-void
.end method


# virtual methods
.method public clearCallingLog()Z
    .locals 3

    .prologue
    .line 728
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 730
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->clearCallingLog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 735
    :goto_0
    return v1

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearSMSLog()Z
    .locals 3

    .prologue
    .line 591
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 593
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->clearSMSLog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    :goto_0
    return v1

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dataUsageTimerActivation()V
    .locals 3

    .prologue
    .line 981
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 983
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->dataUsageTimerActivation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableCallingCapture(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 616
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 618
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->enableCallingCapture(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 623
    :goto_0
    return v1

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSMSCapture(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 485
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 487
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->enableSMSCapture(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 492
    :goto_0
    return v1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvailableCapacityExternal()J
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityExternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 99
    :goto_0
    return-wide v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAvailableCapacityInternal()J
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityInternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 131
    :goto_0
    return-wide v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAvailableRamMemory()J
    .locals 3

    .prologue
    .line 459
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 461
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableRamMemory()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 466
    :goto_0
    return-wide v1

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesReceivedNetwork()J
    .locals 3

    .prologue
    .line 898
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 900
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesReceivedNetwork()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 905
    :goto_0
    return-wide v1

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesReceivedWiFi()J
    .locals 3

    .prologue
    .line 858
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 860
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesReceivedWiFi()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 865
    :goto_0
    return-wide v1

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 865
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesSentNetwork()J
    .locals 3

    .prologue
    .line 878
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 880
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesSentNetwork()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 885
    :goto_0
    return-wide v1

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesSentWiFi()J
    .locals 3

    .prologue
    .line 838
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 840
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesSentWiFi()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 845
    :goto_0
    return-wide v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1107
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1109
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1114
    :goto_0
    return-object v1

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1114
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataCallLoggingEnabled()Z
    .locals 3

    .prologue
    .line 1053
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1055
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallLoggingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1060
    :goto_0
    return v1

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataCallStatisticsEnabled()Z
    .locals 3

    .prologue
    .line 818
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 820
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallStatisticsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 825
    :goto_0
    return v1

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getDataCallStatisticsEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataUsageTimer()I
    .locals 3

    .prologue
    .line 963
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 965
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataUsageTimer()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 970
    :goto_0
    return v1

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 273
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceMaker()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 278
    :goto_0
    return-object v1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 287
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOS()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 294
    :goto_0
    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 305
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOSVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 310
    :goto_0
    return-object v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 321
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDevicePlatform()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 326
    :goto_0
    return-object v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceProcessorSpeed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 352
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 354
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceProcessorSpeed()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 359
    :goto_0
    return-object v1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceProcessorType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 338
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceProcessorType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 343
    :goto_0
    return-object v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDroppedCallsCount()I
    .locals 3

    .prologue
    .line 369
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 371
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDroppedCallsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 376
    :goto_0
    return v1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getInboundSMSCaptured()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 549
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getInboundSMSCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 554
    :goto_0
    return-object v1

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncomingCallingCaptured()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 710
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getIncomingCallingCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 715
    :goto_0
    return-object v1

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMissedCallsCount()I
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 387
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getMissedCallsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 392
    :goto_0
    return v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 142
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModemFirmware()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 225
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModemFirmware()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    :goto_0
    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutboundSMSCaptured()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 526
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getOutboundSMSCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 531
    :goto_0
    return-object v1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutgoingCallingCaptured()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 687
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getOutgoingCallingCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 692
    :goto_0
    return-object v1

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlatformSDK()I
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformSDK()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 246
    :goto_0
    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 257
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 262
    :goto_0
    return-object v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlatformVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 209
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformVersionName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 198
    :goto_0
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSuccessCallsCount()I
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 403
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getSuccessCallsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 408
    :goto_0
    return v1

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTotalCapacityExternal()J
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityExternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 83
    :goto_0
    return-wide v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getTotalCapacityInternal()J
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityInternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 115
    :goto_0
    return-wide v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getTotalRamMemory()J
    .locals 3

    .prologue
    .line 438
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 440
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalRamMemory()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 445
    :goto_0
    return-wide v1

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getWifiStatisticEnabled()Z
    .locals 3

    .prologue
    .line 770
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 772
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getWifiStatisticEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 777
    :goto_0
    return v1

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCallingCaptureEnabled()Z
    .locals 3

    .prologue
    .line 632
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 634
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isCallingCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 639
    :goto_0
    return v1

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceCompromised()Z
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceCompromised()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 46
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    :goto_0
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceSecure()Z
    .locals 3

    .prologue
    .line 28
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 30
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 35
    :goto_0
    return v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSMSCaptureEnabled()Z
    .locals 3

    .prologue
    .line 501
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 503
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isSMSCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 508
    :goto_0
    return v1

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetCallsCount()Z
    .locals 3

    .prologue
    .line 417
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 419
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->resetCallsCount()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 424
    :goto_0
    return v1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetDataCallLogging(Ljava/lang/String;)Z
    .locals 3
    .parameter "time"

    .prologue
    .line 1080
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1082
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->resetDataCallLogging(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1087
    :goto_0
    return v1

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to resetDataCallLogging (String time)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetDataUsage()V
    .locals 3

    .prologue
    .line 917
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 919
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->resetDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataCallLoggingEnabled(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 1027
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1029
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataCallLoggingEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1034
    :goto_0
    return v1

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1034
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataCallStatisticsEnabled(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 796
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 798
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataCallStatisticsEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 803
    :goto_0
    return v1

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setDataCallLoggingStatisticsEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataUsageTimer(I)Z
    .locals 3
    .parameter "seconds"

    .prologue
    .line 943
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 945
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataUsageTimer(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 950
    :goto_0
    return v1

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiStatisticEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 754
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 756
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setWifiStatisticEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 761
    :goto_0
    return v1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "address"
    .parameter "timeStamp"
    .parameter "duration"
    .parameter "status"
    .parameter "isIncoming"

    .prologue
    .line 660
    iget-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v0, :cond_0

    .line 662
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IDeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    const/4 v0, 0x1

    .line 669
    :goto_0
    return v0

    .line 665
    :catch_0
    move-exception v6

    .line 666
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device inventory policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "address"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "isInbound"

    .prologue
    .line 572
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 574
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IDeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateDataUsageState()V
    .locals 3

    .prologue
    .line 998
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1000
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->updateDataUsageState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
