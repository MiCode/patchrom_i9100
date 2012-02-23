.class public Landroid/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "storage_volume"


# instance fields
.field private final mActivitySecureContainer:Z

.field private final mAllowMassStorage:Z

.field private final mDescription:Ljava/lang/String;

.field private final mEmulated:Z

.field private final mMaxFileSize:J

.field private final mMtpReserveSpace:I

.field private final mPath:Ljava/lang/String;

.field private final mRemovable:Z

.field private mStorageId:I

.field private final mSubSystem:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Landroid/os/storage/StorageVolume$1;

    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIZJ)V
    .locals 1
    .parameter "path"
    .parameter "description"
    .parameter "removable"
    .parameter "emulated"
    .parameter "mtpReserveSpace"
    .parameter "storageId"
    .parameter "allowMassStorage"
    .parameter "maxFileSize"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 67
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 68
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 69
    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 70
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 71
    iput p6, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 72
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 73
    const-string/jumbo v0, "undefined"

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIZJLjava/lang/String;Z)V
    .locals 0
    .parameter "path"
    .parameter "description"
    .parameter "removable"
    .parameter "emulated"
    .parameter "mtpReserveSpace"
    .parameter "storageId"
    .parameter "allowMassStorage"
    .parameter "maxFileSize"
    .parameter "SubSystem"
    .parameter "activitySecureContainer"

    .prologue
    .line 258
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 261
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 262
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 263
    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 264
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 265
    iput p6, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 266
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 267
    iput-object p10, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 268
    iput-boolean p11, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 269
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIZJLjava/lang/String;ZLandroid/os/storage/StorageVolume$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZJLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIZJ)V
    .locals 1
    .parameter "path"
    .parameter "description"
    .parameter "removable"
    .parameter "emulated"
    .parameter "mtpReserveSpace"
    .parameter "allowMassStorage"
    .parameter "maxFileSize"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 52
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 53
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 54
    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 55
    iput-boolean p6, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 56
    iput-wide p7, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 57
    const-string/jumbo v0, "undefined"

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIZJLjava/lang/String;Z)V
    .locals 0
    .parameter "path"
    .parameter "description"
    .parameter "removable"
    .parameter "emulated"
    .parameter "mtpReserveSpace"
    .parameter "allowMassStorage"
    .parameter "maxFileSize"
    .parameter "SubSystem"
    .parameter "activitySecureContainer"

    .prologue
    .line 243
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    .line 245
    iput-object p2, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 246
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 247
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 248
    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 249
    iput-boolean p6, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 250
    iput-wide p7, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 251
    iput-object p9, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 252
    iput-boolean p10, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 253
    return-void
.end method


# virtual methods
.method public allowMassStorage()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 168
    instance-of v1, p1, Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 169
    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 170
    .local v0, volume:Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    iget-object v2, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 172
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActivitySecureContainer()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMtpReserveSpace()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageId()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public getSubSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    return v0
.end method

.method public setStorageId(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 129
    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageVolume [mAllowMassStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEmulated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMtpReserveSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStorageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-wide v3, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 224
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    return-void

    :cond_0
    move v0, v2

    .line 218
    goto :goto_0

    :cond_1
    move v0, v2

    .line 219
    goto :goto_1

    :cond_2
    move v0, v2

    .line 222
    goto :goto_2

    :cond_3
    move v1, v2

    .line 225
    goto :goto_3
.end method
