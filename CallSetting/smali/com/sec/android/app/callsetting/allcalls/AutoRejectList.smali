.class public Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;
.super Landroid/app/Activity;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;,
        Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field static mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field static mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;


# instance fields
.field private autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

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

.field private checkListInDelete:[I

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
            "Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

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

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "reject_number"

    aput-object v1, v0, v3

    const-string v1, "reject_checked"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->FROM:[Ljava/lang/String;

    .line 110
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->NUM_PROJECTION:[Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 115
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    .line 118
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    .line 121
    const/16 v0, 0x1e

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->checkListInDelete:[I

    .line 139
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mPrevNumCnt:I

    .line 475
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$7;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->handler:Landroid/os/Handler;

    .line 842
    return-void
.end method

.method private AutoRejectEventInit()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 408
    return-void
.end method

.method private AutoRejectLayoutInit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 204
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->header:Landroid/view/View;

    .line 206
    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    sput-object v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 207
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    sput-object v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->header:Landroid/view/View;

    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->header:Landroid/view/View;

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAllCheck:Landroid/widget/CheckBox;

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->header:Landroid/view/View;

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->createItem:Landroid/widget/LinearLayout;

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->createItem:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->header:Landroid/view/View;

    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 228
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->factory:Landroid/view/LayoutInflater;

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->factory:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, textEntryView:Landroid/view/View;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    .line 231
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 232
    return-void
.end method

.method private AutoRejectSetInitValue()V
    .locals 5

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unknown_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 236
    .local v1, unknownMode:I
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    .line 237
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->showAutoRejectNumber(Landroid/database/Cursor;)V

    .line 238
    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_0
    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    .line 241
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030014

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    return-void
.end method

.method private AutoRejectUpdateValue()V
    .locals 9

    .prologue
    .line 331
    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const/4 v4, 0x0

    .line 334
    .local v4, idx:I
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mPrevNumCnt:I

    .line 336
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v1

    .line 338
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 340
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 341
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 343
    :cond_3
    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mPrevNumCnt:I

    if-ne v4, v6, :cond_4

    .line 344
    const-string v6, "AutoReject"

    const-string v7, "No change AutoRejectList Item"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz v1, :cond_0

    .line 346
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 349
    :cond_4
    const/4 v4, 0x0

    .line 350
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 351
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 352
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 354
    :cond_5
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 355
    .local v2, id:J
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, num:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 357
    .local v0, checked:I
    const-string v6, "AutoReject"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AutoRejectNum idx"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "checked ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 359
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v5, v8, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 362
    .end local v0           #checked:I
    .end local v2           #id:J
    .end local v5           #num:Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_7

    .line 363
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1100()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->alertdialogSearch()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->saveAutoRejectNumber()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->alertdialogAutoRejectNumber()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->deleteAutoRejectNumber(I)V

    return-void
.end method

.method private addAutoRejectNumber(Ljava/lang/String;)J
    .locals 7
    .parameter "string"

    .prologue
    const/4 v6, 0x1

    .line 1099
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1100
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "reject_number"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v4, "reject_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1103
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1104
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1105
    .local v0, id:J
    return-wide v0
.end method

.method private alertdialogAutoRejectNumber()V
    .locals 8

    .prologue
    .line 637
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->factory:Landroid/view/LayoutInflater;

    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 638
    .local v3, textEntryView:Landroid/view/View;
    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    .line 640
    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 641
    .local v2, searchButton:Landroid/widget/ImageButton;
    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    if-lez v4, :cond_0

    .line 644
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 649
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 650
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0700e2

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 653
    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$9;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$9;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    const v4, 0x7f0700b3

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$10;

    invoke-direct {v5, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$10;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 665
    const v4, 0x7f0700ae

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$11;

    invoke-direct {v5, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$11;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 672
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 674
    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$12;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$12;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 680
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 682
    .local v1, createDialog:Landroid/app/AlertDialog;
    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$13;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$13;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 688
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 690
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 691
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$14;

    invoke-direct {v5, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$14;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 697
    return-void
.end method

.method private alertdialogSearch()V
    .locals 3

    .prologue
    .line 601
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 602
    .local v0, SearchListDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 603
    const v1, 0x7f050004

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$8;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 633
    return-void
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 2
    .parameter "string"

    .prologue
    .line 772
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    const/4 v1, 0x1

    .line 779
    :goto_1
    return v1

    .line 772
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private deleteAutoRejectNumber(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 1117
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1118
    .local v0, autorejectnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1119
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1203
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1204
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1205
    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1133
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->FROM:[Ljava/lang/String;

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

    .line 811
    if-nez p1, :cond_3

    .line 812
    if-lt p0, v2, :cond_0

    if-le p0, v3, :cond_1

    :cond_0
    const/16 v2, 0x2b

    if-ne p0, v2, :cond_2

    .line 815
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 812
    goto :goto_0

    .line 815
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

    .line 784
    if-nez p0, :cond_1

    .line 806
    :cond_0
    return v2

    .line 785
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 786
    .local v1, ori:[B
    if-eqz v1, :cond_0

    .line 788
    const/4 v2, -0x1

    .line 789
    .local v2, result:I
    const/4 v0, 0x0

    .line 791
    .local v0, i:I
    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    .line 792
    add-int/lit8 v0, v0, 0x1

    .line 794
    :cond_2
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 795
    aget-byte v3, v1, v0

    const/16 v4, 0x2f

    if-le v3, v4, :cond_5

    aget-byte v3, v1, v0

    const/16 v4, 0x3a

    if-ge v3, v4, :cond_5

    .line 796
    if-ne v2, v5, :cond_4

    .line 797
    const/4 v2, 0x0

    .line 794
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_4
    if-eqz v2, :cond_3

    .line 799
    const/4 v2, 0x1

    goto :goto_1

    .line 802
    :cond_5
    if-ne v2, v5, :cond_6

    const/4 v2, 0x2

    goto :goto_1

    .line 803
    :cond_6
    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private saveAutoRejectNumber()V
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 701
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    .line 705
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

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

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->displayToast(Ljava/lang/String;)V

    .line 708
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 768
    :goto_1
    return-void

    :cond_0
    move v3, v5

    .line 701
    goto :goto_0

    .line 712
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 714
    const v3, 0x7f07009d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->displayToast(Ljava/lang/String;)V

    .line 715
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 719
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->isNum(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 721
    const v3, 0x7f07009e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->displayToast(Ljava/lang/String;)V

    .line 722
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 726
    :cond_3
    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    if-lez v3, :cond_4

    .line 728
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 729
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 736
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 737
    .local v2, update_id:I
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v3, v6, v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 739
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 740
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    new-instance v7, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9, v5}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 743
    iput v10, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    .line 760
    .end local v2           #update_id:I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    .line 762
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 766
    iput v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    goto/16 :goto_1

    .line 748
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 754
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->addAutoRejectNumber(Ljava/lang/String;)J

    move-result-wide v0

    .line 755
    .local v0, id:J
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8, v5}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    const-string v3, "TEST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " autoreject num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private showAutoRejectNumber(Landroid/database/Cursor;)V
    .locals 10
    .parameter

    .prologue
    const v5, 0x7f070061

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1143
    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1150
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1152
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unknown_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1154
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1159
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 1163
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    :goto_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1167
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1168
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1170
    const-string v1, "TEST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AutoRejectNum idx"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "checked ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v8, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1177
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v8, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, p0, v6, v4, v7}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1181
    :cond_0
    const-string v0, "AutoReject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Prev cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mPrevNumCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_1

    :cond_2
    move v0, v3

    goto/16 :goto_0
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 6
    .parameter "string"
    .parameter "checked"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 1123
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1124
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "reject_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v2, "reject_checked"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1126
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1127
    .local v0, autorejectnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1128
    return-void
.end method

.method private updateDeleteItems()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1208
    const/4 v0, 0x0

    .line 1210
    .local v0, checked_cnt:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1211
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1212
    add-int/lit8 v0, v0, 0x1

    .line 1210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1214
    :cond_1
    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-lez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1215
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAllCheck:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1216
    return-void

    :cond_2
    move v2, v4

    .line 1214
    goto :goto_1

    :cond_3
    move v4, v3

    .line 1215
    goto :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 1047
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1049
    const-string v7, ""

    .line 1050
    .local v7, output:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1080
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$15;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1089
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1092
    :cond_1
    :goto_1
    return-void

    .line 1053
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 1055
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

    .line 1056
    const-string v0, "NUMBER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1064
    :pswitch_1
    if-eq p2, v0, :cond_2

    .line 1065
    const-string v0, "AutoReject"

    const-string v1, "onActivityResult: cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1068
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1070
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1071
    :cond_3
    const-string v0, "AutoReject"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1074
    :cond_4
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1050
    nop

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
    .line 487
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 488
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->setContentView(I)V

    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->AutoRejectLayoutInit()V

    .line 148
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->AutoRejectSetInitValue()V

    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->AutoRejectEventInit()V

    .line 150
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 413
    packed-switch p1, :pswitch_data_0

    .line 471
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 417
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    .local v0, EditDeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0700af

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0700b2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 419
    .local v2, items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 421
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 455
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 457
    .local v1, edad:Landroid/app/AlertDialog;
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$6;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v5, 0x7f070061

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 577
    packed-switch p1, :pswitch_data_0

    .line 595
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 581
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 582
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 583
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 584
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "unknown_mode"

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 585
    .local v0, unknownMode:I
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 586
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 589
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 591
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    const/4 v1, 0x2

    :goto_1
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 528
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 532
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 572
    :cond_0
    :goto_0
    return v0

    .line 536
    :pswitch_0
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I

    .line 537
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    .line 539
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->alertdialogAutoRejectNumber()V

    goto :goto_0

    .line 546
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    if-ne v2, v4, :cond_0

    .line 547
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->createItem:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 553
    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    .line 554
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 559
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 562
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 563
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 564
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 565
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f0700b0

    const v4, 0x7f020015

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 492
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 494
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 523
    :goto_0
    return v3

    .line 497
    :pswitch_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 498
    invoke-interface {p1, v2, v3, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 503
    :pswitch_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    .line 505
    invoke-interface {p1, v2, v3, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 509
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0700b2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 514
    :pswitch_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 519
    :pswitch_3
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->AutoRejectUpdateValue()V

    .line 163
    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    if-nez v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    const/4 v1, 0x2

    :cond_0
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    .line 200
    :goto_1
    return-void

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_2
    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 199
    :goto_2
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 177
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 180
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unknown_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 181
    .local v0, unknownMode:I
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    const v4, 0x7f070061

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 183
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    goto :goto_2

    .line 185
    .end local v0           #unknownMode:I
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->updateDeleteItems()V

    goto :goto_2

    .line 191
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 11
    .parameter "target"

    .prologue
    const v9, 0x7f070061

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 258
    const/4 v3, 0x0

    .line 259
    .local v3, isDeleted:Z
    const/4 v0, 0x0

    .line 261
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 263
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 274
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v5, v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 275
    .local v1, del_id:I
    invoke-direct {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->deleteAutoRejectNumber(I)V

    .line 276
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 278
    const/4 v3, 0x1

    .line 261
    .end local v1           #del_id:I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 282
    :cond_1
    if-nez v3, :cond_2

    .line 285
    const-string v5, "AutoRejectList"

    const-string v6, "softkeyLeftRun - no item"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_1
    return-void

    .line 289
    :cond_2
    const v5, 0x7f07009b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->displayToast(Ljava/lang/String;)V

    .line 291
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 293
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "unknown_mode"

    invoke-static {v5, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 296
    .local v4, unknownMode:I
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {p0, v9}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v10, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 302
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    invoke-virtual {p0, v9}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, p0, v8, v9, v4}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v5, v10, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 305
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_3

    const/4 v5, 0x2

    :goto_2
    iput v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 7
    .parameter "target"

    .prologue
    const v5, 0x7f070061

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unknown_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 313
    .local v0, unknownMode:I
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 316
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    const/4 v1, 0x2

    :cond_0
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I

    .line 328
    return-void
.end method

.method public stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 826
    if-nez p1, :cond_0

    .line 827
    const/4 v4, 0x0

    .line 839
    :goto_0
    return-object v4

    .line 829
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 830
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 832
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 833
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 834
    .local v0, c:C
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->isNonSeparator(CI)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 835
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 839
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
