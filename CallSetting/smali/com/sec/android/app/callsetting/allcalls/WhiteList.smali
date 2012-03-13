.class public Lcom/sec/android/app/callsetting/allcalls/WhiteList;
.super Landroid/app/Activity;
.source "WhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;,
        Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;,
        Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DELETE_SCREEN:I

.field private final NEW_INPUT:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

.field contactQueryHandler:Landroid/os/Handler;

.field private contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;

.field private createItem:Landroid/widget/LinearLayout;

.field private defaultName:Ljava/lang/String;

.field private editText:Landroid/widget/EditText;

.field private factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private header:Landroid/view/View;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private list:Landroid/widget/ListView;

.field private mAutoRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoRejectNumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mPrevNumCnt:I

.field private mScreenType:I

.field private mSelectedItem:I

.field private mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private selectAll:Landroid/widget/LinearLayout;

.field private selectAllCheck:Landroid/widget/CheckBox;

.field private textAdd:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "whitelist_number"

    aput-object v1, v0, v3

    const-string v1, "witelist_checked"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->FROM:[Ljava/lang/String;

    .line 89
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->NUM_PROJECTION:[Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 100
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    .line 103
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->NORMAL_SCREEN:I

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->DELETE_SCREEN:I

    .line 105
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->NEW_INPUT:I

    .line 121
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mPrevNumCnt:I

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->defaultName:Ljava/lang/String;

    .line 126
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->QUERY_COMPLETE:I

    .line 128
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->contactQueryHandler:Landroid/os/Handler;

    .line 487
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$10;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->handler:Landroid/os/Handler;

    .line 822
    return-void
.end method

.method private AutoRejectEventInit()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$6;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$7;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 449
    return-void
.end method

.method private AutoRejectLayoutInit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 251
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;

    .line 252
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->header:Landroid/view/View;

    .line 254
    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 255
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->header:Landroid/view/View;

    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAll:Landroid/widget/LinearLayout;

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->header:Landroid/view/View;

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAllCheck:Landroid/widget/CheckBox;

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->header:Landroid/view/View;

    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->textAdd:Landroid/widget/TextView;

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->textAdd:Landroid/widget/TextView;

    const v2, 0x7f070042

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->header:Landroid/view/View;

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->header:Landroid/view/View;

    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 281
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->factory:Landroid/view/LayoutInflater;

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->factory:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 284
    .local v0, textEntryView:Landroid/view/View;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    .line 285
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 286
    return-void
.end method

.method private AutoRejectSetInitValue()V
    .locals 3

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    .line 290
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->showAutoRejectNumber(Landroid/database/Cursor;)V

    .line 291
    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_0
    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    return-void
.end method

.method private AutoRejectUpdateValue()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 379
    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    if-eq v6, v9, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const/4 v4, 0x0

    .line 382
    .local v4, idx:I
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mPrevNumCnt:I

    .line 383
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v1

    .line 384
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 386
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 387
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 389
    :cond_3
    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mPrevNumCnt:I

    if-ne v4, v6, :cond_4

    .line 390
    const-string v6, "No change AutoRejectList Item"

    invoke-direct {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V

    .line 391
    if-eqz v1, :cond_0

    .line 392
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 395
    :cond_4
    const/4 v4, 0x0

    .line 396
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 397
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 398
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 400
    :cond_5
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 401
    .local v2, id:J
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, num:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 403
    .local v0, checked:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutoRejectNum idx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "checked ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V

    .line 405
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v5, v8, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 410
    .end local v0           #checked:I
    .end local v2           #id:J
    .end local v5           #num:Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_0

    .line 411
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/callsetting/allcalls/WhiteList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->deleteAutoRejectNumber(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/callsetting/allcalls/WhiteList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$1700()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->alertdialogSearch()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->saveAutoRejectNumber()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/callsetting/allcalls/WhiteList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->addWhiteListDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addAutoRejectNumber(Ljava/lang/String;)J
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1084
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1085
    const-string v1, "whitelist_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v1, "witelist_checked"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1087
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->WHITELIST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1090
    return-wide v0
.end method

.method private addWhiteListDialog()V
    .locals 8

    .prologue
    .line 630
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->factory:Landroid/view/LayoutInflater;

    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 632
    .local v3, textEntryView:Landroid/view/View;
    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    .line 635
    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 637
    .local v2, searchButton:Landroid/widget/ImageButton;
    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 638
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 646
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 647
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0700b6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 648
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 649
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 651
    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/WhiteList$15;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$15;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    const v4, 0x7f0700b3

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/WhiteList$16;

    invoke-direct {v5, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$16;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 664
    const v4, 0x7f0700ae

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/WhiteList$17;

    invoke-direct {v5, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$17;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 672
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 673
    .local v1, createDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 675
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 676
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/WhiteList$18;

    invoke-direct {v5, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$18;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 681
    return-void
.end method

.method private alertdialogSearch()V
    .locals 3

    .prologue
    .line 599
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 601
    .local v0, SearchListDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 602
    const v1, 0x7f050004

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$14;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$14;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 625
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 626
    return-void
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 2
    .parameter "string"

    .prologue
    .line 750
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 751
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    const/4 v1, 0x1

    .line 755
    :goto_1
    return v1

    .line 750
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private deleteAutoRejectNumber(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 1103
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->WHITELIST_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1105
    .local v0, autorejectnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1106
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1171
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1172
    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1122
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->WHITELIST_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final isNonSeparator(CI)Z
    .locals 4
    .parameter "c"
    .parameter "position"

    .prologue
    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 791
    if-nez p1, :cond_3

    .line 792
    if-lt p0, v2, :cond_0

    if-le p0, v3, :cond_1

    :cond_0
    const/16 v2, 0x2b

    if-ne p0, v2, :cond_2

    .line 794
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 792
    goto :goto_0

    .line 794
    :cond_3
    if-lt p0, v2, :cond_4

    if-le p0, v3, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static isNum(Ljava/lang/String;)I
    .locals 6
    .parameter "str"

    .prologue
    const/4 v2, 0x3

    const/4 v5, -0x1

    .line 760
    if-nez p0, :cond_1

    .line 786
    :cond_0
    return v2

    .line 762
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 763
    .local v1, ori:[B
    if-eqz v1, :cond_0

    .line 766
    const/4 v2, -0x1

    .line 767
    .local v2, result:I
    const/4 v0, 0x0

    .line 769
    .local v0, i:I
    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    .line 770
    add-int/lit8 v0, v0, 0x1

    .line 772
    :cond_2
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 773
    aget-byte v3, v1, v0

    const/16 v4, 0x2f

    if-le v3, v4, :cond_5

    aget-byte v3, v1, v0

    const/16 v4, 0x3a

    if-ge v3, v4, :cond_5

    .line 774
    if-ne v2, v5, :cond_4

    .line 775
    const/4 v2, 0x0

    .line 772
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_4
    if-eqz v2, :cond_3

    .line 777
    const/4 v2, 0x1

    goto :goto_1

    .line 780
    :cond_5
    if-ne v2, v5, :cond_6

    .line 781
    const/4 v2, 0x2

    goto :goto_1

    .line 782
    :cond_6
    if-nez v2, :cond_3

    .line 783
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1187
    const-string v0, "WhiteList"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-void
.end method

.method private saveAutoRejectNumber()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 684
    iput v8, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    .line 686
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f07009c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->displayToast(Ljava/lang/String;)V

    .line 689
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 746
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 694
    const v3, 0x7f070043

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->displayToast(Ljava/lang/String;)V

    .line 695
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 699
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->isNum(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 700
    const v3, 0x7f070045

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->displayToast(Ljava/lang/String;)V

    .line 701
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 705
    :cond_2
    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    if-eq v3, v10, :cond_4

    .line 706
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 707
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 710
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 712
    .local v2, update_id:I
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 714
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 715
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7, v9}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 718
    iput v10, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    .line 739
    .end local v2           #update_id:I
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    .line 740
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->startContactQuery()V

    .line 742
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 744
    iput v8, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    goto/16 :goto_0

    .line 720
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->addAutoRejectNumber(Ljava/lang/String;)J

    move-result-wide v0

    .line 729
    .local v0, id:J
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6, v9}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " autoreject num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V

    .line 734
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_3

    .line 735
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showAutoRejectNumber(Landroid/database/Cursor;)V
    .locals 6
    .parameter

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1143
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1146
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1147
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "checked ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V

    .line 1150
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, p0, v2, v0, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Prev cnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mPrevNumCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Cnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method private startContactQuery()V
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->stopContactQuery()V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Lcom/sec/android/app/callsetting/allcalls/WhiteList$1;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->start()V

    .line 194
    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;->interrupt()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/WhiteList$QueryThread;

    .line 201
    :cond_0
    return-void
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1112
    const-string v1, "whitelist_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v1, "witelist_checked"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1114
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->WHITELIST_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p3

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1116
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1117
    return-void
.end method

.method private updateDeleteItems()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1175
    const/4 v0, 0x0

    .line 1177
    .local v0, checked_cnt:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1178
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1179
    add-int/lit8 v0, v0, 0x1

    .line 1177
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1181
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-lez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1182
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAllCheck:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1184
    return-void

    :cond_2
    move v2, v4

    .line 1181
    goto :goto_1

    :cond_3
    move v4, v3

    .line 1182
    goto :goto_2
.end method


# virtual methods
.method public deleteDialog()V
    .locals 4

    .prologue
    .line 499
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 500
    .local v0, DeleteDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07003e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700ad

    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700ae

    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$12;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$12;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$11;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 527
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/16 v8, 0x64

    .line 1026
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1028
    const-string v7, ""

    .line 1029
    .local v7, output:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1066
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$19;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$19;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1075
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1078
    :cond_1
    :goto_1
    return-void

    .line 1031
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V

    .line 1035
    const-string v0, "NUMBER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1036
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_2

    .line 1037
    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1039
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1045
    :pswitch_1
    if-eq p2, v0, :cond_3

    .line 1046
    const-string v0, "onActivityResult: cancelled."

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1049
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1051
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1052
    :cond_4
    const-string v0, "onActivityResult: bad contact data, no results found."

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1055
    :cond_5
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1057
    if-eqz v7, :cond_0

    .line 1058
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_6

    .line 1059
    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1061
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1029
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 532
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 533
    const-string v0, "changed "

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->defaultName:Ljava/lang/String;

    .line 208
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->setContentView(I)V

    .line 209
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->AutoRejectLayoutInit()V

    .line 210
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->AutoRejectSetInitValue()V

    .line 211
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->AutoRejectEventInit()V

    .line 212
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 452
    packed-switch p1, :pswitch_data_0

    .line 484
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 454
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, EditDeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0700af

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0700b2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 457
    .local v2, items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 459
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$8;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 476
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 477
    .local v1, edad:Landroid/app/AlertDialog;
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$9;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 580
    packed-switch p1, :pswitch_data_0

    .line 595
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 582
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    if-ne v1, v0, :cond_0

    .line 584
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 585
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 586
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 587
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 591
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 592
    iput v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    goto :goto_0

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 556
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 557
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 576
    :cond_0
    :goto_0
    return v0

    .line 559
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->addWhiteListDialog()V

    goto :goto_0

    .line 562
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    if-nez v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 564
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 565
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 568
    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    .line 570
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 571
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 572
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 247
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->stopContactQuery()V

    .line 248
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 538
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 539
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    packed-switch v0, :pswitch_data_0

    .line 551
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 541
    :pswitch_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 543
    const/4 v0, 0x2

    const v1, 0x7f0700b2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 548
    :pswitch_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->AutoRejectUpdateValue()V

    .line 225
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->startContactQuery()V

    .line 227
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->notifyDataSetChanged()V

    .line 243
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 232
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 235
    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I

    goto :goto_1

    .line 237
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->updateDeleteItems()V

    goto :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;-><init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    return-void
.end method

.method public stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 806
    if-nez p1, :cond_0

    .line 807
    const/4 v4, 0x0

    .line 819
    :goto_0
    return-object v4

    .line 809
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 810
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 812
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 813
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 814
    .local v0, c:C
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->isNonSeparator(CI)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 815
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 819
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
