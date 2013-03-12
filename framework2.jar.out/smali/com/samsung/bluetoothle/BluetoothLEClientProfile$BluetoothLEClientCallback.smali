.class Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;
.super Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack$Stub;
.source "BluetoothLEClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bluetoothle/BluetoothLEClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothLEClientCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothLEClientCallback"


# instance fields
.field final synthetic this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;


# direct methods
.method constructor <init>(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-direct {p0}, Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack$Stub;-><init>()V

    .line 92
    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;)V
    .locals 8
    .parameter "deviceAddress"

    .prologue
    .line 95
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    const-string v6, "BluetoothLEClientCallback"

    const-string v7, "----- onConnected"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$202(I)I

    .line 98
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getRemoteServicePaths()[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, servicePaths:[Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 100
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_3

    .line 101
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->getRemoteServiceUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, uuidString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    :cond_0
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mServices:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$500(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/bluetoothle/BluetoothLEClientService;

    .line 107
    .local v0, bLEClientservice:Lcom/samsung/bluetoothle/BluetoothLEClientService;
    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->getServiceUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    const-string v6, "BluetoothLEClientCallback"

    const-string v7, "added to mRequiredServices"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0           #bLEClientservice:Lcom/samsung/bluetoothle/BluetoothLEClientService;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #uuidString:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 117
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/bluetoothle/BluetoothLEClientService;

    iget-object v6, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->init(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    :cond_4
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    iget-object v6, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->onLEDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 120
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .locals 5
    .parameter "deviceAddress"

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    const-string v2, "BluetoothLEClientCallback"

    const-string v3, "----- onDisconnected"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$200()I

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    const-string v2, "BluetoothLEClientCallback"

    const-string v3, "already disconnected state, so ignore the signal"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {v4}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$202(I)I

    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->isCharDiscoveryInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v1, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->setCharDiscoveryProgress(Z)V

    .line 131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_2
    invoke-static {v4}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$602(Z)Z

    .line 136
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->onLEDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public onGetRssiValue(Ljava/lang/String;)V
    .locals 3
    .parameter "rssival"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    const-string v1, "BluetoothLEClientCallback"

    const-string v2, "onGetRssiValue"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->onGetRssiValue(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onLinkLoss()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    const-string v1, "BluetoothLEClientCallback"

    const-string v2, "onLinkLoss"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$200()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    const-string v1, "BluetoothLEClientCallback"

    const-string v2, "already in disconnected state, so ignore the signal"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->onLELinkLoss(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method
