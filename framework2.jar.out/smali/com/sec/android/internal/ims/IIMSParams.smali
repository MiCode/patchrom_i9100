.class public Lcom/sec/android/internal/ims/IIMSParams;
.super Ljava/lang/Object;
.source "IIMSParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/internal/ims/IIMSParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioCodec:Ljava/lang/String;

.field private historyInfo:Ljava/lang/String;

.field private modifySupported:Ljava/lang/String;

.field private numberPlus:Ljava/lang/String;

.field private pLettering:Ljava/lang/String;

.field private reasonCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/sec/android/internal/ims/IIMSParams$1;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/IIMSParams$1;-><init>()V

    sput-object v0, Lcom/sec/android/internal/ims/IIMSParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorReasonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPlus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    return-object v0
.end method

.method public getPLettering()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioCodec(Ljava/lang/String;)V
    .locals 0
    .parameter "codec"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setErrorReasonCode(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setHistoryInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setModifyHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setNumberPlus(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setPLettering(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    return-void
.end method
