.class public final Landroid/telephony/GsmCellIdentity;
.super Landroid/telephony/CellIdentity;
.source "GsmCellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/GsmCellIdentity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mMcc:I

.field private final mMnc:I

.field private final mPsc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Landroid/telephony/GsmCellIdentity$1;

    invoke-direct {v0}, Landroid/telephony/GsmCellIdentity$1;-><init>()V

    sput-object v0, Landroid/telephony/GsmCellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 1
    .parameter "mcc"
    .parameter "mnc"
    .parameter "lac"
    .parameter "cid"
    .parameter "psc"
    .parameter "attr"

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0, p6}, Landroid/telephony/CellIdentity;-><init>(ILjava/lang/String;)V

    .line 53
    iput p1, p0, Landroid/telephony/GsmCellIdentity;->mMcc:I

    .line 54
    iput p2, p0, Landroid/telephony/GsmCellIdentity;->mMnc:I

    .line 55
    iput p3, p0, Landroid/telephony/GsmCellIdentity;->mLac:I

    .line 56
    iput p4, p0, Landroid/telephony/GsmCellIdentity;->mCid:I

    .line 57
    iput p5, p0, Landroid/telephony/GsmCellIdentity;->mPsc:I

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentity;-><init>(Landroid/os/Parcel;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/GsmCellIdentity;->mMcc:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/GsmCellIdentity;->mMnc:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/GsmCellIdentity;->mLac:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/GsmCellIdentity;->mCid:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/GsmCellIdentity;->mPsc:I

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/GsmCellIdentity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/telephony/GsmCellIdentity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/telephony/GsmCellIdentity;)V
    .locals 1
    .parameter "cid"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentity;-><init>(Landroid/telephony/CellIdentity;)V

    .line 71
    iget v0, p1, Landroid/telephony/GsmCellIdentity;->mMcc:I

    iput v0, p0, Landroid/telephony/GsmCellIdentity;->mMcc:I

    .line 72
    iget v0, p1, Landroid/telephony/GsmCellIdentity;->mMnc:I

    iput v0, p0, Landroid/telephony/GsmCellIdentity;->mMnc:I

    .line 73
    iget v0, p1, Landroid/telephony/GsmCellIdentity;->mLac:I

    iput v0, p0, Landroid/telephony/GsmCellIdentity;->mLac:I

    .line 74
    iget v0, p1, Landroid/telephony/GsmCellIdentity;->mCid:I

    iput v0, p0, Landroid/telephony/GsmCellIdentity;->mCid:I

    .line 75
    iget v0, p1, Landroid/telephony/GsmCellIdentity;->mPsc:I

    iput v0, p0, Landroid/telephony/GsmCellIdentity;->mPsc:I

    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/telephony/GsmCellIdentity;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/telephony/GsmCellIdentity;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Landroid/telephony/GsmCellIdentity;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/telephony/GsmCellIdentity;->mMnc:I

    return v0
.end method

.method public getPsc()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Landroid/telephony/GsmCellIdentity;->mPsc:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    iget v0, p0, Landroid/telephony/GsmCellIdentity;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/telephony/GsmCellIdentity;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/telephony/GsmCellIdentity;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Landroid/telephony/GsmCellIdentity;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Landroid/telephony/GsmCellIdentity;->mPsc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method
