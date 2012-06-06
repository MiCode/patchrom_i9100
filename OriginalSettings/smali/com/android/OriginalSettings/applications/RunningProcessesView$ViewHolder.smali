.class public Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    .line 155
    const v0, 0x7f08002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f080090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f080091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f08019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f080026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 160
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/OriginalSettings/applications/RunningState;Lcom/android/OriginalSettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;
    .locals 7
    .parameter "state"
    .parameter "item"
    .parameter "builder"

    .prologue
    .line 165
    iget-object v4, p1, Lcom/android/OriginalSettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 166
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 167
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v3, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v3, :cond_0

    instance-of v3, p2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    if-eqz v3, :cond_0

    .line 170
    move-object v0, p2

    check-cast v0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    invoke-virtual {v3, v2}, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 171
    move-object v0, p2

    check-cast v0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v3, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 172
    move-object v0, p2

    check-cast v0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v3, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v1, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v1}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 176
    .local v1, ai:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    iput-object v3, v1, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 177
    iput-object p2, v1, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/OriginalSettings/applications/RunningState$BaseItem;

    .line 178
    iput-object p0, v1, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    .line 179
    iget-wide v5, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v5, v1, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    .line 180
    iget-boolean v3, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v3, :cond_2

    .line 181
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b04a9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 186
    iget-object v3, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p3}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 191
    monitor-exit v4

    return-object v1

    .line 183
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    .end local v1           #ai:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
