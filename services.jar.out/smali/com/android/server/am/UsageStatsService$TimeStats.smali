.class Lcom/android/server/am/UsageStatsService$TimeStats;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeStats"
.end annotation


# instance fields
.field count:I

.field times:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    .line 142
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/16 v3, 0xa

    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    .line 161
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    .line 162
    .local v1, localTimes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method add(I)V
    .locals 5
    .parameter "val"

    .prologue
    const/16 v4, 0x9

    .line 149
    invoke-static {}, Lcom/android/server/am/UsageStatsService;->access$000()[I

    move-result-object v0

    .line 150
    .local v0, bins:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 151
    aget v2, v0, v1

    if-ge p1, v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 157
    :goto_1
    return-void

    .line 150
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v3, v2, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v4

    goto :goto_1
.end method

.method incCount()V
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    .line 146
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 168
    iget v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    .line 170
    .local v1, localTimes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 171
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method
