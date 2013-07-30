.class final Lcom/android/sec_settings/bluetooth/HidProfile;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/bluetooth/HidProfile$1;,
        Lcom/android/sec_settings/bluetooth/HidProfile$InputDeviceServiceListener;
    }
.end annotation


# instance fields
.field private mProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;)V
    .locals 2
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/sec_settings/bluetooth/HidProfile$InputDeviceServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/sec_settings/bluetooth/HidProfile$InputDeviceServiceListener;-><init>(Lcom/android/sec_settings/bluetooth/HidProfile;Lcom/android/sec_settings/bluetooth/HidProfile$1;)V

    const/4 v1, 0x4

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 59
    return-void
.end method

.method static synthetic access$002(Lcom/android/sec_settings/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/sec_settings/bluetooth/HidProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mProfileReady:Z

    return p1
.end method

.method static getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 152
    const v0, 0x7f020114

    :goto_0
    return v0

    .line 146
    :sswitch_0
    const v0, 0x7f020120

    goto :goto_0

    .line 148
    :sswitch_1
    const v0, 0x7f020122

    goto :goto_0

    .line 150
    :sswitch_2
    const v0, 0x7f02012c

    goto :goto_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x540 -> :sswitch_0
        0x580 -> :sswitch_2
        0x5c0 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    const v0, 0x7f020121

    .line 138
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/sec_settings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    goto :goto_0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 117
    const v0, 0x7f0901e1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x3

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 122
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 130
    :pswitch_0
    invoke-static {v0}, Lcom/android/sec_settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 124
    :pswitch_1
    const v1, 0x7f0901fc

    goto :goto_0

    .line 127
    :pswitch_2
    const v1, 0x7f0901f6

    goto :goto_0

    .line 122
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
    const/4 v0, 0x1

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
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

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
    iget-boolean v0, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mProfileReady:Z

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
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "HID"

    return-object v0
.end method
