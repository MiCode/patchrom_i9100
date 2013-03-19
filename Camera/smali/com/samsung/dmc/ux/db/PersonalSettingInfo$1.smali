.class Lcom/samsung/dmc/ux/db/PersonalSettingInfo$1;
.super Ljava/lang/Object;
.source "PersonalSettingInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/dmc/ux/db/PersonalSettingInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 188
    new-instance v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    .line 189
    .local v0, personalSettingInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    .line 195
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 200
    new-array v0, p1, [Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo$1;->newArray(I)[Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    return-object v0
.end method
