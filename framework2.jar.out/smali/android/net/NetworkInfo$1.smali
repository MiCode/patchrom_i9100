.class final Landroid/net/NetworkInfo$1;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
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
        "Landroid/net/NetworkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfo;
    .locals 8
    .parameter "in"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 444
    .local v1, netType:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 445
    .local v2, subtype:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, typeName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, subtypeName:Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 448
    .local v0, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkInfo$State;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$State;

    move-result-object v5

    #setter for: Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->access$002(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    #setter for: Landroid/net/NetworkInfo;->mIsFailover:Z
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->access$202(Landroid/net/NetworkInfo;Z)Z

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    #setter for: Landroid/net/NetworkInfo;->mIsAvailable:Z
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->access$302(Landroid/net/NetworkInfo;Z)Z

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    #setter for: Landroid/net/NetworkInfo;->mIsRoaming:Z
    invoke-static {v0, v6}, Landroid/net/NetworkInfo;->access$402(Landroid/net/NetworkInfo;Z)Z

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    #setter for: Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->access$502(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    #setter for: Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->access$602(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    return-object v0

    :cond_0
    move v5, v7

    .line 450
    goto :goto_0

    :cond_1
    move v5, v7

    .line 451
    goto :goto_1

    :cond_2
    move v6, v7

    .line 452
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 459
    new-array v0, p1, [Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$1;->newArray(I)[Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method
