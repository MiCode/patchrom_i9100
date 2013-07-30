.class public Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveItem"
.end annotation


# instance fields
.field mFirstRunTime:J

.field mHolder:Lcom/android/sec_settings/applications/RunningProcessesView$ViewHolder;

.field mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

.field mRootView:Landroid/view/View;

.field mSetBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 10
    .parameter "context"
    .parameter "builder"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    const/4 v2, 0x0

    .line 97
    .local v2, uptimeView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    instance-of v3, v3, Lcom/android/sec_settings/applications/RunningState$ServiceItem;

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/sec_settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v3, Lcom/android/sec_settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 122
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 123
    iput-boolean v5, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 124
    iget-wide v6, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-ltz v3, :cond_6

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {p2, v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_1
    :goto_1
    return-void

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/sec_settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    iget-object v1, v3, Lcom/android/sec_settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    .line 104
    .local v1, size:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/sec_settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 105
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    iput-object v1, v3, Lcom/android/sec_settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/sec_settings/applications/RunningProcessesView$ViewHolder;

    iget-object v3, v3, Lcom/android/sec_settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    iget-boolean v3, v3, Lcom/android/sec_settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v3, :cond_5

    .line 111
    iget-boolean v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    if-nez v3, :cond_0

    .line 112
    iput-boolean v4, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 113
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/sec_settings/applications/RunningProcessesView$ViewHolder;

    iget-object v3, v3, Lcom/android/sec_settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    .end local v1           #size:Ljava/lang/String;
    :cond_4
    const-string v1, ""

    goto :goto_2

    .line 115
    .restart local v1       #size:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    instance-of v3, v3, Lcom/android/sec_settings/applications/RunningState$MergedItem;

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/sec_settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v3, Lcom/android/sec_settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    goto :goto_0

    .line 130
    .end local v1           #size:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    .line 131
    .local v0, isService:Z
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    instance-of v3, v3, Lcom/android/sec_settings/applications/RunningState$MergedItem;

    if-eqz v3, :cond_7

    .line 132
    iget-object v3, p0, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    check-cast v3, Lcom/android/sec_settings/applications/RunningState$MergedItem;

    iget-object v3, v3, Lcom/android/sec_settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    move v0, v4

    .line 134
    :cond_7
    :goto_3
    if-eqz v0, :cond_9

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09060d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    move v0, v5

    .line 132
    goto :goto_3

    .line 138
    :cond_9
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
