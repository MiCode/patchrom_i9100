.class public Landroid/net/wifi/p2p/WifiP2pConfigList;
.super Ljava/lang/Object;
.source "WifiP2pConfigList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfigList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlllistCount:I

.field private mDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigList$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfigList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pConfigList;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    .line 48
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/p2p/WifiP2pConfig;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    .line 53
    const/4 v2, 0x0

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 55
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return v0

    .line 62
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 63
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getAllCount()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    return v0
.end method

.method public getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 112
    const/4 v1, -0x1

    .line 113
    .local v1, i:I
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 121
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 117
    .local v0, cc:Landroid/net/wifi/p2p/WifiP2pConfig;
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_1

    goto :goto_0

    .end local v0           #cc:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_2
    move-object v0, v3

    .line 121
    goto :goto_0
.end method

.method public getConfigList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v2, sbuf:Ljava/lang/StringBuffer;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 106
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pConfig;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 108
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 72
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 74
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 75
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 76
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->persist:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->persist:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    goto :goto_0

    .line 81
    .end local v0           #d:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 136
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 138
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 140
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    return-void
.end method
