.class public Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
.super Ljava/lang/Object;
.source "PersonalSettingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/dmc/ux/db/PersonalSettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ICON:I = 0x0

.field public static final GALLERY_ICON:I = 0x1


# instance fields
.field private nIconResID:I

.field private nIconType:I

.field private nSettingID:I

.field private strIconPath:Ljava/lang/String;

.field private strUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo$1;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    .line 47
    iput v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nSettingID:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strUserName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResID()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    return v0
.end method

.method public getIconType()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    return v0
.end method

.method public getSettingID()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nSettingID:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strUserName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultValue()Z
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    const v1, 0x7f02000a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultValue()V
    .locals 3

    .prologue
    .line 62
    iget v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 63
    iget-object v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 68
    .end local v0           #file:Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    .line 69
    const v1, 0x7f02000a

    iput v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setIconPath(Ljava/lang/String;)V
    .locals 0
    .parameter "strIconPath"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setIconResID(I)V
    .locals 0
    .parameter "nIconResID"

    .prologue
    .line 164
    iput p1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    .line 165
    return-void
.end method

.method public setIconType(I)V
    .locals 0
    .parameter "nIconType"

    .prologue
    .line 146
    iput p1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    .line 147
    return-void
.end method

.method public setSettingID(I)V
    .locals 0
    .parameter "nSettingID"

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nSettingID:I

    .line 93
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "strUserName"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strUserName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 176
    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nSettingID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    return-void
.end method
