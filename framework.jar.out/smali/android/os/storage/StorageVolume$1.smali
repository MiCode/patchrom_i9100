.class final Landroid/os/storage/StorageVolume$1;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageVolume;
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
        "Landroid/os/storage/StorageVolume;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/StorageVolume;
    .locals 18
    .parameter "in"

    .prologue
    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, path:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, description:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 194
    .local v17, removable:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 195
    .local v16, emulated:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 196
    .local v7, storageId:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 197
    .local v6, mtpReserveSpace:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 198
    .local v15, allowMassStorage:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 199
    .local v9, maxFileSize:J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 200
    .local v11, SubSystem:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 201
    .local v14, activitySecureContainer:I
    new-instance v1, Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v8, 0x1

    if-ne v15, v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    const/4 v12, 0x1

    if-ne v14, v12, :cond_3

    const/4 v12, 0x1

    :goto_3
    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZJLjava/lang/String;ZLandroid/os/storage/StorageVolume$1;)V

    return-object v1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageVolume$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "size"

    .prologue
    .line 207
    new-array v0, p1, [Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageVolume$1;->newArray(I)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method
