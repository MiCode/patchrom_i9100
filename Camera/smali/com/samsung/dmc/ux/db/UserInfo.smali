.class public Lcom/samsung/dmc/ux/db/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/dmc/ux/db/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GSSTATUS_ACTIVATE:I = 0x2

.field public static final GSSTATUS_INACTIVATE:I = 0x1

.field public static final GSSTATUS_OFFLINE:I = 0x0

.field public static final GSSTATUS_ONLINE:I = 0x10000000


# instance fields
.field private groupID:I

.field private ipAddress:Ljava/lang/String;

.field private loginTime:Ljava/lang/String;

.field private logoutTime:Ljava/lang/String;

.field private macAddress:Ljava/lang/String;

.field private personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

.field private userID:I

.field private userStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/samsung/dmc/ux/db/UserInfo$1;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/UserInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/dmc/ux/db/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userID:I

    .line 51
    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->groupID:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    .line 53
    new-instance v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "nUserID"
    .parameter "strUserName"
    .parameter "strIPAddress"
    .parameter "nDeviceType"
    .parameter "strLoginTime"
    .parameter "strLogoutTime"
    .parameter "nGroupID"
    .parameter "strMacAddress"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userID:I

    .line 60
    iput-object p3, p0, Lcom/samsung/dmc/ux/db/UserInfo;->ipAddress:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lcom/samsung/dmc/ux/db/UserInfo;->macAddress:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/samsung/dmc/ux/db/UserInfo;->loginTime:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lcom/samsung/dmc/ux/db/UserInfo;->logoutTime:Ljava/lang/String;

    .line 64
    iput p7, p0, Lcom/samsung/dmc/ux/db/UserInfo;->groupID:I

    .line 65
    new-instance v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    .line 66
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 67
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v0, p2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userID:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->ipAddress:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->macAddress:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->loginTime:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->logoutTime:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->groupID:I

    .line 82
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static isActivate(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 246
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnline(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 229
    const/high16 v0, 0x1000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupID()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->groupID:I

    return v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->loginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoutTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->logoutTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    return-object v0
.end method

.method public getUserID()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userID:I

    return v0
.end method

.method public getUserStatus()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    return v0
.end method

.method public isActivate()Z
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    invoke-static {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->isActivate(I)Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    invoke-static {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->isOnline(I)Z

    move-result v0

    return v0
.end method

.method public isSameIPAddress(Lcom/samsung/dmc/ux/db/UserInfo;)Z
    .locals 2
    .parameter "gsUserInfo"

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    const/4 v1, 0x0

    .line 262
    :goto_0
    return v1

    .line 261
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, tempIPAddress:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setActivateStatus(Z)V
    .locals 1
    .parameter "isActivate"

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    .line 215
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    .line 219
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    goto :goto_0
.end method

.method public setGroupID(I)V
    .locals 0
    .parameter "nGroupID"

    .prologue
    .line 167
    iput p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->groupID:I

    .line 168
    return-void
.end method

.method public setIPAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "strIPAddress"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->ipAddress:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setLoginTime(Ljava/lang/String;)V
    .locals 0
    .parameter "strLoginTime"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->loginTime:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setLogoutTime(Ljava/lang/String;)V
    .locals 0
    .parameter "strLogoutTime"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->logoutTime:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "macAddress"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->macAddress:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setOnlineStatus(Z)V
    .locals 2
    .parameter "isOnline"

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    goto :goto_0
.end method

.method public setUserID(I)V
    .locals 1
    .parameter "nUserID"

    .prologue
    .line 102
    iput p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userID:I

    .line 103
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 104
    return-void
.end method

.method public setUserStatus(I)V
    .locals 0
    .parameter "nUserStatus"

    .prologue
    .line 191
    iput p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    .line 192
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getLoginTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getLogoutTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getSettingID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconResID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    return-void
.end method
