.class Landroid/net/EthernetDataTracker$InterfaceObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "EthernetDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceObserver"
.end annotation


# instance fields
.field private mTracker:Landroid/net/EthernetDataTracker;


# direct methods
.method constructor <init>(Landroid/net/EthernetDataTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    .line 70
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "iface"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    #calls: Landroid/net/EthernetDataTracker;->interfaceAdded(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/net/EthernetDataTracker;->access$300(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 3
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 77
    invoke-static {}, Landroid/net/EthernetDataTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/EthernetDataTracker;->access$100()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 78
    const-string v1, "Ethernet"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " link "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "up"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p2}, Landroid/net/EthernetDataTracker;->access$102(Z)Z

    .line 80
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/EthernetDataTracker;->access$200(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 83
    if-eqz p2, :cond_2

    .line 84
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {v0}, Landroid/net/EthernetDataTracker;->reconnect()Z

    .line 89
    :cond_0
    :goto_1
    return-void

    .line 78
    :cond_1
    const-string v0, "down"

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {v0}, Landroid/net/EthernetDataTracker;->disconnect()V

    goto :goto_1
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "iface"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    #calls: Landroid/net/EthernetDataTracker;->interfaceRemoved(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/net/EthernetDataTracker;->access$400(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 3
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 73
    const-string v1, "Ethernet"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface status changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "up"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 73
    :cond_0
    const-string v0, "down"

    goto :goto_0
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "limitName"
    .parameter "iface"

    .prologue
    .line 101
    return-void
.end method
