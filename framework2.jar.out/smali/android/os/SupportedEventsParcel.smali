.class public Landroid/os/SupportedEventsParcel;
.super Ljava/lang/Object;
.source "SupportedEventsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/SupportedEventsParcel;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MAX_SUPPORTED:B = 0x3t

.field public static final EVENT_PLAYBACK_STATUS_CHANGED:B = 0x1t

.field public static final EVENT_PLAYER_APPLICATION_SETTING_CHANGED:B = 0x8t

.field public static final EVENT_TRACK_CHANGED:B = 0x2t


# instance fields
.field public mCount:B

.field public mEvents:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/os/SupportedEventsParcel$1;

    invoke-direct {v0}, Landroid/os/SupportedEventsParcel$1;-><init>()V

    sput-object v0, Landroid/os/SupportedEventsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    .line 35
    iput-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    .line 36
    iget-object v0, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 37
    iget-object v0, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    aput-byte v3, v0, v2

    .line 38
    iget-object v0, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    const/16 v1, 0x8

    aput-byte v1, v0, v3

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/SupportedEventsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/SupportedEventsParcel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/os/SupportedEventsParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    .line 69
    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "in"
    .parameter "count"

    .prologue
    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Landroid/os/SupportedEventsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 56
    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "count"

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Landroid/os/SupportedEventsParcel;->writeToParcel(Landroid/os/Parcel;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method
