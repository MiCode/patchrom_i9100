.class Lcom/samsung/shareshot/User$1;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/shareshot/User;
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
        "Lcom/samsung/shareshot/User;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 414
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/shareshot/User;
    .locals 4
    .parameter "source"

    .prologue
    .line 418
    new-instance v0, Lcom/samsung/shareshot/User;

    invoke-direct {v0}, Lcom/samsung/shareshot/User;-><init>()V

    .line 422
    .local v0, user:Lcom/samsung/shareshot/User;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/shareshot/User;->setIconID(I)V

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->onSelected()V

    .line 428
    :goto_0
    new-instance v1, Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-direct {v1}, Lcom/samsung/dmc/ux/db/UserInfo;-><init>()V

    .line 429
    .local v1, userInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserID(I)V

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/dmc/ux/db/UserInfo;->setIPAddress(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/dmc/ux/db/UserInfo;->setMacAddress(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/dmc/ux/db/UserInfo;->setLoginTime(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/dmc/ux/db/UserInfo;->setLogoutTime(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserStatus(I)V

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/dmc/ux/db/UserInfo;->setGroupID(I)V

    .line 438
    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 439
    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 441
    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    .line 442
    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0, v1}, Lcom/samsung/shareshot/User;->setUserInfo(Lcom/samsung/dmc/ux/db/UserInfo;)V

    .line 446
    return-object v0

    .line 426
    .end local v1           #userInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->onUnSelected()V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/shareshot/User$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/shareshot/User;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/shareshot/User;
    .locals 1
    .parameter "size"

    .prologue
    .line 451
    new-array v0, p1, [Lcom/samsung/shareshot/User;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/shareshot/User$1;->newArray(I)[Lcom/samsung/shareshot/User;

    move-result-object v0

    return-object v0
.end method
