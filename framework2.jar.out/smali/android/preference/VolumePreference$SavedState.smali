.class Landroid/preference/VolumePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/preference/VolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:Landroid/preference/VolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Landroid/preference/VolumePreference$SavedState$1;

    invoke-direct {v0}, Landroid/preference/VolumePreference$SavedState$1;-><init>()V

    sput-object v0, Landroid/preference/VolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 237
    new-instance v0, Landroid/preference/VolumePreference$VolumeStore;

    invoke-direct {v0}, Landroid/preference/VolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Landroid/preference/VolumePreference$SavedState;->mVolumeStore:Landroid/preference/VolumePreference$VolumeStore;

    .line 241
    iget-object v0, p0, Landroid/preference/VolumePreference$SavedState;->mVolumeStore:Landroid/preference/VolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 242
    iget-object v0, p0, Landroid/preference/VolumePreference$SavedState;->mVolumeStore:Landroid/preference/VolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 237
    new-instance v0, Landroid/preference/VolumePreference$VolumeStore;

    invoke-direct {v0}, Landroid/preference/VolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Landroid/preference/VolumePreference$SavedState;->mVolumeStore:Landroid/preference/VolumePreference$VolumeStore;

    .line 258
    return-void
.end method


# virtual methods
.method getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/preference/VolumePreference$SavedState;->mVolumeStore:Landroid/preference/VolumePreference$VolumeStore;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 248
    iget-object v0, p0, Landroid/preference/VolumePreference$SavedState;->mVolumeStore:Landroid/preference/VolumePreference$VolumeStore;

    iget v0, v0, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v0, p0, Landroid/preference/VolumePreference$SavedState;->mVolumeStore:Landroid/preference/VolumePreference$VolumeStore;

    iget v0, v0, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    return-void
.end method
