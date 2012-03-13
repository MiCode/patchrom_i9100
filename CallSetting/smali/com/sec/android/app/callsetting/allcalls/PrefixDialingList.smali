.class public Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;
.super Landroid/app/Activity;
.source "PrefixDialingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;,
        Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;

.field static mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field static mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;


# instance fields
.field private checkListInDelete:[I

.field createItem:Landroid/widget/LinearLayout;

.field editText:Landroid/widget/EditText;

.field emptyText:Landroid/widget/FrameLayout;

.field empty_create:Landroid/widget/LinearLayout;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private header:Landroid/view/View;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field listView:Landroid/widget/ListView;

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

.field private mPrefixNumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:I

.field private mState:I

.field private prefixNumAdapter:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

.field private prefixNumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "prefix_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "prefix_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->checkListInDelete:[I

    .line 427
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$8;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->handler:Landroid/os/Handler;

    .line 694
    return-void
.end method

.method private PrefixDialingEventInit()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->createItem:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$4;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 323
    return-void
.end method

.method private PrefixDialingLayoutInit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f08001a

    const/4 v4, 0x0

    .line 164
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    .line 166
    const v1, 0x7f08002d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->emptyText:Landroid/widget/FrameLayout;

    .line 167
    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->empty_create:Landroid/widget/LinearLayout;

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->empty_create:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->header:Landroid/view/View;

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->header:Landroid/view/View;

    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAll:Landroid/widget/LinearLayout;

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->header:Landroid/view/View;

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAllCheck:Landroid/widget/CheckBox;

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->header:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->createItem:Landroid/widget/LinearLayout;

    .line 187
    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    sput-object v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 188
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    sput-object v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->header:Landroid/view/View;

    invoke-virtual {v1, v2, v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 191
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->factory:Landroid/view/LayoutInflater;

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->factory:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, textEntryView:Landroid/view/View;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    .line 195
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 196
    return-void
.end method

.method private PrefixDialingSetInitValue()V
    .locals 4

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getPrefixNumber()Landroid/database/Cursor;

    move-result-object v0

    .line 328
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->showPrefixNumber(Landroid/database/Cursor;)V

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->emptyText:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 337
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    .line 341
    :cond_1
    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumAdapter:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    .line 342
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f030014

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumAdapter:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->updatePrefixNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->alertdialogPrefixNumber()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->deletePrefixNumber(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumAdapter:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->savePrefixNumber()V

    return-void
.end method

.method private addPrefixNumber(Ljava/lang/String;)J
    .locals 6
    .parameter "string"

    .prologue
    .line 855
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 856
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "prefix_number"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v4, "prefix_checked"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->PREFIX_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 860
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 861
    .local v0, id:J
    return-wide v0
.end method

.method private alertdialogPrefixNumber()V
    .locals 7

    .prologue
    .line 552
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->factory:Landroid/view/LayoutInflater;

    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 553
    .local v2, textEntryView:Landroid/view/View;
    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    .line 555
    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    if-lez v3, :cond_0

    .line 558
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 562
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 563
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0700b4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 564
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 566
    const v3, 0x7f0700b3

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$9;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$9;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 572
    const v3, 0x7f0700ae

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$10;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$10;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 578
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 579
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$11;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$11;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 586
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 588
    .local v1, createDialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$12;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$12;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 594
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 596
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 597
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$13;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$13;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 603
    return-void
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 2
    .parameter "string"

    .prologue
    .line 684
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    const/4 v1, 0x1

    .line 691
    :goto_1
    return v1

    .line 684
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private deletePrefixNumber(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 873
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->PREFIX_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 874
    .local v0, prefixnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 875
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 923
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 924
    return-void
.end method

.method private getPrefixNumber()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 889
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->PREFIX_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private savePrefixNumber()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v7, 0x2

    const/4 v10, 0x0

    .line 607
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    .line 610
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 612
    .local v4, prefixNumber:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 614
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f07009c

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->displayToast(Ljava/lang/String;)V

    .line 615
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 679
    :goto_1
    return-void

    .end local v4           #prefixNumber:Ljava/lang/String;
    :cond_0
    move v6, v7

    .line 607
    goto :goto_0

    .line 619
    .restart local v4       #prefixNumber:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 621
    const v6, 0x7f07009f

    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->displayToast(Ljava/lang/String;)V

    .line 622
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 626
    :cond_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, output:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 630
    const v6, 0x7f0700a0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->displayToast(Ljava/lang/String;)V

    .line 631
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 635
    :cond_3
    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    if-lez v6, :cond_5

    .line 637
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 638
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 643
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget v0, v6, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->checked:I

    .line 644
    .local v0, checked_value:I
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget v5, v6, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->id:I

    .line 646
    .local v5, update_id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v4, v6, v5}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->updatePrefixNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 648
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 649
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    add-int/lit8 v8, v8, -0x1

    new-instance v9, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    invoke-direct {v9, p0, v4, v5, v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;Ljava/lang/String;II)V

    invoke-virtual {v6, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 652
    iput v10, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    .line 667
    .end local v0           #checked_value:I
    .end local v5           #update_id:I
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumAdapter:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->notifyDataSetInvalidated()V

    .line 669
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-eq v6, v11, :cond_4

    .line 672
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 674
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->updateCreateItem()V

    .line 675
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 677
    iput v7, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    goto/16 :goto_1

    .line 656
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v6, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 657
    invoke-direct {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->addPrefixNumber(Ljava/lang/String;)J

    move-result-wide v1

    .line 662
    .local v1, id:J
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    new-instance v8, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    long-to-int v9, v1

    invoke-direct {v8, p0, v4, v9, v10}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;Ljava/lang/String;II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    const-string v6, "TEST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prefix num = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private showPrefixNumber(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    .line 897
    const/4 v3, 0x0

    .line 899
    .local v3, idx:I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 902
    :goto_0
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 903
    .local v1, id:J
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 904
    .local v5, num:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 906
    .local v0, checked:I
    const-string v6, "TEST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PrefixNum idx"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "checked ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-virtual {v6, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 913
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    long-to-int v8, v1

    invoke-direct {v7, p0, v5, v8, v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;Ljava/lang/String;II)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    .line 917
    .end local v0           #checked:I
    .end local v1           #id:J
    .end local v4           #idx:I
    .end local v5           #num:Ljava/lang/String;
    .restart local v3       #idx:I
    :cond_0
    return-void

    .end local v3           #idx:I
    .restart local v0       #checked:I
    .restart local v1       #id:J
    .restart local v4       #idx:I
    .restart local v5       #num:Ljava/lang/String;
    :cond_1
    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto :goto_0
.end method

.method private updateCreateItem()V
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->createItem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->createItem:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePrefixNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 6
    .parameter "string"
    .parameter "checked"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 879
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 880
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "prefix_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v2, "prefix_checked"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 882
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->PREFIX_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 883
    .local v0, prefixnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 884
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 439
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 440
    const-string v0, "Configuration"

    const-string v1, "changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->setContentView(I)V

    .line 130
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->PrefixDialingLayoutInit()V

    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->PrefixDialingSetInitValue()V

    .line 132
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->PrefixDialingEventInit()V

    .line 134
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 365
    packed-switch p1, :pswitch_data_0

    .line 423
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 369
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, EditDeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0700af

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0700b2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 371
    .local v2, items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 372
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 409
    .local v1, edad:Landroid/app/AlertDialog;
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$7;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 531
    packed-switch p1, :pswitch_data_0

    .line 547
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 535
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 541
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->updateCreateItem()V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumAdapter:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 531
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

    .line 487
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 492
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 525
    :cond_0
    :goto_0
    return v0

    .line 496
    :pswitch_0
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I

    .line 498
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    .line 499
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->alertdialogPrefixNumber()V

    goto :goto_0

    .line 505
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    if-ne v2, v4, :cond_0

    .line 507
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->createItem:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 511
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 514
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 517
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 519
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 448
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 450
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 480
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 453
    :pswitch_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 459
    :pswitch_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 467
    const/4 v0, 0x2

    const v1, 0x7f0700b2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 472
    :pswitch_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 476
    :pswitch_3
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 450
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
    .locals 4

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->updateCreateItem()V

    .line 142
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    :pswitch_0
    return-void

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 10
    .parameter "target"

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, checkedNum:I
    const/4 v4, 0x0

    .line 203
    .local v4, isDeleted:Z
    const/4 v0, 0x0

    .line 204
    .local v0, checkBox:Landroid/widget/CheckBox;
    const/4 v5, 0x0

    .line 206
    .local v5, radio:Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 208
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget v2, v6, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->id:I

    .line 220
    .local v2, del_id:I
    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->deletePrefixNumber(I)V

    .line 221
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 223
    const/4 v4, 0x1

    .line 206
    .end local v2           #del_id:I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 227
    :cond_1
    const v6, 0x7f07009b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->displayToast(Ljava/lang/String;)V

    .line 229
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->updateCreateItem()V

    .line 231
    sget-object v6, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v6, v9}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 233
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumAdapter:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_1
    iput v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    .line 238
    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    if-ne v6, v7, :cond_2

    .line 239
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->emptyText:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 241
    :cond_2
    return-void

    .line 236
    :cond_3
    const/4 v6, 0x2

    goto :goto_1
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    const/16 v1, 0x8

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->updateCreateItem()V

    .line 247
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumAdapter:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I

    .line 253
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
