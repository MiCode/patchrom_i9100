.class public Landroid/os/ElementAttributeParcel;
.super Ljava/lang/Object;
.source "ElementAttributeParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ElementAttributeParcel;",
            ">;"
        }
    .end annotation
.end field

.field public static final ELEMENT_ATTR_ALBUM_NAME:I = 0x3

.field public static final ELEMENT_ATTR_ARTIST_NAME:I = 0x2

.field public static final ELEMENT_ATTR_DEFAULT_CHARSET_UTF8:S = 0x6as

.field public static final ELEMENT_ATTR_GENERE:I = 0x6

.field public static final ELEMENT_ATTR_ILLEGAL:I = 0x0

.field public static final ELEMENT_ATTR_MEDIA_NUMBER:I = 0x4

.field public static final ELEMENT_ATTR_MEDIA_TOTAL_NUMBER:I = 0x5

.field public static final ELEMENT_ATTR_PLAYING_TIME:I = 0x7

.field public static final ELEMENT_ATTR_TITLE:I = 0x1


# instance fields
.field public mAttr:I

.field public mCharset:S

.field public mLen:S

.field public mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Landroid/os/ElementAttributeParcel$1;

    invoke-direct {v0}, Landroid/os/ElementAttributeParcel$1;-><init>()V

    sput-object v0, Landroid/os/ElementAttributeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, Landroid/os/ElementAttributeParcel;->mAttr:I

    .line 49
    const/16 v0, 0x6a

    iput-short v0, p0, Landroid/os/ElementAttributeParcel;->mCharset:S

    .line 50
    iput-short v1, p0, Landroid/os/ElementAttributeParcel;->mLen:S

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/ElementAttributeParcel;->mValue:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Landroid/os/ElementAttributeParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/ElementAttributeParcel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/os/ElementAttributeParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ElementAttributeParcel;->mAttr:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/os/ElementAttributeParcel;->mCharset:S

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/os/ElementAttributeParcel;->mLen:S

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ElementAttributeParcel;->mValue:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "in"
    .parameter "count"

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Landroid/os/ElementAttributeParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 69
    iget v0, p0, Landroid/os/ElementAttributeParcel;->mAttr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-short v0, p0, Landroid/os/ElementAttributeParcel;->mCharset:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-short v0, p0, Landroid/os/ElementAttributeParcel;->mLen:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Landroid/os/ElementAttributeParcel;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "count"

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Landroid/os/ElementAttributeParcel;->writeToParcel(Landroid/os/Parcel;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method
