.class final Landroid/preference/EditTextPreference$SavedState$1;
.super Ljava/lang/Object;
.source "EditTextPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/EditTextPreference$SavedState;
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
        "Landroid/preference/EditTextPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/preference/EditTextPreference$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 230
    new-instance v0, Landroid/preference/EditTextPreference$SavedState;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Landroid/preference/EditTextPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/preference/EditTextPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/preference/EditTextPreference$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 234
    new-array v0, p1, [Landroid/preference/EditTextPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Landroid/preference/EditTextPreference$SavedState$1;->newArray(I)[Landroid/preference/EditTextPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
