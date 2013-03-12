.class public Landroid/net/RouteInfo;
.super Ljava/lang/Object;
.source "RouteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDestination:Landroid/net/LinkAddress;

.field private final mGateway:Ljava/net/InetAddress;

.field private final mIsDefault:Z

.field private final mIsHost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Landroid/net/RouteInfo$1;

    invoke-direct {v0}, Landroid/net/RouteInfo$1;-><init>()V

    sput-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V
    .locals 3
    .parameter "destination"
    .parameter "gateway"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    if-eqz p2, :cond_3

    .line 51
    instance-of v0, p2, Ljava/net/Inet4Address;

    if-eqz v0, :cond_2

    .line 52
    new-instance p1, Landroid/net/LinkAddress;

    .end local p1
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p1, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 61
    .restart local p1
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_4

    .line 63
    sget-object p2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 68
    :cond_1
    :goto_1
    new-instance v0, Landroid/net/LinkAddress;

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    .line 70
    iput-object p2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    .line 71
    invoke-direct {p0}, Landroid/net/RouteInfo;->isDefault()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/RouteInfo;->mIsDefault:Z

    .line 72
    invoke-direct {p0}, Landroid/net/RouteInfo;->isHost()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/RouteInfo;->mIsHost:Z

    .line 73
    return-void

    .line 54
    :cond_2
    new-instance p1, Landroid/net/LinkAddress;

    .end local p1
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p1, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .restart local p1
    goto :goto_0

    .line 58
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid arguments passed in."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_4
    sget-object p2, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "gateway"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 77
    return-void
.end method

.method private isDefault()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, val:Z
    iget-object v3, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_3

    .line 101
    iget-object v3, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v2

    .line 106
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_3
    iget-object v3, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move v0, v2

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private isHost()Z
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;
    .locals 1
    .parameter "host"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;
    .locals 3
    .parameter "host"
    .parameter "gateway"

    .prologue
    .line 84
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 86
    :cond_0
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/LinkAddress;

    const/16 v2, 0x20

    invoke-direct {v1, p0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/LinkAddress;

    const/16 v2, 0x80

    invoke-direct {v1, p0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    goto :goto_0
.end method

.method private matches(Ljava/net/InetAddress;)Z
    .locals 2
    .parameter "destination"

    .prologue
    .line 220
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 230
    :goto_0
    return v1

    .line 224
    :cond_0
    invoke-direct {p0}, Landroid/net/RouteInfo;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v1

    invoke-static {p1, v1}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 230
    .local v0, dstNet:Ljava/net/InetAddress;
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;
    .locals 5
    .parameter
    .parameter "dest"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")",
            "Landroid/net/RouteInfo;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, routes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 255
    :cond_1
    return-object v0

    .line 243
    :cond_2
    const/4 v0, 0x0

    .line 245
    .local v0, bestRoute:Landroid/net/RouteInfo;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 246
    .local v2, route:Landroid/net/RouteInfo;
    iget-object v3, v2, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 247
    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    iget-object v4, v2, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 252
    :cond_4
    invoke-direct {v2, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    if-ne p0, p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v3

    .line 158
    :cond_1
    instance-of v5, p1, Landroid/net/RouteInfo;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 160
    check-cast v2, Landroid/net/RouteInfo;

    .line 162
    .local v2, target:Landroid/net/RouteInfo;
    iget-object v5, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-nez v5, :cond_5

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v5

    if-nez v5, :cond_4

    move v1, v3

    .line 166
    .local v1, sameDestination:Z
    :goto_1
    iget-object v5, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-nez v5, :cond_7

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_6

    move v0, v3

    .line 170
    .local v0, sameAddress:Z
    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v5, p0, Landroid/net/RouteInfo;->mIsDefault:Z

    iget-boolean v6, v2, Landroid/net/RouteInfo;->mIsDefault:Z

    if-eq v5, v6, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .end local v0           #sameAddress:Z
    .end local v1           #sameDestination:Z
    :cond_4
    move v1, v4

    .line 162
    goto :goto_1

    :cond_5
    iget-object v5, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/LinkAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .restart local v1       #sameDestination:Z
    :cond_6
    move v0, v4

    .line 166
    goto :goto_2

    :cond_7
    iget-object v5, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2
.end method

.method public getDestination()Landroid/net/LinkAddress;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    return-object v0
.end method

.method public getGateway()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v1, v0

    iget-boolean v0, p0, Landroid/net/RouteInfo;->mIsDefault:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    goto :goto_2
.end method

.method public isDefaultRoute()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/net/RouteInfo;->mIsDefault:Z

    return v0
.end method

.method public isHostRoute()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Landroid/net/RouteInfo;->mIsHost:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    const-string v0, ""

    .line 128
    .local v0, val:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 146
    :goto_0
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 152
    :goto_1
    return-void

    .line 141
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 143
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1
.end method
