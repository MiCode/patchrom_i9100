.class public Lcom/samsung/dmc/ux/db/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/dmc/ux/db/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERCENT_COMPLETED:I = 0x65


# instance fields
.field private completeTime:Ljava/lang/String;

.field private nTaskID:J

.field private nTotalPercent:J

.field private strFileName:Ljava/lang/String;

.field private strIPAddress:Ljava/lang/String;

.field private strMacAddress:Ljava/lang/String;

.field private strOtherUserName:Ljava/lang/String;

.field private taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/samsung/dmc/ux/db/ProcessInfo$1;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, -0x1

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide v1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    .line 34
    iput-wide v3, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    .line 35
    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    .line 43
    iput-wide v1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    .line 44
    iput-wide v3, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    .line 45
    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strFileName:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strIPAddress:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strMacAddress:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strOtherUserName:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->completeTime:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    .line 35
    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    :goto_0
    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strFileName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strIPAddress:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strMacAddress:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strOtherUserName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->completeTime:Ljava/lang/String;

    .line 63
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 143
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/samsung/dmc/ux/db/ProcessInfo;

    if-nez v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 146
    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    .line 147
    .local v0, tempObj:Lcom/samsung/dmc/ux/db/ProcessInfo;
    iget-wide v2, v0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 151
    iget-wide v2, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    iget-wide v4, v0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getTaskType()Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCompleteTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->completeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStrFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strIPAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStrMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStrOtherUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strOtherUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskID()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    return-wide v0
.end method

.method public getTaskType()Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    return-object v0
.end method

.method public getTotalPercent()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->isSendTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 160
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 4

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    const-wide/16 v2, 0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendTask()Z
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    sget-object v1, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCompleteTime(Ljava/lang/String;)V
    .locals 0
    .parameter "completeTime"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->completeTime:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setCompleted()V
    .locals 2

    .prologue
    .line 138
    const-wide/16 v0, 0x65

    iput-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    .line 139
    return-void
.end method

.method public setStrFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "strFileName"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strFileName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setStrIPAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "strIPAddress"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strIPAddress:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setStrMacAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "strMacAddress"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strMacAddress:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setStrOtherUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "strOtherUserName"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strOtherUserName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setTaskID(J)V
    .locals 0
    .parameter "nTaskID"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    .line 71
    return-void
.end method

.method public setTaskType(Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;)V
    .locals 0
    .parameter "taskType"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    .line 127
    return-void
.end method

.method public setTotalPercent(J)V
    .locals 0
    .parameter "nTotalPercent"

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    sget-object v1, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strIPAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strOtherUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->completeTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
