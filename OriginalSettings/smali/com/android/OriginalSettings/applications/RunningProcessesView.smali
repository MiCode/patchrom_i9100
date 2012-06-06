.class public Lcom/android/OriginalSettings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/OriginalSettings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/OriginalSettings/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/OriginalSettings/applications/LinearColorBar;

.field mCurSelected:Lcom/android/OriginalSettings/applications/RunningState$BaseItem;

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/OriginalSettings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 392
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 74
    iput v4, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 75
    iput v4, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 76
    iput v4, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 77
    iput-wide v2, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 78
    iput-wide v2, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 79
    iput-wide v2, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 80
    iput-wide v2, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 84
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 393
    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/OriginalSettings/applications/RunningState$MergedItem;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 376
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 377
    const-string v0, "uid"

    iget-object v1, p1, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget v1, v1, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    const-string v0, "process"

    iget-object v1, p1, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, "background"

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v1, v1, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    .line 382
    const-class v1, Lcom/android/OriginalSettings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b04b5

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 385
    :cond_0
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 397
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/applications/RunningState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    .line 398
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 400
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040083

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 401
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 402
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 403
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 404
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 406
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 407
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 408
    new-instance v3, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-direct {v3, p0, v4}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/OriginalSettings/applications/RunningProcessesView;Lcom/android/OriginalSettings/applications/RunningState;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    .line 409
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 410
    const v3, 0x7f08019c

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/applications/LinearColorBar;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mColorBar:Lcom/android/OriginalSettings/applications/LinearColorBar;

    .line 411
    const v3, 0x7f08019e

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 412
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/OriginalSettings/applications/RunningProcessesView$1;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView$1;-><init>(Lcom/android/OriginalSettings/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    const v3, 0x7f08019d

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 419
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/OriginalSettings/applications/RunningProcessesView$2;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView$2;-><init>(Lcom/android/OriginalSettings/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 427
    .local v2, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 428
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 429
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/RunningState;->pause()V

    .line 433
    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 434
    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 435
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "owner"
    .parameter "dataAvail"

    .prologue
    const/4 v0, 0x1

    .line 438
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 439
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/applications/RunningState;->resume(Lcom/android/OriginalSettings/applications/RunningState$OnRefreshUiListener;)V

    .line 440
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 447
    :goto_0
    return v0

    .line 446
    :cond_0
    iput-object p2, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 447
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 367
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    .line 368
    .local v1, mi:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mCurSelected:Lcom/android/OriginalSettings/applications/RunningState$BaseItem;

    .line 369
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/OriginalSettings/applications/RunningState$MergedItem;)V

    .line 370
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 465
    packed-switch p1, :pswitch_data_0

    .line 478
    :goto_0
    return-void

    .line 467
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 470
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 471
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 474
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 475
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 14
    .parameter "dataChanged"

    .prologue
    .line 304
    if-eqz p1, :cond_0

    .line 305
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    move-object v0, v8

    check-cast v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    .line 306
    .local v0, adapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 307
    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 310
    .end local v0           #adapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v8, :cond_1

    .line 311
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 312
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 317
    :cond_1
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 318
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    sub-long v1, v8, v10

    .line 320
    .local v1, availMem:J
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-gez v8, :cond_2

    .line 321
    const-wide/16 v1, 0x0

    .line 324
    :cond_2
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v9, v8, Lcom/android/OriginalSettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 325
    :try_start_0
    iget v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget v10, v10, Lcom/android/OriginalSettings/applications/RunningState;->mNumBackgroundProcesses:I

    if-ne v8, v10, :cond_3

    iget-wide v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-wide v12, v8, Lcom/android/OriginalSettings/applications/RunningState;->mBackgroundProcessMemory:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_3

    iget-wide v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastAvailMemory:J

    cmp-long v8, v10, v1

    if-eqz v8, :cond_4

    .line 328
    :cond_3
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget v8, v8, Lcom/android/OriginalSettings/applications/RunningState;->mNumBackgroundProcesses:I

    iput v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 329
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-wide v10, v8, Lcom/android/OriginalSettings/applications/RunningState;->mBackgroundProcessMemory:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 330
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 331
    iget-wide v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastAvailMemory:J

    iget-wide v12, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long v3, v10, v12

    .line 332
    .local v3, freeMem:J
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, sizeStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b04ad

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-static {v8, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 337
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b04ae

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    .end local v3           #freeMem:J
    .end local v5           #sizeStr:Ljava/lang/String;
    :cond_4
    iget v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget v10, v10, Lcom/android/OriginalSettings/applications/RunningState;->mNumForegroundProcesses:I

    if-ne v8, v10, :cond_5

    iget-wide v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-wide v12, v8, Lcom/android/OriginalSettings/applications/RunningState;->mForegroundProcessMemory:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_5

    iget v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget v10, v10, Lcom/android/OriginalSettings/applications/RunningState;->mNumServiceProcesses:I

    if-ne v8, v10, :cond_5

    iget-wide v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-wide v12, v8, Lcom/android/OriginalSettings/applications/RunningState;->mServiceProcessMemory:J

    cmp-long v8, v10, v12

    if-eqz v8, :cond_6

    .line 344
    :cond_5
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget v8, v8, Lcom/android/OriginalSettings/applications/RunningState;->mNumForegroundProcesses:I

    iput v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 345
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-wide v10, v8, Lcom/android/OriginalSettings/applications/RunningState;->mForegroundProcessMemory:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 346
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget v8, v8, Lcom/android/OriginalSettings/applications/RunningState;->mNumServiceProcesses:I

    iput v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 347
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-wide v10, v8, Lcom/android/OriginalSettings/applications/RunningState;->mServiceProcessMemory:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 356
    :cond_6
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    long-to-float v6, v10

    .line 357
    .local v6, totalMem:F
    iget-wide v10, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long/2addr v10, v1

    iget-wide v12, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    add-long/2addr v10, v12

    long-to-float v7, v10

    .line 359
    .local v7, totalShownMem:F
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mColorBar:Lcom/android/OriginalSettings/applications/LinearColorBar;

    sub-float v10, v6, v7

    div-float/2addr v10, v6

    iget-wide v11, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    long-to-float v11, v11

    div-float/2addr v11, v6

    iget-wide v12, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    long-to-float v12, v12

    div-float/2addr v12, v6

    invoke-virtual {v8, v10, v11, v12}, Lcom/android/OriginalSettings/applications/LinearColorBar;->setRatios(FFF)V

    .line 362
    monitor-exit v9

    .line 363
    return-void

    .line 362
    .end local v6           #totalMem:F
    .end local v7           #totalShownMem:F
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 451
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 452
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    .line 454
    .local v0, ai:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 456
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 461
    .end local v0           #ai:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
