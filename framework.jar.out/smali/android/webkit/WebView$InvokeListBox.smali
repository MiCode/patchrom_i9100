.class Landroid/webkit/WebView$InvokeListBox;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeListBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;,
        Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;,
        Landroid/webkit/WebView$InvokeListBox$Container;
    }
.end annotation


# instance fields
.field private mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

.field private mInputFieldAction:I

.field private mMultiple:Z

.field private mSelectedArray:[I

.field private mSelection:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[III)V
    .locals 5
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selection"
    .parameter "action"

    .prologue
    .line 11275
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11276
    iput p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    .line 11277
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 11279
    iput p5, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    .line 11281
    array-length v1, p2

    .line 11282
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 11283
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 11284
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 11285
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 11286
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 11287
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 11283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11289
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[IIILandroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 11122
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[III)V

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[II)V
    .locals 5
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selected"
    .parameter "action"

    .prologue
    .line 11258
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11259
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 11260
    iput-object p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    .line 11262
    iput p5, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    .line 11264
    array-length v1, p2

    .line 11265
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 11266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 11267
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 11268
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 11269
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 11270
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 11266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11272
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[IILandroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 11122
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[II)V

    return-void
.end method

.method static synthetic access$11900(Landroid/webkit/WebView$InvokeListBox;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11122
    iget-boolean v0, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    return v0
.end method

.method static synthetic access$12000(Landroid/webkit/WebView$InvokeListBox;)[Landroid/webkit/WebView$InvokeListBox$Container;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11122
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    return-object v0
.end method

.method static synthetic access$12800(Landroid/webkit/WebView$InvokeListBox;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11122
    iget v0, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 11336
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12500(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900df

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 11338
    .local v4, listView:Landroid/widget/ListView;
    new-instance v5, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

    invoke-direct {v5, p0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    .line 11341
    .local v5, adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;
    const/4 v9, 0x1

    .line 11342
    .local v9, rebuildDialog:Z
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 11343
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebSelectDialog;

    iget-object v11, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/webkit/WebView;->access$12700(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/webkit/WebSelectDialog;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$12602(Landroid/webkit/WebView;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;

    .line 11344
    const/4 v9, 0x0

    .line 11346
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v6

    .line 11347
    .local v6, dialog:Landroid/webkit/WebSelectDialog;
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSelectDialog;->setListView(Landroid/widget/ListView;)V

    .line 11349
    iget v2, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_2

    .line 11350
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v10, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 11351
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$1;

    invoke-direct {v3, p0, v5, v4}, Landroid/webkit/WebView$InvokeListBox$1;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v2, v10, v3}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 11376
    :goto_0
    iget v2, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_3

    .line 11377
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v12, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 11378
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$2;

    invoke-direct {v3, p0, v5, v4}, Landroid/webkit/WebView$InvokeListBox$2;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v2, v12, v3}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 11403
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v13, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 11404
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$3;

    invoke-direct {v3, p0, v5, v4}, Landroid/webkit/WebView$InvokeListBox$3;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v2, v13, v3}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 11422
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11423
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 11426
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 11433
    iget-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-nez v2, :cond_1

    move v1, v10

    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 11434
    iget-boolean v1, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-eqz v1, :cond_4

    .line 11435
    invoke-virtual {v4, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 11436
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    array-length v8, v1

    .line 11437
    .local v8, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v8, :cond_5

    .line 11438
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    aget v1, v1, v7

    invoke-virtual {v4, v1, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 11437
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 11373
    .end local v7           #i:I
    .end local v8           #length:I
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v10, v1}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_0

    .line 11400
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v2}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v2

    invoke-virtual {v2, v12, v1}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_1

    .line 11441
    :cond_4
    new-instance v1, Landroid/webkit/WebView$InvokeListBox$4;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$InvokeListBox$4;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11452
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 11453
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 11454
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 11455
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 11456
    new-instance v0, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;

    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v5, v1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getItemId(I)J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;-><init>(Landroid/webkit/WebView$InvokeListBox;JLandroid/widget/ListView;Landroid/widget/Adapter;)V

    .line 11458
    .local v0, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v5, v0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11461
    .end local v0           #observer:Landroid/database/DataSetObserver;
    :cond_5
    new-instance v1, Landroid/webkit/WebView$InvokeListBox$5;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$InvokeListBox$5;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v6, v1}, Landroid/webkit/WebSelectDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 11477
    if-ne v9, v10, :cond_6

    .line 11478
    invoke-virtual {v6}, Landroid/webkit/WebSelectDialog;->rebuildView()V

    .line 11479
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11483
    :cond_6
    invoke-virtual {v6}, Landroid/webkit/WebSelectDialog;->show()V

    .line 11485
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z
    invoke-static {v1, v10}, Landroid/webkit/WebView;->access$9102(Landroid/webkit/WebView;Z)Z

    .line 11486
    return-void
.end method
