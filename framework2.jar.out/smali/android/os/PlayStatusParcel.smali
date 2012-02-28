.class public Landroid/os/PlayStatusParcel;
.super Ljava/lang/Object;
.source "PlayStatusParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PlayStatusParcel;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAY_STATUS_ERROR:B = -0x1t

.field public static final PLAY_STATUS_FWD_SEEK:B = 0x3t

.field public static final PLAY_STATUS_PAUSED:B = 0x2t

.field public static final PLAY_STATUS_PLAYING:B = 0x1t

.field public static final PLAY_STATUS_REV_SEEK:B = 0x4t

.field public static final PLAY_STATUS_STOPPED:B


# instance fields
.field public mSongLen:I

.field public mSongPos:I

.field public mState:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/os/PlayStatusParcel$1;

    invoke-direct {v0}, Landroid/os/PlayStatusParcel$1;-><init>()V

    sput-object v0, Landroid/os/PlayStatusParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Landroid/os/PlayStatusParcel;->mSongLen:I

    .line 41
    iput v0, p0, Landroid/os/PlayStatusParcel;->mSongPos:I

    .line 42
    iput-byte v0, p0, Landroid/os/PlayStatusParcel;->mState:B

    .line 43
    return-void
.end method

.method public constructor <init>(IIB)V
    .locals 0
    .parameter "songLen"
    .parameter "songPos"
    .parameter "state"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Landroid/os/PlayStatusParcel;->mSongLen:I

    .line 47
    iput p2, p0, Landroid/os/PlayStatusParcel;->mSongPos:I

    .line 48
    iput-byte p3, p0, Landroid/os/PlayStatusParcel;->mState:B

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/PlayStatusParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/PlayStatusParcel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/os/PlayStatusParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PlayStatusParcel;->mSongLen:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PlayStatusParcel;->mSongPos:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/os/PlayStatusParcel;->mState:B

    .line 81
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "in"
    .parameter "count"

    .prologue
    .line 85
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Landroid/os/PlayStatusParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 66
    iget v0, p0, Landroid/os/PlayStatusParcel;->mSongLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Landroid/os/PlayStatusParcel;->mSongPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-byte v0, p0, Landroid/os/PlayStatusParcel;->mState:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "count"

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Landroid/os/PlayStatusParcel;->writeToParcel(Landroid/os/Parcel;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method
