.class final Landroid/location/Criteria$1;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Criteria;
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
        "Landroid/location/Criteria;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;
    .locals 4
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 330
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 331
    .local v0, c:Landroid/location/Criteria;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/location/Criteria;->mHorizontalAccuracy:I
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$002(Landroid/location/Criteria;I)I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/location/Criteria;->mVerticalAccuracy:I
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$102(Landroid/location/Criteria;I)I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/location/Criteria;->mSpeedAccuracy:I
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$202(Landroid/location/Criteria;I)I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/location/Criteria;->mBearingAccuracy:I
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$302(Landroid/location/Criteria;I)I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/location/Criteria;->mPowerRequirement:I
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$402(Landroid/location/Criteria;I)I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    #setter for: Landroid/location/Criteria;->mAltitudeRequired:Z
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$502(Landroid/location/Criteria;Z)Z

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    #setter for: Landroid/location/Criteria;->mBearingRequired:Z
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$602(Landroid/location/Criteria;Z)Z

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    #setter for: Landroid/location/Criteria;->mSpeedRequired:Z
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$702(Landroid/location/Criteria;Z)Z

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    #setter for: Landroid/location/Criteria;->mCostAllowed:Z
    invoke-static {v0, v2}, Landroid/location/Criteria;->access$802(Landroid/location/Criteria;Z)Z

    .line 340
    return-object v0

    :cond_0
    move v1, v3

    .line 336
    goto :goto_0

    :cond_1
    move v1, v3

    .line 337
    goto :goto_1

    :cond_2
    move v1, v3

    .line 338
    goto :goto_2

    :cond_3
    move v2, v3

    .line 339
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/Criteria;
    .locals 1
    .parameter "size"

    .prologue
    .line 344
    new-array v0, p1, [Landroid/location/Criteria;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->newArray(I)[Landroid/location/Criteria;

    move-result-object v0

    return-object v0
.end method
