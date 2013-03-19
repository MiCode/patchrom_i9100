.class public Lcom/sec/android/app/camera/HistoryActivity;
.super Landroid/app/Activity;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.shareshot.history"

.field public static final CONTENT_HISTORY_URI:Landroid/net/Uri; = null

.field public static final REQUEST_BACK:I = 0x3e8


# instance fields
.field private TAG:Ljava/lang/String;

.field private done:Z

.field mAdapter:Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;

.field private mEmptyGroup:Landroid/widget/LinearLayout;

.field private mEmptyText:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/widget/ListView;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/dmc/ux/db/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field mListSize:I

.field mResolver:Landroid/content/ContentResolver;

.field mThumbnails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "content://com.samsung.shareshot.history/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/HistoryActivity;->CONTENT_HISTORY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, "History"

    iput-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->TAG:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    .line 50
    iput v1, p0, Lcom/sec/android/app/camera/HistoryActivity;->mListSize:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mThumbnails:Ljava/util/HashMap;

    .line 52
    iput-boolean v1, p0, Lcom/sec/android/app/camera/HistoryActivity;->done:Z

    .line 53
    iput-object v2, p0, Lcom/sec/android/app/camera/HistoryActivity;->mHandler:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/HistoryActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mHistory:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/HistoryActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->done:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/HistoryActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/sec/android/app/camera/HistoryActivity;->done:Z

    return p1
.end method

.method private declared-synchronized createThumbnail()V
    .locals 2

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/HistoryActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/HistoryActivity$3;-><init>(Lcom/sec/android/app/camera/HistoryActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getHistoryInfoFromDb()V
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HistoryActivity;->createHistoryList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " get list from history db have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/HistoryActivity;->mListSize:I

    if-eq v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mAdapter:Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mAdapter:Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->notifyDataSetChanged()V

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/HistoryActivity;->createThumbnail()V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mListSize:I

    .line 160
    return-void
.end method


# virtual methods
.method public createHistoryList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/dmc/ux/db/ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/HistoryActivity;->CONTENT_HISTORY_URI:Landroid/net/Uri;

    const-string v5, "completeTime desc"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 254
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v9, processList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/dmc/ux/db/ProcessInfo;>;"
    if-nez v6, :cond_0

    .line 287
    :goto_0
    return-object v9

    .line 257
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 262
    :cond_1
    const/4 v8, 0x0

    .line 263
    .local v8, processInfo:Lcom/samsung/dmc/ux/db/ProcessInfo;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    :cond_2
    const-string v0, "fileName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, file_name:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 284
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 271
    :cond_3
    new-instance v8, Lcom/samsung/dmc/ux/db/ProcessInfo;

    .end local v8           #processInfo:Lcom/samsung/dmc/ux/db/ProcessInfo;
    invoke-direct {v8}, Lcom/samsung/dmc/ux/db/ProcessInfo;-><init>()V

    .line 272
    .restart local v8       #processInfo:Lcom/samsung/dmc/ux/db/ProcessInfo;
    const-string v0, "taskID"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v8, v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setTaskID(J)V

    .line 273
    invoke-virtual {v8, v7}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setStrFileName(Ljava/lang/String;)V

    .line 274
    const-string v0, "otherUserIPAddress"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setStrIPAddress(Ljava/lang/String;)V

    .line 275
    const-string v0, "otherUserName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setStrOtherUserName(Ljava/lang/String;)V

    .line 276
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    :goto_2
    invoke-virtual {v8, v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setTaskType(Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;)V

    .line 277
    const-string v0, "completeTime"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setCompleteTime(Ljava/lang/String;)V

    .line 279
    const-string v0, "isSuccess"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 280
    const-wide/16 v0, 0x1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setTotalPercent(J)V

    .line 283
    :goto_3
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :cond_4
    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    goto :goto_2

    .line 282
    :cond_5
    const-wide/16 v0, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setTotalPercent(J)V

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    const-string v1, "@"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz p2, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 126
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.gallery"

    const-string v3, "com.miui.gallery.app.Gallery"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 129
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/HistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HistoryActivity;->finish()V

    .line 135
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/HistoryActivity;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/camera/HistoryActivity;->getHistoryInfoFromDb()V

    .line 66
    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mHistory:Landroid/widget/ListView;

    .line 67
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mEmptyGroup:Landroid/widget/LinearLayout;

    .line 68
    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mEmptyText:Landroid/widget/TextView;

    .line 69
    new-instance v0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;-><init>(Lcom/sec/android/app/camera/HistoryActivity;Lcom/sec/android/app/camera/HistoryActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mAdapter:Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mHistory:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity;->mAdapter:Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    new-instance v0, Lcom/sec/android/app/camera/HistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/HistoryActivity$1;-><init>(Lcom/sec/android/app/camera/HistoryActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mHandler:Landroid/os/Handler;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mHistory:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/camera/HistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/HistoryActivity$2;-><init>(Lcom/sec/android/app/camera/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mAdapter:Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mEmptyGroup:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity;->mEmptyText:Landroid/widget/TextView;

    const-string v1, "No history"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 246
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HistoryActivity;->finish()V

    .line 249
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sec/android/app/camera/HistoryActivity;->getHistoryInfoFromDb()V

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    return-void
.end method
