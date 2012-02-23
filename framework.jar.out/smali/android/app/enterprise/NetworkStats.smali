.class public Landroid/app/enterprise/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mobileRxBytes:J

.field public mobileTxBytes:J

.field public uid:I

.field public wifiRxBytes:J

.field public wifiTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/app/enterprise/NetworkStats$1;

    invoke-direct {v0}, Landroid/app/enterprise/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 25
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 29
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 33
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 37
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const-wide/16 v1, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 25
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 29
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 33
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 37
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/enterprise/NetworkStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 89
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 69
    iget v0, p0, Landroid/app/enterprise/NetworkStats;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-wide v0, p0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-wide v0, p0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v0, p0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v0, p0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    return-void
.end method
