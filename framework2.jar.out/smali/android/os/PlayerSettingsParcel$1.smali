.class final Landroid/os/PlayerSettingsParcel$1;
.super Ljava/lang/Object;
.source "PlayerSettingsParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PlayerSettingsParcel;
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
        "Landroid/os/PlayerSettingsParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/PlayerSettingsParcel;
    .locals 2
    .parameter "in"

    .prologue
    .line 179
    new-instance v0, Landroid/os/PlayerSettingsParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/PlayerSettingsParcel;-><init>(Landroid/os/Parcel;Landroid/os/PlayerSettingsParcel$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/os/PlayerSettingsParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/PlayerSettingsParcel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/PlayerSettingsParcel;
    .locals 1
    .parameter "size"

    .prologue
    .line 183
    new-array v0, p1, [Landroid/os/PlayerSettingsParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/os/PlayerSettingsParcel$1;->newArray(I)[Landroid/os/PlayerSettingsParcel;

    move-result-object v0

    return-object v0
.end method
