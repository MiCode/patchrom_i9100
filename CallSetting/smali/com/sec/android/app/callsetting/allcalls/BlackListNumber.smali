.class public Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;
.super Landroid/app/Activity;
.source "BlackListNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;,
        Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field static mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field static mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;


# instance fields
.field final MATCH_ENDS_WITH:I

.field final MATCH_EQUAL:I

.field final MATCH_INCLUDE:I

.field final MATCH_STARTS_WITH:I

.field private autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;

.field private autoRejectNumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field createEdit:Landroid/widget/EditText;

.field createItem:Landroid/widget/LinearLayout;

.field editText:Landroid/widget/EditText;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private header:Landroid/view/View;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private list:Landroid/widget/ListView;

.field private mAutoRejectNumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchCriteria:I

.field private mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevNumCnt:I

.field private mSelectedItem:I

.field private mState:I

.field mToast:Landroid/widget/Toast;

.field private match_MODE:I

.field private previous_NUM:Ljava/lang/String;

.field private previous_match_MODE:I

.field searchButton:Landroid/widget/ImageButton;

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/widget/CheckBox;

.field private select_NUM:Ljava/lang/String;

.field private update_ID:I

.field private update_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "reject_number"

    aput-object v1, v0, v4

    const-string v1, "reject_checked"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "reject_match"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->FROM:[Ljava/lang/String;

    .line 100
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->NUM_PROJECTION:[Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 106
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectNumList:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    .line 92
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->MATCH_EQUAL:I

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->MATCH_STARTS_WITH:I

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->MATCH_ENDS_WITH:I

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->MATCH_INCLUDE:I

    .line 108
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I

    .line 136
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mPrevNumCnt:I

    .line 508
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$7;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->handler:Landroid/os/Handler;

    .line 855
    return-void
.end method

.method private AutoRejectLayoutInit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 257
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->list:Landroid/widget/ListView;

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030006

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->list:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->header:Landroid/view/View;

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->header:Landroid/view/View;

    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->header:Landroid/view/View;

    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->searchButton:Landroid/widget/ImageButton;

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->searchButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    sput-object v1, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 275
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    sput-object v1, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->header:Landroid/view/View;

    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->selectAll:Landroid/widget/LinearLayout;

    .line 277
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->header:Landroid/view/View;

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->selectAllCheck:Landroid/widget/CheckBox;

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->header:Landroid/view/View;

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createItem:Landroid/widget/LinearLayout;

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->header:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v5, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 289
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->factory:Landroid/view/LayoutInflater;

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->factory:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, textEntryView:Landroid/view/View;
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 293
    return-void
.end method

.method private AutoRejectSetInitValue()V
    .locals 5

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unknown_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 298
    .local v1, unknownMode:I
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    .line 299
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->showAutoRejectNumber(Landroid/database/Cursor;)V

    .line 300
    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_0
    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;

    .line 303
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030014

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    return-void
.end method

.method private AutoRejectUpdateValue()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    .line 387
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I

    if-eq v0, v11, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const/4 v9, 0x0

    .line 390
    .local v9, idx:I
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mPrevNumCnt:I

    .line 391
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v6

    .line 392
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 397
    :cond_3
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mPrevNumCnt:I

    if-ne v9, v0, :cond_4

    .line 398
    const-string v0, "AutoReject"

    const-string v1, "No change AutoRejectList Item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-eqz v6, :cond_0

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 403
    :cond_4
    const/4 v9, 0x0

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 406
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 408
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 409
    .local v7, id:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, num:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 411
    .local v4, checked:I
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 412
    .local v5, matched:I
    const-string v0, "AutoReject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRejectNum idx"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Number "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ID = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "checked ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 415
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 419
    .end local v2           #num:Ljava/lang/String;
    .end local v4           #checked:I
    .end local v5           #matched:I
    .end local v7           #id:J
    :cond_6
    if-eqz v6, :cond_7

    .line 420
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 421
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->alertdialogSearch()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->alertdialogAutoRejectNumber()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectNumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->deleteAutoRejectNumber(I)V

    return-void
.end method

.method private addAutoRejectNumber(Ljava/lang/String;I)J
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1038
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1039
    const-string v1, "reject_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v1, "reject_checked"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1041
    const-string v1, "reject_match"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1043
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1046
    return-wide v0
.end method

.method private alertdialogAutoRejectNumber()V
    .locals 5

    .prologue
    .line 629
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 631
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f07001f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 632
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 633
    const v2, 0x7f0700ae

    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$9;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 639
    const v2, 0x7f05000c

    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$10;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$10;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 659
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 661
    .local v1, createDialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$11;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 668
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 670
    return-void
.end method

.method private alertdialogSearch()V
    .locals 3

    .prologue
    .line 598
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 600
    .local v0, SearchListDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 601
    const v1, 0x7f050004

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$8;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 624
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 625
    return-void
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 751
    .line 755
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v2

    .line 757
    if-nez v2, :cond_0

    .line 758
    const-string v1, "BlackListNumber"

    const-string v2, "checkAlreadyInUse : cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :goto_0
    return v0

    .line 762
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 765
    :cond_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 766
    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 767
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->previous_NUM:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->previous_match_MODE:I

    if-ne v5, v4, :cond_4

    .line 812
    :cond_2
    :goto_1
    if-eq v0, v1, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 814
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 772
    :cond_4
    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I

    if-ne v5, v4, :cond_2

    .line 774
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 779
    :pswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 780
    const-string v0, "BlackListNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAlreadyInUse : MATCH_EQUAL, rejectNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 783
    goto :goto_1

    .line 787
    :pswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 788
    const-string v0, "BlackListNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAlreadyInUse : MATCH_STARTS_WITH, rejectNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 791
    goto :goto_1

    .line 795
    :pswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 796
    const-string v0, "BlackListNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAlreadyInUse : MATCH_ENDS_WITH, rejectNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 799
    goto :goto_1

    .line 803
    :pswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 804
    const-string v0, "BlackListNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAlreadyInUse : MATCH_INCLUDE, rejectNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 807
    goto/16 :goto_1

    .line 774
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private deleteAutoRejectNumber(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 1059
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1061
    .local v0, autorejectnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1062
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1153
    :cond_0
    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1079
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private isAvaliableNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 829
    if-nez p1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v2

    .line 833
    :cond_1
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 834
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 835
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 839
    .end local v0           #c:C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showAutoRejectNumber(Landroid/database/Cursor;)V
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f070061

    const/4 v5, 0x0

    .line 1089
    .line 1092
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1096
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unknown_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1101
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1109
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_0
    const-string v0, "AutoReject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Prev cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mPrevNumCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return-void
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1067
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1068
    const-string v1, "reject_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string v1, "reject_checked"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    const-string v1, "reject_match"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1071
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p4

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1073
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1074
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/16 v7, 0x64

    .line 975
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 977
    const-string v6, ""

    .line 978
    packed-switch p1, :pswitch_data_0

    .line 1020
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$12;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1029
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1032
    :cond_1
    return-void

    .line 980
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 982
    const-string v0, "TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v0, "NUMBER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_2

    .line 988
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 990
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object v6, v0

    goto :goto_0

    .line 996
    :pswitch_1
    if-ne p2, v0, :cond_7

    .line 997
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 999
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1000
    :cond_3
    const-string v0, "AutoReject"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    :cond_4
    :goto_1
    move-object v6, v0

    .line 1011
    goto :goto_0

    .line 1002
    :cond_5
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    if-eqz v0, :cond_4

    .line 1005
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_6

    .line 1006
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1008
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1012
    :cond_7
    const-string v0, "AutoReject"

    const-string v1, "onActivityResult: cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 520
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f030007

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mToast:Landroid/widget/Toast;

    .line 151
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->AutoRejectLayoutInit()V

    .line 152
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->AutoRejectSetInitValue()V

    .line 154
    if-eqz p1, :cond_3

    .line 155
    const-string v3, "text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, text:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 161
    :cond_1
    const-string v3, "matchCriteria"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I

    .line 162
    const-string v3, "ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->update_ID:I

    .line 163
    const-string v3, "MODE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->update_MODE:Z

    .line 181
    .end local v2           #text:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "UPDATE_MODE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->update_MODE:Z

    .line 166
    iget-boolean v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->update_MODE:Z

    if-ne v3, v6, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "UPDATE_ID"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->update_ID:I

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "MATCH_MODE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->match_MODE:I

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "SELECT_NUMBER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->select_NUM:Ljava/lang/String;

    .line 170
    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->match_MODE:I

    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I

    .line 171
    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->match_MODE:I

    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->previous_match_MODE:I

    .line 172
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->select_NUM:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->previous_NUM:Ljava/lang/String;

    .line 173
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->select_NUM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 176
    .local v1, len:I
    if-lez v1, :cond_2

    .line 177
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 466
    packed-switch p1, :pswitch_data_0

    .line 505
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 468
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 469
    .local v0, EditDeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0700af

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0700b2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 471
    .local v2, items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 473
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 497
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 498
    .local v1, edad:Landroid/app/AlertDialog;
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$6;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 231
    const-string v0, "BlacListNumber"

    const-string v1, "OnDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v3, 0x7f070061

    const/16 v2, 0x8

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 553
    sparse-switch p1, :sswitch_data_0

    .line 594
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v10

    :goto_1
    return v10

    .line 555
    :sswitch_0
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 559
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unknown_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 561
    .local v4, unknownMode:I
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 562
    iget-object v11, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v11, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_1

    const/4 v0, 0x2

    :goto_2
    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I

    goto :goto_1

    :cond_1
    move v0, v10

    goto :goto_2

    .line 573
    .end local v4           #unknownMode:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 575
    .local v7, currentView:Landroid/widget/ListView;
    if-eqz v7, :cond_0

    .line 576
    invoke-virtual {v7}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 577
    .local v6, childView:Landroid/widget/LinearLayout;
    if-eqz v6, :cond_0

    .line 578
    const v0, 0x7f08002a

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 579
    .local v9, linearLayout:Landroid/widget/LinearLayout;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    .line 582
    :cond_2
    const v0, 0x7f08001c

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 583
    .local v8, imageButton:Landroid/widget/ImageButton;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v8}, Landroid/widget/ImageButton;->performClick()Z

    goto/16 :goto_0

    .line 553
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 843
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 844
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 845
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 846
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 848
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->startActivity(Landroid/content/Intent;)V

    .line 849
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->finish()V

    .line 850
    const/4 v0, 0x1

    .line 852
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 247
    const-string v0, "BlacListNumber"

    const-string v1, "on pause got called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 194
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->AutoRejectUpdateValue()V

    .line 195
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I

    .line 226
    :goto_1
    return-void

    :cond_0
    move v0, v6

    .line 196
    goto :goto_0

    .line 199
    :cond_1
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :cond_2
    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unknown_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 210
    .local v4, unknownMode:I
    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;

    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v7, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 213
    iput v6, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I

    goto :goto_2

    .line 217
    .end local v4           #unknownMode:I
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 238
    const-string v0, "text"

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    const-string v0, "matchCriteria"

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v0, "ID"

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->update_ID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string v0, "MODE"

    iget-boolean v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->update_MODE:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 253
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 6
    .parameter "target"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, match_criteria:Ljava/lang/String;
    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I

    packed-switch v2, :pswitch_data_0

    .line 343
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f07009c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->displayToast(Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 378
    .end local v1           #match_criteria:Ljava/lang/String;
    :goto_1
    return-void

    .line 328
    .restart local v1       #match_criteria:Ljava/lang/String;
    :pswitch_0
    const v2, 0x7f070020

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    goto :goto_0

    .line 332
    :pswitch_1
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    goto :goto_0

    .line 336
    :pswitch_2
    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    goto :goto_0

    .line 340
    :pswitch_3
    const v2, 0x7f070023

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 352
    .end local v1           #match_criteria:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 353
    const v2, 0x7f07009d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->displayToast(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 361
    const v2, 0x7f07009e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->displayToast(Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 368
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->update_MODE:Z

    if-ne v2, v3, :cond_3

    .line 369
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->update_ID:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 375
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 376
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->setResult(ILandroid/content/Intent;)V

    .line 377
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->finish()V

    goto/16 :goto_1

    .line 372
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->addAutoRejectNumber(Ljava/lang/String;I)J

    goto :goto_2

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 382
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->setResult(ILandroid/content/Intent;)V

    .line 383
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->finish()V

    .line 384
    return-void
.end method
