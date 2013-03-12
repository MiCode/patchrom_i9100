.class final Landroid/net/wifi/p2p/WifiP2pConfigList$1;
.super Ljava/lang/Object;
.source "WifiP2pConfigList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pConfigList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/p2p/WifiP2pConfigList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 4
    .parameter "in"

    .prologue
    .line 146
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 148
    .local v1, deviceList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .local v0, deviceCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 150
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfigList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 1
    .parameter "size"

    .prologue
    .line 156
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfigList$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v0

    return-object v0
.end method
