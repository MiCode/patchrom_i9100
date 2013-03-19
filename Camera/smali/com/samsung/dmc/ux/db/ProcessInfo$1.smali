.class Lcom/samsung/dmc/ux/db/ProcessInfo$1;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmc/ux/db/ProcessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/dmc/ux/db/ProcessInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/dmc/ux/db/ProcessInfo;
    .locals 3
    .parameter "source"

    .prologue
    .line 185
    new-instance v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;-><init>()V

    .line 186
    .local v0, processInfo:Lcom/samsung/dmc/ux/db/ProcessInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setTaskID(J)V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setTotalPercent(J)V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setTaskType(Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;)V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setStrFileName(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setStrIPAddress(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setStrMacAddress(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setStrOtherUserName(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setCompleteTime(Ljava/lang/String;)V

    .line 195
    return-object v0

    .line 188
    :cond_0
    sget-object v1, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/dmc/ux/db/ProcessInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/dmc/ux/db/ProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/dmc/ux/db/ProcessInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 201
    new-array v0, p1, [Lcom/samsung/dmc/ux/db/ProcessInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/dmc/ux/db/ProcessInfo$1;->newArray(I)[Lcom/samsung/dmc/ux/db/ProcessInfo;

    move-result-object v0

    return-object v0
.end method
