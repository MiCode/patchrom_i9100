.class public Landroid/app/enterprise/ApnSettings;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/ApnSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public id:J

.field public mcc:Ljava/lang/String;

.field public mmsPort:Ljava/lang/String;

.field public mmsProxy:Ljava/lang/String;

.field public mmsc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:I

.field public proxy:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Landroid/app/enterprise/ApnSettings$1;

    invoke-direct {v0}, Landroid/app/enterprise/ApnSettings$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/ApnSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    .line 25
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    .line 57
    iput v2, p0, Landroid/app/enterprise/ApnSettings;->port:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    .line 77
    iput v2, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    .line 193
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, -0x1

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    .line 25
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    .line 57
    iput v2, p0, Landroid/app/enterprise/ApnSettings;->port:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    .line 77
    iput v2, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    .line 113
    invoke-virtual {p0, p1}, Landroid/app/enterprise/ApnSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/ApnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/app/enterprise/ApnSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    .prologue
    .line 827
    iget v0, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    return-wide v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Landroid/app/enterprise/ApnSettings;->port:I

    return v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ApnSettings;->port:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    .line 187
    return-void
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 0
    .parameter "apn"

    .prologue
    .line 297
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setAuthType(I)V
    .locals 0
    .parameter "authType"

    .prologue
    .line 807
    iput p1, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    .line 809
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 213
    iput-wide p1, p0, Landroid/app/enterprise/ApnSettings;->id:J

    .line 215
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0
    .parameter "mcc"

    .prologue
    .line 341
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsPort"

    .prologue
    .line 679
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 681
    return-void
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsProxy"

    .prologue
    .line 637
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public setMmsc(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsc"

    .prologue
    .line 719
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    .line 723
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0
    .parameter "mnc"

    .prologue
    .line 383
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 255
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 509
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 593
    iput p1, p0, Landroid/app/enterprise/ApnSettings;->port:I

    .line 595
    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 551
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    .line 553
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0
    .parameter "server"

    .prologue
    .line 467
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 765
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    .line 767
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 425
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 121
    iget-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Landroid/app/enterprise/ApnSettings;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget v0, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return-void
.end method
