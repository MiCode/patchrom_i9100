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

.field private final mDescriptionId:I

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
    .line 224
    new-instance v0, Landroid/os/storage/StorageVolume$1;

    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZIIZJ)V
    .locals 1
    .parameter "path"
    .parameter "descriptionId"
    .parameter "removable"
    .parameter "emulated"
    .parameter "mtpReserveSpace"
    .parameter "storageId"
    .parameter "allowMassStorage"
    .parameter "maxFileSize"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    .line 67
    iput p2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 68
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 69
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 70
    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 71
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 72
    iput p6, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 73
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 74
    const-string/jumbo v0, "undefined"

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 76
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZIIZJLjava/lang/String;Z)V
    .locals 0
    .parameter "path"
    .parameter "descriptionId"
    .parameter "removable"
    .parameter "emulated"
    .parameter "mtpReserveSpace"
    .parameter "storageId"
    .parameter "allowMassStorage"
    .parameter "maxFileSize"
    .parameter "subSystem"
    .parameter "activitySecureContainer"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    .line 98
    iput p2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 99
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 100
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 101
    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 102
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 103
    iput p6, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 104
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 105
    iput-object p10, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 106
    iput-boolean p11, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZZIIZJLjava/lang/String;ZLandroid/os/storage/StorageVolume$1;)V
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
    .line 27
    invoke-direct/range {p0 .. p11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;IZZIIZJLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZIZJ)V
    .locals 1
    .parameter "path"
    .parameter "descriptionId"
    .parameter "removable"
    .parameter "emulated"
    .parameter "mtpReserveSpace"
    .parameter "allowMassStorage"
    .parameter "maxFileSize"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    .line 52
    iput p2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 53
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 54
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 55
    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 56
    iput-boolean p6, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 57
    iput-wide p7, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 58
    const-string/jumbo v0, "undefined"

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZIZJLjava/lang/String;Z)V
    .locals 0
    .parameter "path"
    .parameter "descriptionId"
    .parameter "removable"
    .parameter "emulated"
    .parameter "mtpReserveSpace"
    .parameter "allowMassStorage"
    .parameter "maxFileSize"
    .parameter "subSystem"
    .parameter "activitySecureContainer"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    .line 82
    iput p2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 83
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 84
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 85
    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 86
    iput-boolean p6, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 87
    iput-wide p7, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 88
    iput-object p9, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 89
    iput-boolean p10, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 90
    return-void
.end method


# virtual methods
.method public allowMassStorage()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 204
    instance-of v1, p1, Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 205
    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 206
    .local v0, volume:Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    iget-object v2, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 208
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
    .line 275
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    return v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionId()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMtpReserveSpace()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public getSubSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    return v0
.end method

.method public setStorageId(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 165
    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageVolume [mAllowMassStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescriptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 253
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-wide v3, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    return-void

    :cond_0
    move v0, v2

    .line 255
    goto :goto_0

    :cond_1
    move v0, v2

    .line 256
    goto :goto_1

    :cond_2
    move v0, v2

    .line 259
    goto :goto_2

    :cond_3
    move v1, v2

    .line 262
    goto :goto_3
.end method
