.class public Landroid/app/enterprise/SimChangeInfo;
.super Ljava/lang/Object;
.source "SimChangeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/SimChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIM_CHANGED:I = 0x2

.field public static final SIM_INSERTED:I = 0x3

.field public static final SIM_REMOVED:I = 0x1


# instance fields
.field public changeOperation:I

.field public changeTime:J

.field public currentSimInfo:Landroid/app/enterprise/SimInfo;

.field public previousSimInfo:Landroid/app/enterprise/SimInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/app/enterprise/SimChangeInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/SimChangeInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/SimChangeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/enterprise/SimChangeInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 68
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/SimChangeInfo;->changeTime:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/SimChangeInfo;->changeOperation:I

    .line 91
    new-instance v0, Landroid/app/enterprise/SimInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/SimInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    .line 92
    new-instance v0, Landroid/app/enterprise/SimInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/SimInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 76
    iget-wide v0, p0, Landroid/app/enterprise/SimChangeInfo;->changeTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget v0, p0, Landroid/app/enterprise/SimChangeInfo;->changeOperation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/SimInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-object v0, p0, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/SimInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    return-void
.end method
