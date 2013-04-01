.class public Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;
.super Landroid/app/Activity;
.source "DeleteFileListPlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;
    }
.end annotation


# instance fields
.field private mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

.field private mCancel:Landroid/view/MenuItem;

.field private mCheckedIdArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

.field mDeletePopup:Landroid/app/AlertDialog;

.field private mEventHandler:Landroid/os/Handler;

.field private mIsDatasetChanged:Z

.field private mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

.field private mListChange:Z

.field private mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLocale:Ljava/lang/String;

.field private mOk:Landroid/view/MenuItem;

.field private mOpThread:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListType:I

    .line 69
    iput-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mLocale:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mIsDatasetChanged:Z

    .line 154
    new-instance v0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$1;-><init>(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;

    .line 399
    iput-boolean v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListChange:Z

    .line 427
    iput-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    .line 428
    new-instance v0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$6;-><init>(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 462
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListChange:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Lcom/sec/android/app/fm/data/RecordedFileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->selectAll()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->deleteFile()V

    return-void
.end method

.method private createDeleteDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 444
    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    const/4 v2, 0x0

    .line 459
    :goto_0
    return-object v2

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 448
    const v2, 0x7f0a00cc

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, deleteString:Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 456
    .local v0, deleteDialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00a6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0020

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0021

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 459
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 449
    .end local v0           #deleteDialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #deleteString:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 450
    const v2, 0x7f0a00ca

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #deleteString:Ljava/lang/String;
    goto :goto_1

    .line 452
    .end local v1           #deleteString:Ljava/lang/String;
    :cond_2
    const v2, 0x7f0a00cb

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #deleteString:Ljava/lang/String;
    goto :goto_1
.end method

.method private deleteFile()V
    .locals 2

    .prologue
    .line 419
    const-string v0, "DeleteFileActivity_T0"

    const-string v1, "deleteFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;

    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;-><init>(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mOpThread:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mOpThread:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->start()V

    .line 425
    :cond_0
    return-void
.end method

.method private getviewIds()[I
    .locals 2

    .prologue
    .line 382
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 384
    .local v0, viewIds:[I
    return-object v0

    .line 382
    nop

    :array_0
    .array-data 0x4
        0x35t 0x0t 0x7t 0x7ft
        0x37t 0x0t 0x7t 0x7ft
        0x38t 0x0t 0x7t 0x7ft
        0x39t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 388
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListView:Landroid/widget/ListView;

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 390
    const v1, 0x7f07003c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 391
    .local v0, mSelectAllView:Landroid/view/View;
    new-instance v1, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$5;-><init>(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    const v1, 0x7f07003e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 397
    return-void
.end method

.method private registerBroadcastReceiverLowBattery(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 226
    if-eqz p1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    new-instance v1, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$3;-><init>(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 251
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerBroadcastReceiverSDCard(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 175
    if-eqz p1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;-><init>(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private selectAll()V
    .locals 5

    .prologue
    .line 402
    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    .line 403
    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 404
    .local v1, isSelectAllChecked:Z
    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 405
    if-eqz v1, :cond_0

    .line 406
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .end local v0           #i:I
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->setDeleteButtonEnabled(Z)V

    .line 413
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListChange:Z

    .line 414
    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    .line 415
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListChange:Z

    .line 416
    return-void
.end method

.method private setDeleteButtonEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mOk:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 522
    return-void
.end method


# virtual methods
.method public listBinding()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    .line 272
    const-string v0, "DeleteFileActivity_T0"

    const-string v1, "listBinding()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    iput-object v6, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    .line 278
    :cond_0
    const/4 v3, 0x0

    .line 279
    .local v3, selection:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v11, builder:Ljava/lang/StringBuilder;
    const-string v0, "(_data LIKE \'%.m4a\')"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (mime_type LIKE \'audio/3gpp\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/amr\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/mp4\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_size != \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (recordingtype = 2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 298
    const-string v0, "DeleteFileActivity_T0"

    const-string v1, "listBinding cusor null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->finish()V

    .line 379
    :goto_1
    return-void

    .line 290
    :catch_0
    move-exception v12

    .line 291
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 294
    iput-object v6, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 302
    .end local v12           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x4

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "date_modified"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "duration"

    aput-object v1, v9, v0

    .line 307
    .local v9, cols:[Ljava/lang/String;
    new-instance v4, Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    const v6, 0x7f03000b

    iget v7, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListType:I

    iget-object v8, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getviewIds()[I

    move-result-object v10

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v4, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->setCheckedIdArrayList(Ljava/util/ArrayList;)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    new-instance v1, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;-><init>(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->finish()V

    .line 527
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 528
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 137
    const-string v0, "DeleteFileActivity_T0"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mLocale:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->setContentView(I)V

    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->initView()V

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->listBinding()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->invalidateOptionsMenu()V

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 152
    return-void

    .line 148
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string v1, "DeleteFileActivity_T0"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ListType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListType:I

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 85
    invoke-direct {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->initView()V

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->listBinding()V

    .line 88
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 89
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->registerBroadcastReceiverLowBattery(Z)V

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 534
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 535
    .local v2, result:Z
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 536
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 537
    .local v0, inflater:Landroid/view/MenuInflater;
    const v3, 0x7f0c0001

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 538
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mOk:Landroid/view/MenuItem;

    .line 539
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mOk:Landroid/view/MenuItem;

    const v4, 0x7f0a00a6

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 540
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCancel:Landroid/view/MenuItem;

    .line 541
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCancel:Landroid/view/MenuItem;

    const v4, 0x7f0a0021

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 542
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 543
    .local v1, newConfig:Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    .line 544
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 545
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mOk:Landroid/view/MenuItem;

    const v4, 0x7f020086

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 546
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCancel:Landroid/view/MenuItem;

    const v4, 0x7f020085

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 552
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 553
    invoke-direct {p0, v6}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->setDeleteButtonEnabled(Z)V

    .line 557
    :goto_1
    return v2

    .line 548
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mOk:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 549
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    .line 555
    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->setDeleteButtonEnabled(Z)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    const-string v0, "DeleteFileActivity_T0"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    .line 265
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 266
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->registerBroadcastReceiverLowBattery(Z)V

    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 269
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
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
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 506
    const v1, 0x7f070039

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 508
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 510
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v5

    if-ne v1, v5, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 517
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->setDeleteButtonEnabled(Z)V

    .line 518
    return-void

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v1, v3

    .line 514
    goto :goto_1

    :cond_2
    move v2, v3

    .line 517
    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 562
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 578
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 564
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->createDeleteDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 569
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->finish()V

    goto :goto_0

    .line 572
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->finish()V

    goto :goto_0

    .line 562
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f070145 -> :sswitch_1
        0x7f070146 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mIsDatasetChanged:Z

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mLocale:Ljava/lang/String;

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 105
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    const v4, 0x7f0a00a6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 110
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 111
    const v3, 0x7f0a00cc

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, deleteString:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0a0020

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 121
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0a0021

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 124
    .end local v0           #deleteString:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->listBinding()V

    .line 127
    iget-boolean v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mIsDatasetChanged:Z

    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->finish()V

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_5

    .line 130
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_4

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    :goto_2
    return-void

    .line 112
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 113
    const v3, 0x7f0a00ca

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #deleteString:Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0           #deleteString:Ljava/lang/String;
    :cond_3
    const v3, 0x7f0a00cb

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #deleteString:Ljava/lang/String;
    goto :goto_0

    .end local v0           #deleteString:Ljava/lang/String;
    :cond_4
    move v1, v2

    .line 130
    goto :goto_1

    .line 132
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->finish()V

    goto :goto_2
.end method
