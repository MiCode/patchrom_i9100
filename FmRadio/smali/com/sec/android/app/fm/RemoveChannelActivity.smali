.class public Lcom/sec/android/app/fm/RemoveChannelActivity;
.super Landroid/app/Activity;
.source "RemoveChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;,
        Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;
    }
.end annotation


# static fields
.field private static cl_normal:Landroid/content/res/ColorStateList;

.field private static cl_normal_station:Landroid/content/res/ColorStateList;

.field private static cl_yellow:Landroid/content/res/ColorStateList;

.field private static toast:Landroid/widget/Toast;


# instance fields
.field private final MENU_CANCEL:I

.field private final MENU_DONE:I

.field private cbSelectAll:Landroid/widget/CheckBox;

.field private iCheckedcount:I

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAllChList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackKey:Z

.field private mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

.field mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

.field private mChannelListView:Landroid/widget/ListView;

.field private mDialog:Landroid/app/Dialog;

.field private mMenu:Landroid/view/Menu;

.field private mSelectAll:Z

.field private mSelected:Z

.field private tblSelectAll:Landroid/widget/TableLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cl_normal:Landroid/content/res/ColorStateList;

    .line 71
    sput-object v0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cl_normal_station:Landroid/content/res/ColorStateList;

    .line 72
    sput-object v0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cl_yellow:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mDialog:Landroid/app/Dialog;

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->MENU_DONE:I

    .line 78
    iput v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->MENU_CANCEL:I

    .line 80
    iput v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    .line 95
    new-instance v0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RemoveChannelActivity$1;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    .line 757
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/fm/RemoveChannelActivity;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/RemoveChannelActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mChannelListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->makeAllSelection(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cbSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/RemoveChannelActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/RemoveChannelActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->checkSelection()V

    return-void
.end method

.method static synthetic access$800()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cl_normal_station:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/fm/RemoveChannelActivity;[Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->createScannedList([Z)V

    return-void
.end method

.method private checkSelection()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 255
    iput v5, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    .line 256
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    if-eqz v2, :cond_0

    .line 258
    iget v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    iget v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    if-eqz v2, :cond_3

    .line 263
    iput-boolean v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    .line 267
    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    if-eqz v2, :cond_4

    .line 270
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_2

    .line 271
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 272
    .local v1, menuItem:Landroid/view/MenuItem;
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 300
    .end local v1           #menuItem:Landroid/view/MenuItem;
    :cond_2
    :goto_2
    iget v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    iget-object v3, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 301
    iput-boolean v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z

    .line 306
    :goto_3
    iget-boolean v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z

    if-eqz v2, :cond_6

    .line 307
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 310
    :goto_4
    return-void

    .line 265
    :cond_3
    iput-boolean v5, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    goto :goto_1

    .line 292
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 294
    .restart local v1       #menuItem:Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 295
    const v2, 0x7f0200a1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 304
    .end local v1           #menuItem:Landroid/view/MenuItem;
    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z

    goto :goto_3

    .line 309
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4
.end method

.method private createScannedList([Z)V
    .locals 5
    .parameter "array"

    .prologue
    .line 383
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    .line 384
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 385
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 386
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 387
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/data/Channel;

    .line 388
    .local v1, channel:Lcom/sec/android/app/fm/data/Channel;
    new-instance v0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;Lcom/sec/android/app/fm/data/Channel;)V

    .line 389
    .local v0, chInfo:Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 390
    aget-boolean v4, p1, v2

    iput-boolean v4, v0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    .line 392
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v0           #chInfo:Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_1
    return-void
.end method

.method private makeAllSelection(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iput-boolean p1, v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    .line 251
    return-void
.end method

.method private recreateScannedList(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    .line 400
    sget-object v5, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v5, v5, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 401
    sget-object v5, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v5, v5, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 402
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 403
    sget-object v5, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v5, v5, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/data/Channel;

    .line 404
    .local v1, channel:Lcom/sec/android/app/fm/data/Channel;
    new-instance v0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;Lcom/sec/android/app/fm/data/Channel;)V

    .line 405
    .local v0, chInfo:Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 406
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 407
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-object v5, v5, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->channel:Lcom/sec/android/app/fm/data/Channel;

    iget v5, v5, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    iget v6, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 408
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-boolean v5, v5, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    iput-boolean v5, v0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    .line 406
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 411
    .end local v3           #j:I
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    .end local v0           #chInfo:Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_2
    return-void
.end method

.method private registerRestoreReceiver()V
    .locals 2

    .prologue
    .line 858
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 860
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.RESTORE_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    new-instance v1, Lcom/sec/android/app/fm/RemoveChannelActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RemoveChannelActivity$5;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 880
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 882
    return-void
.end method

.method private search(Ljava/lang/Float;)F
    .locals 7
    .parameter "freq"

    .prologue
    .line 496
    iget-object v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 497
    const/high16 v4, -0x4080

    .line 509
    :goto_0
    return v4

    .line 498
    :cond_0
    const/high16 v2, 0x4348

    .line 499
    .local v2, least:F
    const/4 v3, 0x0

    .line 500
    .local v3, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 501
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-object v4, v4, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->channel:Lcom/sec/android/app/fm/data/Channel;

    iget v4, v4, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 502
    .local v0, diff:F
    cmpg-float v4, v0, v2

    if-gez v4, :cond_1

    .line 503
    move v2, v0

    .line 504
    move v3, v1

    .line 500
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 507
    .end local v0           #diff:F
    :cond_2
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this is the pos :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 509
    iget-object v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-object v4, v4, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->channel:Lcom/sec/android/app/fm/data/Channel;

    iget v4, v4, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    goto :goto_0
.end method

.method private unregisterRestoreReceiver()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 894
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackKey:Z

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->finish()V

    .line 380
    return-void
.end method

.method public delete()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x4120

    const/high16 v8, -0x4080

    .line 445
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v7, v6, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 446
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_1

    .line 448
    iget-object v6, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-boolean v6, v6, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    if-nez v6, :cond_0

    .line 446
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 450
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-object v0, v6, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->channel:Lcom/sec/android/app/fm/data/Channel;

    .line 451
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 452
    iget-object v6, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 453
    iget-object v6, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 455
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v4           #i:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v4       #i:I
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 457
    iget-boolean v6, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    if-eqz v6, :cond_2

    .line 458
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/fm/MainActivity;->updateAllChListView()V

    .line 462
    :cond_2
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v1

    .line 463
    .local v1, freq:F
    cmpl-float v6, v1, v8

    if-eqz v6, :cond_3

    .line 464
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 465
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v0, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 466
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/fm/RemoveChannelActivity;->search(Ljava/lang/Float;)F

    move-result v5

    .line 468
    .local v5, tFreq:F
    float-to-int v3, v5

    .line 470
    .local v3, freqInt:I
    mul-float v6, v5, v9

    rem-float/2addr v6, v9

    float-to-int v2, v6

    .line 472
    .local v2, freqDec:I
    cmpl-float v6, v5, v8

    if-eqz v6, :cond_3

    .line 474
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v7, v8}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    .line 476
    const v6, 0x7f0a0004

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 490
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v2           #freqDec:I
    .end local v3           #freqInt:I
    .end local v5           #tFreq:F
    :cond_3
    iput-boolean v11, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackKey:Z

    .line 491
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->finish()V

    .line 493
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 805
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 806
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->invalidateOptionsMenu()V

    .line 807
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-nez v2, :cond_0

    .line 114
    const-string v2, "RemoveChannelActivity"

    const-string v3, "onCreate - MainActivity._instance is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->finish()V

    .line 244
    :goto_0
    return-void

    .line 118
    :cond_0
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate savedinstancestate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, array:[Z
    if-eqz p1, :cond_1

    .line 121
    const-string v2, "selection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 123
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->createScannedList([Z)V

    .line 124
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->setContentView(I)V

    .line 128
    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mChannelListView:Landroid/widget/ListView;

    .line 129
    new-instance v2, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mChannelListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    const v2, 0x7f0a00a6

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->setTitle(I)V

    .line 132
    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    iput-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->tblSelectAll:Landroid/widget/TableLayout;

    .line 134
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cbSelectAll:Landroid/widget/CheckBox;

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 139
    .local v1, xpp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/RemoveChannelActivity;->cl_normal:Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 143
    .end local v1           #xpp:Landroid/content/res/XmlResourceParser;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 144
    .restart local v1       #xpp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/RemoveChannelActivity;->cl_normal_station:Landroid/content/res/ColorStateList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .end local v1           #xpp:Landroid/content/res/XmlResourceParser;
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 164
    .restart local v1       #xpp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/RemoveChannelActivity;->cl_yellow:Landroid/content/res/ColorStateList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    .end local v1           #xpp:Landroid/content/res/XmlResourceParser;
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->tblSelectAll:Landroid/widget/TableLayout;

    new-instance v3, Lcom/sec/android/app/fm/RemoveChannelActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/RemoveChannelActivity$2;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mChannelListView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/app/fm/RemoveChannelActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/RemoveChannelActivity$3;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 233
    invoke-direct {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->checkSelection()V

    .line 234
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->registerCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 242
    invoke-direct {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->registerRestoreReceiver()V

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v2

    goto :goto_3

    .line 145
    :catch_1
    move-exception v2

    goto :goto_2

    .line 140
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f0a00a6

    const/4 v2, 0x1

    .line 316
    packed-switch p1, :pswitch_data_0

    .line 339
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mDialog:Landroid/app/Dialog;

    return-object v1

    .line 318
    :pswitch_0
    const/4 v0, 0x0

    .line 319
    .local v0, deletemsg:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z

    if-eqz v1, :cond_1

    .line 320
    const v1, 0x7f0a00cc

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_0
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/fm/RemoveChannelActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RemoveChannelActivity$4;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0021

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 321
    :cond_1
    iget v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    if-ne v2, v1, :cond_2

    .line 322
    const v1, 0x7f0a00ca

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 323
    :cond_2
    iget v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    if-ge v2, v1, :cond_0

    .line 324
    const v1, 0x7f0a00cb

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 316
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 772
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mMenu:Landroid/view/Menu;

    .line 774
    const v1, 0x7f0a00a6

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 775
    .local v0, menuItem:Landroid/view/MenuItem;
    const v1, 0x7f0200a1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 776
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 778
    const v1, 0x7f0a0021

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 779
    const v1, 0x7f0200f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 780
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 781
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 561
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 562
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    .line 563
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->unregisterRestoreReceiver()V

    .line 569
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 422
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackKey:Z

    .line 425
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 813
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 825
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 816
    :sswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->showDialog(I)V

    goto :goto_0

    .line 819
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->cancel()V

    goto :goto_0

    .line 822
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->finish()V

    goto :goto_0

    .line 813
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 368
    sget-object v0, Lcom/sec/android/app/fm/RemoveChannelActivity;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Lcom/sec/android/app/fm/RemoveChannelActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 370
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, deletemsg:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z

    if-eqz v1, :cond_1

    .line 347
    const v1, 0x7f0a00cc

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v1, p2

    .line 353
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 354
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 355
    return-void

    .line 348
    :cond_1
    iget v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    if-ne v2, v1, :cond_2

    .line 349
    const v1, 0x7f0a00ca

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_2
    iget v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    if-ge v2, v1, :cond_0

    .line 351
    const v1, 0x7f0a00cb

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->iCheckedcount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 787
    invoke-direct {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->checkSelection()V

    .line 789
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 790
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    .line 791
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 792
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 799
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 795
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200f4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 796
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200a1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 516
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 518
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/ChannelStore;->load()V

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    .line 520
    .local v0, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;>;"
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->recreateScannedList(Ljava/util/ArrayList;)V

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 523
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->checkSelection()V

    .line 525
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->invalidateOptionsMenu()V

    .line 528
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 531
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 532
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v2, :cond_0

    .line 533
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "RemoveChannelActivity :onSaveInstanceState"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 536
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Z

    .line 537
    .local v0, array:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 538
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    aput-boolean v2, v0, v1

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_1
    const-string v2, "selection"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 542
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackKey:Z

    if-nez v0, :cond_1

    .line 549
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    .line 550
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 552
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackKey:Z

    .line 554
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 555
    return-void
.end method

.method public removeChannel()V
    .locals 0

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->delete()V

    .line 364
    return-void
.end method

.method public setChanFreqWidth(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, fontSize:Ljava/lang/String;
    const v2, 0x7f070008

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 835
    .local v1, txtChannelFreq:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 836
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 840
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_0

    .line 850
    :catch_0
    move-exception v2

    goto :goto_0

    .line 844
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 836
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
