.class final Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeadsetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 60
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3, p2}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->access$002(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 61
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    const/4 v4, 0x1

    #setter for: Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mProfileReady:Z
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->access$102(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;Z)Z

    .line 64
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->access$000(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 69
    .local v2, firstDevice:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->access$200(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 71
    .local v0, device:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 72
    const-string v3, "HeadsetProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HeadsetProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->access$200(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->access$300(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->access$400(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;I)V

    .line 78
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->access$400(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->access$102(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;Z)Z

    .line 83
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->access$002(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 84
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->access$400(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    .line 85
    return-void
.end method
