.class final Lcom/android/sec_settings/bluetooth/SapProfile;
.super Ljava/lang/Object;
.source "SapProfile.java"

# interfaces
.implements Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/bluetooth/SapProfile$1;,
        Lcom/android/sec_settings/bluetooth/SapProfile$SapServiceListener;
    }
.end annotation


# instance fields
.field private mService:Landroid/bluetooth/BluetoothSap;


# direct methods
.method static synthetic access$002(Lcom/android/sec_settings/bluetooth/SapProfile;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    return-object p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnectImmediate(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->disconnectImmediate(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 116
    const v0, 0x7f0901e2

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x7

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 121
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 129
    :pswitch_0
    invoke-static {v0}, Lcom/android/sec_settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 123
    :pswitch_1
    const v1, 0x7f0901f5

    goto :goto_0

    .line 126
    :pswitch_2
    const v1, 0x7f0901f4

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    const/16 v1, 0x64

    .line 94
    if-eqz p2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "SAP"

    return-object v0
.end method
