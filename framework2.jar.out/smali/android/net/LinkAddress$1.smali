.class final Landroid/net/LinkAddress$1;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkAddress;
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
        "Landroid/net/LinkAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkAddress;
    .locals 4
    .parameter "in"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, address:Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 134
    .local v1, prefixLength:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 136
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :cond_0
    :goto_0
    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v2

    .line 138
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkAddress;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkAddress;
    .locals 1
    .parameter "size"

    .prologue
    .line 144
    new-array v0, p1, [Landroid/net/LinkAddress;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress$1;->newArray(I)[Landroid/net/LinkAddress;

    move-result-object v0

    return-object v0
.end method
