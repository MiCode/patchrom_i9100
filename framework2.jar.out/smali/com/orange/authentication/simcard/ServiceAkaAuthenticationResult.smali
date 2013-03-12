.class public Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
.super Ljava/lang/Object;
.source "ServiceAkaAuthenticationResult.java"

# interfaces
.implements Lcom/orange/authentication/simcard/AkaAuthenticationResult;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuts:[B

.field private mCk:[B

.field private mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

.field private mErrorMessage:Ljava/lang/String;

.field private mIk:[B

.field private mRes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$1;

    invoke-direct {v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$1;-><init>()V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->OK:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    iput-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "message"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    .line 67
    iput-object p2, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "auts_when_syncerr"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->SYNCH_FAILURE_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    iput-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    .line 74
    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mAuts:[B

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getAuts()[B
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mAuts:[B

    return-object v0
.end method

.method public getCk()[B
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mCk:[B

    return-object v0
.end method

.method public getError()Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getIk()[B
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mIk:[B

    return-object v0
.end method

.method public getRes()[B
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mRes:[B

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->valueOf(Ljava/lang/String;)Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mCk:[B

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mIk:[B

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mRes:[B

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mAuts:[B

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setCk([B)V
    .locals 0
    .parameter "ck"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mCk:[B

    .line 157
    return-void
.end method

.method public setIk([B)V
    .locals 0
    .parameter "ik"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mIk:[B

    .line 161
    return-void
.end method

.method public setRes([B)V
    .locals 0
    .parameter "res"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mRes:[B

    .line 165
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    if-nez v0, :cond_1

    .line 93
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 98
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    :goto_2
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mCk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 103
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mIk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 104
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mRes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 105
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mAuts:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-virtual {v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
