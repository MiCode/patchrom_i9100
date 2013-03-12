.class public Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
.super Ljava/lang/Object;
.source "ServiceGsmAuthenticationResult.java"

# interfaces
.implements Lcom/orange/authentication/simcard/GsmAuthenticationResult;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

.field private mErrorMessage:Ljava/lang/String;

.field private mKc:J

.field private mSres:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$1;

    invoke-direct {v0}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$1;-><init>()V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->OK:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    iput-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "message"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    .line 61
    iput-object p2, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getError()Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getKc()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mKc:J

    return-wide v0
.end method

.method public getSres()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mSres:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 104
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->valueOf(Ljava/lang/String;)Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mKc:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mSres:I

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setKc(J)V
    .locals 0
    .parameter "kc"

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mKc:J

    .line 139
    return-void
.end method

.method public setSres(I)V
    .locals 0
    .parameter "sres"

    .prologue
    .line 142
    iput p1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mSres:I

    .line 143
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    if-nez v0, :cond_1

    .line 80
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 85
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    :goto_2
    iget-wide v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mKc:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mSres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-virtual {v0}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
