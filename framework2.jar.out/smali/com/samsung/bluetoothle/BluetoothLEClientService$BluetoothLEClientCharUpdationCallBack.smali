.class Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;
.super Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;
.source "BluetoothLEClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bluetoothle/BluetoothLEClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothLEClientCharUpdationCallBack"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothLEClientCharUpdationCallBack"


# instance fields
.field final synthetic this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;


# direct methods
.method constructor <init>(Lcom/samsung/bluetoothle/BluetoothLEClientService;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-direct {p0}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;-><init>()V

    .line 77
    return-void
.end method


# virtual methods
.method public onDiscoverCharacteristics(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "address"
    .parameter "charPaths"

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v1, "BluetoothLEClientCharUpdationCallBack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDiscoverCharacteristics length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z
    invoke-static {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$200(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    aget-object v1, p2, v4

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->updateSingleChar(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #setter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z
    invoke-static {v0, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$202(Lcom/samsung/bluetoothle/BluetoothLEClientService;Z)Z

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v0, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->setCharDiscoveryProgress(Z)V

    .line 146
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 147
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v1, "BluetoothLEClientCharUpdationCallBack"

    const-string v2, "notify called on this object"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->updateServiceChars(Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z
    invoke-static {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$200(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->indicateDiscoverCharsByUuidFailure()V
    invoke-static {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$500(Lcom/samsung/bluetoothle/BluetoothLEClientService;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #setter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z
    invoke-static {v0, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$202(Lcom/samsung/bluetoothle/BluetoothLEClientService;Z)Z

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;
    invoke-static {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$700(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$600(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->updateRefreshState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->indicateDiscoverCharsFailure()V
    invoke-static {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$800(Lcom/samsung/bluetoothle/BluetoothLEClientService;)V

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDiscoverCharacteristicsFailed(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v1, "BluetoothLEClientCharUpdationCallBack"

    const-string v2, "onDiscoverCharacteristicsFailed"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z
    invoke-static {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$200(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->indicateDiscoverCharsByUuidFailure()V
    invoke-static {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$500(Lcom/samsung/bluetoothle/BluetoothLEClientService;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #setter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z
    invoke-static {v0, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$202(Lcom/samsung/bluetoothle/BluetoothLEClientService;Z)Z

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v0, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->setCharDiscoveryProgress(Z)V

    .line 168
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 169
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v1, "BluetoothLEClientCharUpdationCallBack"

    const-string v2, "notify called on this object"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_1
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;
    invoke-static {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$700(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$600(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->updateRefreshState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->indicateDiscoverCharsFailure()V
    invoke-static {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$800(Lcom/samsung/bluetoothle/BluetoothLEClientService;)V

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onReadCharValue(Ljava/lang/String;)V
    .locals 3
    .parameter "charPath"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v1, "BluetoothLEClientCharUpdationCallBack"

    const-string v2, "onReadCharValue"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "charPath"
    .parameter "value"

    .prologue
    .line 108
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v3, "BluetoothLEClientCharUpdationCallBack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWatcherValueChanged char Path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    invoke-virtual {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getCharPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    check-cast v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    .line 114
    .restart local v0       #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    const-string v2, "Value"

    invoke-virtual {v0, v2, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v2, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->onWatcherValueChanged(Lcom/samsung/bluetoothle/BluetoothLEClientChar;)V

    .line 119
    :cond_0
    return-void

    .line 111
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onWriteCharValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "charPath"
    .parameter "status"

    .prologue
    .line 84
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v3, "BluetoothLEClientCharUpdationCallBack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWriteCharValue char Path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    check-cast v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    .line 89
    .restart local v0       #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getCharPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->onWriteCharValue(Lcom/samsung/bluetoothle/BluetoothLEClientChar;Ljava/lang/String;)V

    .line 93
    return-void

    .line 87
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onWriteClientConfigDesc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "charPath"
    .parameter "status"

    .prologue
    .line 96
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v3, "BluetoothLEClientCharUpdationCallBack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWriteClientConfigDesc char Path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    check-cast v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    .line 101
    .restart local v0       #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getCharPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->onWriteClientConfigDesc(Lcom/samsung/bluetoothle/BluetoothLEClientChar;Ljava/lang/String;)V

    .line 105
    return-void

    .line 99
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
