.class final Lcom/samsung/wfd/WfdInfo$1;
.super Ljava/lang/Object;
.source "WfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdInfo;
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
        "Lcom/samsung/wfd/WfdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wfd/WfdInfo;
    .locals 2
    .parameter "in"

    .prologue
    .line 131
    new-instance v0, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdInfo;-><init>()V

    .line 132
    .local v0, info:Lcom/samsung/wfd/WfdInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/wfd/WfdInfo;->coupledDeviceAddress:Ljava/lang/String;

    .line 138
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WfdInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wfd/WfdInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/wfd/WfdInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 142
    new-array v0, p1, [Lcom/samsung/wfd/WfdInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WfdInfo$1;->newArray(I)[Lcom/samsung/wfd/WfdInfo;

    move-result-object v0

    return-object v0
.end method
